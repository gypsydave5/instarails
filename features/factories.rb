FactoryGirl.define do

  factory :user do
    username "Bob"
    email {"#{username}@#{username}.com"}
    password "12345678"
  end

  factory :post do
    image { fixture_file_upload(Rails.root.join("features/test_images/test_image.jpg"))}
    message "The default message"
    user_id {User.find()[0]}
    created_at {Time.now}
  end


end
