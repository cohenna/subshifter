require "optparse"
require File.expand_path(File.dirname(__FILE__) + "./lib/subshifter.rb")

# Options Parsing
options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: main.rb [options]"

  opts.on("-o", "--operation [add|remove]", "Operation type") do |o|
    if o == "add"
      options[:operation] = "forward"
    elsif o == "remove"
      options[:operation] = "backward"
    end
  end

  opts.on("-t", "--time [seconds],[milliseconds]", "Time shift in format: seconds,milliseconds") do |t|
    if t =~ /\d+,\d+/
      options[:time] = t
    else
      puts "#{t.methods.sort} is not valid.  Must be of format seconds,milliseconds to shift timecode by."
    end
  end

  opts.on("-f", "--force", "Force overwrite output file") do |f|
    options[:force] = f
  end

  opts.on_tail("-?", "-h", "--help", "Show this message") do
    puts opts
    exit
  end
end.parse!

options[:infile] = ARGV[0]
options[:outfile] = ARGV[1]

puts options[:force]

test = Subshifter.new(options)
test.process
