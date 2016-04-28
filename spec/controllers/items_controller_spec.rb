require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let (:item) { Item.create!(title: Faker::Lorem.characters(12), price: Faker::Commerce.price, amount: Faker::Number.digit, description: Faker::Lorem.sentence, bread_url: Faker::Placeholdit.image("50x50", 'jpg')) }

  describe "GET index" do
    it "renders the index template" do
      get :index

      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "renders the #show template" do
      get :show
      expect(response).to render_template :show
    end
  end
end
