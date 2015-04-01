FactoryGirl.define do
  factory(:message) do
    body('hi')
    to('+15034756684')
    from('+15005550006')
  end
end
