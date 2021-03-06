require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/static'

get '/' do
  page = File.read(File.dirname(__FILE__) + '/templates/page.st')
  page.gsub!('$base$','')
  page.gsub!('$pagetitle$', 'Gitit\'s User Guide')
  page.gsub!('$wikititle$', 'Not a Real Wiki')
  page.gsub!('$pageUrl$', '/')
  page.gsub!('$content()$', File.read(File.dirname(__FILE__)+'/fixtures/view.html'))

  page
end

get '/_edit/' do
  page = File.read(File.dirname(__FILE__) + '/templates/page.st')
  page.gsub!('$base$','')
  page.gsub!('$pagetitle$', 'Gitit\'s User Guide')
  page.gsub!('$wikititle$', 'Not a Real Wiki')
  page.gsub!('$pageUrl$', '')
  page.gsub!('$content()$', File.read(File.dirname(__FILE__)+'/fixtures/edit.html'))
  page
end

get '/_index' do
  page = File.read(File.dirname(__FILE__) + '/templates/page.st')
  page.gsub!('$base$','')
  page.gsub!('$pagetitle$', 'Gitit\'s User Guide')
  page.gsub!('$wikititle$', 'Not a Real Wiki')
  page.gsub!('$pageUrl$', '')
  page.gsub!('$content()$', File.read(File.dirname(__FILE__)+'/fixtures/index.html'))
  page
end