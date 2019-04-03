class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, :validate => true
  attribute :nickname,  :captcha  => true
  attribute :year,      :validate => true
  attribute :level,      :validate => true
  attribute :sport,      :validate => true
  attribute :mobile,      :validate => true


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contato via CSA website",
      :to => "gustavo@csauthority.com.br",
      :from => %("#{name}" <#{email}>)
    }
  end
end
