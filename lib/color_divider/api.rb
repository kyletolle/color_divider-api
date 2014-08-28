require 'sinatra/base'
require 'color_divider'
require 'rack/cors'

class ColorDivider
  class API < Sinatra::Base
    use Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end

    # Idea from http://www.recursion.org/2011/7/21/modular-sinatra-foreman
    configure do
      set :app_file, __FILE__
      set :port, ENV['PORT']
    end

    get '/middle_color' do
      start_color = params[:start_color]
      end_color   = params[:end_color]

      ColorDivider.new(start_color, end_color).middle_color
    end

    run! if app_file == $0
  end
end

