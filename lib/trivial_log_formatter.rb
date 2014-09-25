require 'trivial_log_formatter/version'
require 'logger'

module TrivialLogFormatter

  class Formatter < ::Logger::Formatter
    FORMAT = "\033[%sm[%s#%d] %5s -- %s: %s\033[0m\n"
    SEVERITY_COLOR_MAP = {:debug => '0;37', :info => '32', :warn => '33', :error => '31', :fatal => '31', :unknown => '37'}

    def call(severity, time, progname, msg)
      msg = '' if msg.nil?
      FORMAT % [severity_to_color(severity), format_datetime(time), $$, severity, progname, msg2str(msg)]
    end

    def severity_to_color(severity)
      SEVERITY_COLOR_MAP[severity.downcase.to_sym]
    end

  end

end
