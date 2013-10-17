Pod::Spec.new do |spec|
  spec.name         = 'DTFoundation-Goonbee'
  spec.version      = '2.0.3'
  spec.summary      = "Fork of Oliver Drobnik's DTFoundation"
  spec.homepage     = "https://github.com/lmirosevic/DTFoundation"
  spec.author       = { "Luka Mirosevic" => "luka@goonbee.com" }
  spec.source       = { :git => "https://github.com/lmirosevic/DTFoundation.git", :tag => spec.version.to_s }
  spec.license      = 'BSD'
  spec.requires_arc = true

  spec.subspec 'Core' do |ss|
    ss.ios.deployment_target = '4.3'
    ss.osx.deployment_target = '10.6'
    ss.source_files = 'Core/Source/*.{h,m}'
    ss.public_header_files = 'Core/DTFoundation.h', 'Core/Source/Runtime/*.h', 'Core/Source/*.h'
  end

  spec.subspec 'UIKit' do |ss|
    ss.platform = :ios, '4.3'
    ss.dependency 'DTFoundation-Goonbee/Core'
    ss.ios.frameworks = 'QuartzCore'
    ss.ios.source_files = 'Core/Source/iOS/*.{h,m}'
    ss.ios.public_header_files = 'Core/Source/iOS/*.h'
  end

  spec.subspec 'UIKit_BlocksAdditions' do |ss|
    ss.platform = :ios, '4.3'
    ss.dependency 'DTFoundation-Goonbee/Core'
    ss.ios.source_files = 'Core/Source/iOS/BlocksAdditions/*.{h,m}'
    ss.ios.public_header_files = 'Core/Source/iOS/BlocksAdditions/*.h'
  end

  spec.subspec 'AppKit' do |ss|
    ss.platform = :osx, '10.6'
    ss.dependency 'DTFoundation-Goonbee/Core'
    ss.osx.source_files = 'Core/Source/OSX/*.{h,m}'
    ss.osx.public_header_files = 'Core/Source/OSX/*.h'
  end

  spec.subspec 'DTAWS' do |ss|
    ss.ios.deployment_target = '4.3'
    ss.osx.deployment_target = '10.6'
    ss.dependency 'DTFoundation-Goonbee/Core'
    ss.source_files = 'Core/Source/DTAWS/*.{h,m}'
    ss.public_header_files = 'Core/Source/DTAWS/*.h'
  end

  spec.subspec 'DTASN1' do |ss|
    ss.ios.deployment_target = '4.3'
    ss.osx.deployment_target = '10.6'
    ss.dependency 'DTFoundation-Goonbee/Core'
    ss.source_files = 'Core/Source/DTASN1/*.{h,m}'
    ss.public_header_files = 'Core/Source/DTASN1/*.h'
  end

  spec.subspec 'DTSidePanel' do |ss|
    ss.platform = :ios, '5.0'
    ss.dependency 'DTFoundation-Goonbee/UIKit'
    ss.ios.frameworks = 'QuartzCore'
    ss.ios.source_files = 'Core/Source/iOS/DTSidePanel/*.{h,m}'
    ss.ios.public_header_files = 'Core/Source/iOS/DTSidePanel/*.h'
  end

  spec.subspec 'DTHTMLParser' do |ss|
    ss.ios.deployment_target = '4.3'
    ss.dependency 'DTFoundation-Goonbee/Core'
    ss.source_files = 'Core/Source/DTHTMLParser/*.{h,m}'
    ss.public_header_files = 'Core/Source/DTHTMLParser/*.h'
    ss.library = 'xml2'
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  end

  spec.subspec 'DTReachability' do |ss|
    ss.ios.deployment_target = '4.3'
    ss.osx.deployment_target = '10.6'
    ss.framework = 'SystemConfiguration'
    ss.source_files = 'Core/Source/DTReachability/*.{h,m}'
    ss.public_header_files = 'Core/Source/DTReachability/*.h'
  end

  spec.subspec 'DTSQLite' do |ss|
    ss.ios.deployment_target = '4.3'
    ss.osx.deployment_target = '10.6'
    ss.library = 'sqlite3'
    ss.source_files = 'Core/Source/DTSQLite/*.{h,m}'
    ss.public_header_files = 'Core/Source/DTSQLite/*.h'
  end

  spec.subspec 'DTZipArchive' do |ss|
    ss.ios.deployment_target = '4.3'
    ss.source_files = 'Core/Source/DTZipArchive/*.{h,m}'
    ss.public_header_files = 'Core/Source/DTZipArchive/*.h'
    ss.library = 'z'

    # Ideally minizip should have a Pod
    # ss.dependency 'Minizip'
    ss.subspec 'Minizip' do |sss|
      sss.source_files = 'Core/Source/Externals/minizip/*.{h,c}'
      sss.public_header_files = 'Core/Source/Externals/minizip/*.h'
    end
  end

  spec.subspec 'DTUTI' do |ss|
    ss.ios.deployment_target = '4.3'
    ss.ios.frameworks = ['MobileCoreServices']
    ss.source_files = 'Core/Source/DTUTI/*.{h,m}'
    ss.public_header_files = 'Core/Source/DTUTI/*.h'
  end
	
  spec.subspec 'DTSidePanel' do |ss|
    ss.ios.deployment_target = '5.0'
    ss.source_files = 'Core/Source/iOS/DTSidePanel/*.{h,m}'
    ss.public_header_files = 'Core/Source/iOS/DTSidePanel/*.h'
  end
	
end
