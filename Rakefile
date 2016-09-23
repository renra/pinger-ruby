require_relative 'lib/pinger'

desc 'Sends test pings to channgel'
task :test do
  pinger = Pinger.new 'put your webhook url here'

  pinger.notify_success
  pinger.notify_error
end
