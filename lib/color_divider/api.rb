require 'sinatra/base'
require 'color_divider'

class ColorDivider
  class API < Sinatra::Base
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

