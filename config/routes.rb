Rails.application.routes.draw do

 
  get 'counter_and_custom_reports/index'

  get 'counter_and_custom_reports/csv'

  get 'counter_and_custom_reports/xlsx'

  get 'counter_and_custom_reports/zip'


  get 'export_files/csv'

  get 'export_files/xlsx'

  get 'export_files/zip'

  get 'support/contactus'

  get 'support/faq'

  get 'support/aboutus'

	get "loginpage/dynamicreports"
	get "loginpage/sourcereports"
	get "loginpage/report"
  get "loginpage/accessdetails"
  get "loginpage/selectedplatforms"
	get "home/index"
  get "integration_partners/manage_sushi_account"
  get "import_data/xlsx"
  post "search_by_issn/search"

  get 'year_trends/pie_charts_for_yearusages'

# map.pie_chart_for_yearusages 'year_trends/pie_chart_for_yearusages', :controller => 'year_trends', :action => 'pie_chart_for_yearusages'
  
resources :loginpage do
  collection do
    get 'getyear'
    get 'getreports'
    get 'testing'
   end
end

  resources :accounts, :reports, :platforms, 
            :source_reports_mappings, :year_trends, :year_usages,
            :year_top_journals, :account_infos, :export_files, 
            :platform_reports, :requestfordemos, :contact_us, 
            :library_account_details, :import_data, :search_by_issn , 
            :integration_partners, :additional_users

  devise_for :additional_users
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
