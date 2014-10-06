Before('@facebook') do
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
    provider: 'facebook',
    uid: '123456789',
    info: {
      email: 'facebookdrone@friendface.com',
      first_name: "Facey",
      last_name: "Bookey",
      name: "FacebookDrone"
    }
  })
end

Before('@bad_facebook') do
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
end

After do
  Warden.test_reset!
end


