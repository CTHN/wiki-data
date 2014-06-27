#!/usr/bin/env ruby

# Simple script to check broken links in the wiki. This is a weak and simple
# check to work with markdown, html and even php scripts. Keep in mind that
# the script does not find linked pages through "meta-pages" like a php script
# which links all files in the /user/ folder.
#
# Last change: 2014-06-27, Aaron Mueller <mail@aaron-mueller.de>


blacklist = [
  'mainpage',
  'error_404'
]

files = Dir.glob('pages/**/*')
    .delete_if {|file| Dir.exists?(file) }
wiki_links = files
    .map {|file| file[6..-1].split('.').first }
    .delete_if {|file| blacklist.include?(file) }

files.each do |file|
  content = File.new(file).read
  wiki_links.reject! do |link|
    not content.scan(/#{link}/).empty?
  end
end

wiki_links.each do |broken_link|
  puts "Check linkage for '#{broken_link}'."
end
puts "#{wiki_links.size} in total."
