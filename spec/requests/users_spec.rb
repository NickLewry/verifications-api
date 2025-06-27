require 'rails_helper'

describe "Users API", type: :request do
  let!(:user) { User.create!(given_name: "Jane", family_name: "Doe", age: 30) }

  it "lists users" do
    get "/users"
    expect(response).to have_http_status(:ok)
    expect(JSON.parse(response.body)).to be_an(Array)
  end

  it "shows a user" do
    get "/users/#{user.id}"
    expect(response).to have_http_status(:ok)
    expect(JSON.parse(response.body)["id"]).to eq(user.id)
  end

  it "creates a user" do
    post "/users", params: { user: { given_name: "John", family_name: "Smith", age: 22 } }
    expect(response).to have_http_status(:created)
    expect(User.last.given_name).to eq("John")
  end

  it "updates a user" do
    patch "/users/#{user.id}", params: { user: { family_name: "Roe" } }
    expect(response).to have_http_status(:ok)
    expect(user.reload.family_name).to eq("Roe")
  end

  it "deletes a user" do
    delete "/users/#{user.id}"
    expect(response).to have_http_status(:no_content)
    expect(User.where(id: user.id)).to be_empty
  end
end
