class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
      @email_to_be_sent = ContactForm.new(:nome => message_params[:name],
                                         :e_mail => message_params[:email],
                                         :message => message_params[:content])
      @email_to_be_sent.request = request

    if @message.save
      @email_to_be_sent.deliver
      flash[:notice] = "Recebemos sua mensagem. Logo entraremos em contato!"
      redirect_to root_path
    else
      flash[:alert] = "Ocorreu algum erro. Favor tentar novamente."
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content, :year, :phone, :level, :sport)
  end
  def email_params
    params.require(:contact_form).permit(:nome, :e_mail, :message)
  end
end
