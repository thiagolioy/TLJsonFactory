#
# Be sure to run `pod lib lint TLJsonFactory.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TLJsonFactory"
  s.version          = "0.1.0"
  s.summary          = "Helper pod to load json into objects for testing purposes."
  s.homepage         = "https://github.com/thiagolioy/TLJsonFactory"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Thiago Lioy" => "lioyufrj@gmail.com" }
  s.source           = { :git => "https://github.com/thiagolioy/TLJsonFactory.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'TLJsonFactory' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'

end
