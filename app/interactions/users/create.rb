class Users::Create < ActiveInteraction::Base
  string :surname
  string :name
  string :patronymic
  string :email
  integer :age
  string :nationality
  string :country
  string :gender
  array :interests, default: []
  array :skills, default: []

  validates :name, :patronymic, :email, :age, :nationality, :country, :gender, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 90, message: 'must be between 1 and 90' }
  validates :gender, inclusion: { in: %w[male female], message: 'must be male or female' }
  validate  :unique_email

  def execute
    User.transaction do
      user_full_name = "#{inputs[:surname]} #{inputs[:name]} #{inputs[:patronymic]}"
      user_params = inputs.except(:interests, :skills)
      user = User.new(user_params.merge(full_name: user_full_name))

      interests.each do |interest_name|
        interest = Interest.find_or_create_by(name: interest_name)
        user.interests << interest unless user.interests.include?(interest)
      end

      skills.each do |skill_name|
        skill = Skil.find_or_create_by(name: skill_name)
        user.skils << skill unless user.skils.include?(skill)
      end

      user.save
    end
  end

  private

  def unique_email
    if User.exists?(email: email)
      errors.add(:email, 'already in use')
    end
  end
end
