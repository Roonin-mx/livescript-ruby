require 'execjs'
require 'livescript/source'
require_relative 'livescript/version'

module LiveScript
  # compile options. See Programmatic API section at http://livescript.net/
  @default_options = {}
  @context = ExecJS.compile LiveScript::Source.contents

  def self.context
    @context
  end

  def self.context=(context)
    @context = context
  end

  def self.default_options
    @default_options
  end

  def self.default_options=(options)
    if options.nil? || !options.kind_of?(Hash)
      raise "Wrong parameter for default_options: #{options.inspect}"
    else
      @default_options = options
    end
  end

  # Compile a script (String or IO) to JavaScript.
  def self.compile(script, options = {})
    # Read content if script is IO object
    script = script.read if script.respond_to?(:read)

    options = @default_options.merge(options)

    @context.call('LiveScript.compile', script, options)
  end

  def self.engine
  end

  def self.version
    LiveScript::VERSION
  end

  def self.engine=(engine)
  end
end
