FactoryBot.define do
  factory :teamfight do
    match nil
    start_time_game "MyString"
    end_time_game "MyString"
    start_time_youtube "MyString"
    end_time_youtube "MyString"
  end
  sequence :name do |n|
    "#{n}ame"
  end

  sequence :tag do |n|
    "#{n}ag"
  end

  factory :match do
    tournament
    youtube_url "MyString"
  end

  factory :team do
    name
    tag
    league 
  end

  factory :league do
    name 
    tag 
  end

  factory :tournament do
    name "MyString"
  end
end
