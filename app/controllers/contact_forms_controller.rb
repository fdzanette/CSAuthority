class ContactFormsController < ApplicationController
  def new
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash[:notice] = "Recebemos sua mensagem. Logo entraremos em contato!"
      redirect_to root_path
    else
      flash[:alert] = "Ocorreu um erro. Favor preencher todos os campos."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact_form).permit(:name,
                                         :email,
                                         :message, 
                                         :nickname, 
                                         :year, 
                                         :level, 
                                         :sport, 
                                         :mobile)
  end

end
