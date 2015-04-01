FactoryGirl.define do
  factory(:message) do
    body('hi')
    to('+15034756684')
    from('+15005550006')
  end

  factory(:contact) do
    first_name('Jerry')
    last_name('Gurgitch')
    phone_number('5038889999')
  end
end
