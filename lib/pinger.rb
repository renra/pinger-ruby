require 'slack-notifier'

class Pinger
  def initialize(uri)
    @notifier = Slack::Notifier.new(
      uri,
      channel: '#notifications',
      username: "Pinger"
    )
  end

  def notify_success
    @notifier.ping "I've just checked your server. It's running fine. Relax :relieved:", icon_emoji: ':glitch_crab:'
  end

  def notify_error
    @notifier.ping "<@renra> Houston we got a problem. Check [Endless Pilgrimage](http://www.endless-pilgrimage.com) ASAP :open_mouth:", icon_emoji: ':boom:'
  end
end
