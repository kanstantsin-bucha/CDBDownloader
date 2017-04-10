#
# Be sure to run `pod lib lint CDBDownloader.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDBDownloader'
  s.version          = '1.0.2'
  s.summary          = 'Lightweight file downloader with progress'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Lightweight file downloader with progress. It downloads file to the temporary location and call completion. It uses AFNetworking under the hood.
                       DESC

  s.homepage         = 'https://github.com/truebucha/CDBDownloader'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kanstantsin Bucha' => 'truebucha@gmail.com' }
  s.source           = { :git => 'https://github.com/truebucha/CDBDownloader.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/truebucha'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'CDBDownloader/Classes/***'
  
  # s.resource_bundles = {
  #   'CDBDownloader' => ['CDBDownloader/Assets/*.png']
  # }

  s.public_header_files = 'CDBDownloader/Classes/***.h'
  s.frameworks = 'Foundation'
  s.dependency 'AFNetworking', '~> 2.3'
end
