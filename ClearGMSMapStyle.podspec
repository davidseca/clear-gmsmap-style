#
#  Be sure to run `pod spec lint ClearGMSMapStyle.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name = "ClearGMSMapStyle"
  spec.version = "0.0.1"
  spec.summary = "A clear styling for Google Maps SDK for iOS."
  spec.description = <<-DESC
  David Seca - just clear
  ClearGMSMapStyle provides an easy way for styling Google Maps for iOS
  DESC

  spec.homepage = "https://github.com/davidseca/clear-gmsmap-style.git"

  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.author = { "David Seca" => "davidseca@gmail.com" }

  spec.platform = :ios
  spec.ios.deployment_target = '14.0'
  spec.swift_versions = [ '5.0' ]

  spec.source = { :git => "https://github.com/davidseca/clear-gmsmap-style.git", :tag => "#{spec.version}" }
  spec.source_files = "ClearGMSMapStyle/**/*.{swift}"
  spec.resource_bundles = {
        "ClearGMSMapStyle" => [
          'Resources/**/*.{json}'
      ]
    }

  spec.static_framework = true
  spec.dependency 'GoogleMaps', '~> 6.2.1'

end
