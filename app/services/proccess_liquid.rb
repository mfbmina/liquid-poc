module ProccessLiquid
  def self.call(html)
    proccessed_html = Liquid::Template.parse(html)
    proccessed_html.render(email_hash)
  end

  private

  def self.email_hash
    {
      "name" => 'Joao',
      "email" => 'joao@gmail.com',
      "value" => "1000,00",
      "planValue" => "100,00",
    	"hero" => {
    		"bgColor" => "#000000",
    		"color" => "#ffffff",
    		"title" => "Aproveite a promoção!",
    		"text" => "Ative seu plano até 15 de novembro e pague somente R$1,00 no primeiro mês",
    		"image" => "header-active.png",
    		"imgSize "=> "7"
    	},
    	"cta" => {
    		"button" => "Ative seu plano",
    		"text" => "Conheça os planos disponibilizados para você"
    	},
    	"howToUse" => {
    		"title" => {
    			"text" => "Ative agora mesmo seu plano e tenha uma vida mais saudável!",
    			"direction"=> "center"
    		},
    		"steps" => [{
    			"showNumber"=> true,
    			"text" => "Escolha seu produto",
    			"step" => "step1"
    		}, {
    			"showNumber" => true,
    			"text" => "Escolha entre as lanchonetes disponíveis no seu plano",
    			"step" => "step2"
    		}, {
    			"showNumber" => true,
    			"text" => "Faça o Check-in ou apresente o seu x-tudo",
    			"step" => "step3"
    		}]
    	}
    }
  end
end
