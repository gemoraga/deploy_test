Rails.application.routes.draw do
  

	scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
		get 'empresa', to: 'static_pages#enterprise'
		get 'contacto', to: 'static_pages#contact'
		get 'proyectos', to: 'static_pages#projects'
		get 'map', to: 'static_pages#map'
		get 'proyectos/edificios', to: 'projects#edificios'
		get 'proyectos/social', to: 'projects#social'
		get 'proyectos/anteriores', to: 'projects#anteriores'
		get 'proyectos/edificios/araucaria', to: 'projects#araucaria'
		get 'proyectos/edificios/altoSanFernando', to: 'projects#altoSanFernando'
		get 'proyectos/social/laTurbina', to: 'projects#laTurbina'
		get 'proyectos/social/rengo', to: 'projects#rengo'
		get 'proyectos/social/sanVicente', to: 'projects#sanVicente'
		
		get 'companies/link1', to: 'companies#link1'
  		get 'companies/link2', to: 'companies#link2'
  		get 'companies/link3', to: 'companies#link3'		
		
		post 'postContact', to: 'mails#recibirMail'

		root 'static_pages#home'
	end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
