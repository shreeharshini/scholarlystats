# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
#for stylesheets

Rails.application.config.assets.precompile += %w( font.css )
Rails.application.config.assets.precompile += %w( font-awesome.css )
Rails.application.config.assets.precompile += %w( custom.min.css )
Rails.application.config.assets.precompile += %w( morris.css )
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( basictable.css )

Rails.application.config.assets.precompile += %w( bootstrap-theme.css )
Rails.application.config.assets.precompile += %w( bootstrap-theme.min.css )
Rails.application.config.assets.precompile += %w( ladda.min.css )

Rails.application.config.assets.precompile += %w( lsb.css )
Rails.application.config.assets.precompile += %w( materialize.min.css )

Rails.application.config.assets.precompile += %w( my_style.css )
Rails.application.config.assets.precompile += %w( monthly.css )

Rails.application.config.assets.precompile += %w( my_style_responsive.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( table-style.css )
Rails.application.config.assets.precompile += %w( typo.css )
#these are added in association with stylesheet_link_tag to enable assets pipeline  
#for javascripts
Rails.application.config.assets.precompile += %w( highcharts.js )
Rails.application.config.assets.precompile += %w( bootstrap.js )
Rails.application.config.assets.precompile += %w( html5shiv.min.js )
Rails.application.config.assets.precompile += %w( ie8-responsive-file-warning.js )

Rails.application.config.assets.precompile += %w( ie10-viewport-bug-workaround.js )
Rails.application.config.assets.precompile += %w( ie-emulation-modes-warning.js )

Rails.application.config.assets.precompile += %w( jquery.basictable.min.js )
Rails.application.config.assets.precompile += %w( validator.min.js )
Rails.application.config.assets.precompile += %w( logger.js )
Rails.application.config.assets.precompile += %w( date-angular.min.js )
Rails.application.config.assets.precompile += %w( date.js )

Rails.application.config.assets.precompile += %w( lsb.js )
Rails.application.config.assets.precompile += %w( materialize.min.js )
Rails.application.config.assets.precompile += %w( modernizr.js )
Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( custom.min.js )
Rails.application.config.assets.precompile += %w( jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( jquery.basictable.min.js )

Rails.application.config.assets.precompile += %w( monthly.js )
Rails.application.config.assets.precompile += %w( morris.js )
Rails.application.config.assets.precompile += %w( jquery2.0.3.min.js )
Rails.application.config.assets.precompile += %w( jquery1.9.1.min.js )


