require 'sinatra/base'
require 'color_divider'

class ColorDivider
  class API < Sinatra::Base
    get '/middle_color' do
      start_color = params[:start_color]
      end_color   = params[:end_color]

      ColorDivider.new(start_color, end_color).middle_color
    end
  end
end

