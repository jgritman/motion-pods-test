# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  require 'rubygems'
  require 'motion-cocoapods'

  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.

  define_icon_defaults!(app)
  force_64bit_only!(app)

  # name of your app that will show on up the device
  app.name = 'new-motion-test'

  # version for your app
  app.version = '1.0'

  # you'll want to target the lowest version of the sdk that supports the apis you're leveraging. RubyMotion Starter can only target the lastest iOS SDK.
  app.deployment_target = '9.0'

  # before deploying to the app store you'll need an app identifier (which can be set up via https://developer.apple.com/account/ios/identifier/bundle)
  # app.identifier = ''

  # add additional frameworks here
  # app.frameworks << "StoreKit"

  # resonable defaults
  app.device_family = [:iphone, :ipad]
  app.interface_orientations = [:portrait]
  app.info_plist['UIRequiresFullScreen'] = true
  app.info_plist['ITSAppUsesNonExemptEncryption'] = false

  # Dev, create a development certificate at: https://developer.apple.com/account/ios/certificate/development
  # app.codesign_certificate = ''
  # app.provisioning_profile = ''

  # Production, create a production certificate at:
  # https://developer.apple.com/account/ios/certificate/distribution.
  # These values will need to be set to before you can deploy to the
  # App Store. Compile using `rake clean archive:distribution` and
  # upload the .ipa under ./build using Application Loader.

  # app.codesign_certificate = ''
  # app.provisioning_profile = ''

  # TestFlight: this flag needs to be set if you want to distribute
  # TestFlight builds. It is strongly recommend that you do a
  # TestFlight build and run on a device before doing a release build
  # for App Store consumption.
  # app.entitlements['beta-reports-active'] = true

  app.pods do
    pod 'GoogleSignIn'
  end
end

def define_icon_defaults!(app)
  # This is required as of iOS 11.0 (you must use asset catalogs to
  # define icons or your app will be regected. More information in
  # located in the readme.

  app.info_plist['CFBundleIcons'] = {
    'CFBundlePrimaryIcon' => {
      'CFBundleIconName' => 'AppIcon',
      'CFBundleIconFiles' => ['AppIcon60x60']
    }
  }

  app.info_plist['CFBundleIcons~ipad'] = {
    'CFBundlePrimaryIcon' => {
      'CFBundleIconName' => 'AppIcon',
      'CFBundleIconFiles' => ['AppIcon60x60', 'AppIcon76x76']
    }
  }
end

def force_64bit_only!(app)
  # This is required as of iOS 11.0, 32 bit compilations will no
  # longer be allowed for submission to the App Store.

  app.archs['iPhoneOS'] = ['arm64']
  app.info_plist['UIRequiredDeviceCapabilities'] = ['arm64']
end
