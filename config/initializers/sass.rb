module SassInitializer
  def self.registered(app)
    require 'sass/plugin/rack'
    Sass::Plugin.options[:syntax] = :sass
    Sass::Plugin.add_template_location(File.join(PADRINO_ROOT, 'public', 'stylesheets'))
    Sass::Plugin.remove_template_location(File.join(PADRINO_ROOT, 'public', 'stylesheets', 'sass'))
    app.use Sass::Plugin::Rack
  end
end
