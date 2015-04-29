require "rubygems"
require 'rake'
require 'yaml'
require 'time'
require 'open-uri'

desc 'Build site with Jekyll'
task :build do
  sh 'jekyll build --trace'
end

desc "Pings search engines with sitemap"
task :ping do
  http = open("http://www.bing.com/webmaster/ping.aspx?siteMap=http://www.yoururl.com/sitemap.xml")
  http = open("http://www.google.com/webmasters/sitemaps/ping?sitemap=http://yoururl.com/sitemap.xml")
end

desc "Launch preview environment"
task :preview do
  system "jekyll serve -w"
end

desc 'Deploy'
task :deploy => [:build, :ping] do
    sh 'rsync -rtzhq --progress --delete _site/ deployuser@yoururl.com:/path/to/www/'
end

desc 'Upload Images'
task :upload_images => [:build] do
    sh 'rsync -rtzhq --progress --delete _site/img/ deploy@yoururl.com:/path/to/www/img/'
end