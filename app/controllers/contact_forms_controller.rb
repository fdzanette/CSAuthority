class ContactFormsController < ApplicationController
  def new
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(params[:contact_form])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = "Recebemos sua mensagem. Logo entraremos em contato!"
      redirect_to root_path
    else
      flash[:alert] = "Ocorreu um erro. Favor preencher todos os campos."
      render :new
    end
  end
end
