FactoryGirl.define do
  factory(:message) do
    body('hi')
    to('5034756684')
    from('5038365278')
  end
end
