require 'twilio-ruby'

ACCOUNT_SID = ''
AUTH_TOKEN = ''
FROM_NUMBER = ''

def send_sms(phone_number, body_text)
  client = Twilio::REST::Client.new(ACCOUNT_SID, AUTH_TOKEN)
  client.messages.create(
    from: FROM_NUMBER,
    to: phone_number,
    body: body_text
  )
end

