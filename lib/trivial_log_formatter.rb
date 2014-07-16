require 'trivial_log_formatter/version'
require 'logger'

module TrivialLogFormatter

  class Formatter < ::Logger::Formatter
    FORMAT = "[%s#%d] %5s -- %s: %s\n"

    def call(severity, time, progname, msg)
      return '' if msg.respond_to?(:empty?) ? empty? : !msg

      FORMAT % [format_datetime(time), $$, severity, progname, msg2str(msg)]
    end

  end

end
