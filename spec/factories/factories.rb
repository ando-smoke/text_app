FactoryGirl.define do
  factory(:message) do
    body('hi')
    from('+15005550006')
  end

  factory(:contact) do
    first_name('Jerry')
    last_name('Gurgitch')
    phone_number('5038889999')
  end

  factory(:sent_message) do
    to('5038889999')
    contact
    message
  end
end
