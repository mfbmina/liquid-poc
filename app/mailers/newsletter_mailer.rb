class NewsletterMailer < ApplicationMailer
  def build(newsletter)
    @template = ::ProccessLiquid.call(newsletter.body)
    mail(to: 'joao@gmail.com', subject: newsletter.subject)
  end
end
