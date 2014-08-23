require 'spec_helper'

describe ColorDivider::API do
  describe "/middle_color" do
    describe "with no start color"
    describe "with an invalid start color"
    describe "with no end color"
    describe "with an invalid end color"

    describe "with valid start and end colors" do
      before do
        get '/middle_color', start_color: '#000000', end_color: '#FFFFFF'
      end

      it "returns a success response" do
        expect(last_response).to be_ok
      end

      it "returns the middle color" do
        expect(last_response.body).to eq '#808080'
      end
    end

  end
end

