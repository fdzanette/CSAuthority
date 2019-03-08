class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
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
end
