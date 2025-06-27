require 'rails_helper'

describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(given_name: 'John', family_name: 'Doe', age: 25)
    expect(user).to be_valid
  end

  it 'is invalid without a given_name' do
    user = User.new(given_name: nil, family_name: 'Doe', age: 25)
    expect(user).not_to be_valid
  end

  it 'is invalid without a family_name' do
    user = User.new(given_name: 'John', family_name: nil, age: 25)
    expect(user).not_to be_valid
  end

  it 'is invalid if given_name is too short' do
    user = User.new(given_name: 'J', family_name: 'Doe', age: 25)
    expect(user).not_to be_valid
  end

  it 'is invalid if family_name is too short' do
    user = User.new(given_name: 'John', family_name: 'D', age: 25)
    expect(user).not_to be_valid
  end

  describe '.over_21' do
    it 'returns users with age > 21' do
      user1 = User.create!(given_name: 'Alice', family_name: 'Smith', age: 22)
      user2 = User.create!(given_name: 'Bob', family_name: 'Jones', age: 21)
      user3 = User.create!(given_name: 'Carol', family_name: 'White', age: 30)
      expect(User.over_21).to include(user1, user3)
      expect(User.over_21).not_to include(user2)
    end
  end
end
