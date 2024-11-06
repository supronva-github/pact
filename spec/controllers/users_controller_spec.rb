# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let!(:user) { create(:user) }
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves a new user in the database and returns a created status' do
        expect { post :create, params: { user: attributes_for(:user, email: "exapmle@gmail.com") } }.to change(User, :count).by(1)
        expect(response).to have_http_status(:created)
      end
    end

    context 'with invalid attributes' do
      it "age" do
        expect { post :create, params: { user: attributes_for(:user, :invalid_age) } }.to_not change(User, :count)
        expect(response.body).to include('Age must be between 1 and 90')
      end

      it "email" do
        expect { post :create, params: { user: attributes_for(:user) } }.to_not change(User, :count)
        expect(response.body).to include('Email already in use')
      end

      it "gender" do
        expect { post :create, params: { user: attributes_for(:user, :invalid_gender) } }.to_not change(User, :count)
        expect(response.body).to include('Gender must be male or female')
      end

      it "validates presence of name" do
        expect { post :create, params: { user: attributes_for(:user, name: nil) } }.to_not change(User, :count)
        expect(response.body).to include("Name can't be blank")
      end

      it "validates presence of patronymic" do
        expect { post :create, params: { user: attributes_for(:user, patronymic: nil) } }.to_not change(User, :count)
        expect(response.body).to include("Patronymic can't be blank")
      end

      it "validates presence of email" do
        expect { post :create, params: { user: attributes_for(:user, email: nil) } }.to_not change(User, :count)
        expect(response.body).to include("Email can't be blank")
      end

      it "validates presence of age" do
        expect { post :create, params: { user: attributes_for(:user, age: nil) } }.to_not change(User, :count)
        expect(response.body).to include("Age is required")
      end

      it "validates presence of nationality" do
        expect { post :create, params: { user: attributes_for(:user, nationality: nil) } }.to_not change(User, :count)
        expect(response.body).to include("Nationality can't be blank")
      end

      it "validates presence of country" do
        expect { post :create, params: { user: attributes_for(:user, country: nil) } }.to_not change(User, :count)
        expect(response.body).to include("Country can't be blank")
      end

      it "validates presence of gender" do
        expect { post :create, params: { user: attributes_for(:user, gender: nil) } }.to_not change(User, :count)
        expect(response.body).to include("Gender can't be blank")
      end
    end
  end
end
