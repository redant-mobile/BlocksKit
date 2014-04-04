Pod::Spec.new do |s|
  s.name                  = 'BlocksKit'
  s.version               = '2.2.2'
  s.license               = 'MIT'
  s.summary               = 'The Objective-C block utilities you always wish you had.'
  s.homepage              = 'https://zwaldowski.github.io/BlocksKit'
  s.author                = { 'Zachary Waldowski' => 'zach@waldowski.me',
                              'Alexsander Akers'  => 'a2@pnd.mn' }
  s.source                = { :git => 'https://github.com/redant-mobile/BlocksKit.git', :tag => "v#{s.version}" }
  s.requires_arc          = true
  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '6.0'

  s.subspec 'DynamicDelegate' do |ss|
    ss.source_files = 'BlocksKit/DynamicDelegate/*.{h,m}', 'BlocksKit/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'BlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/UIKit/UIAlertView+BlocksKit.{h,m}'
  end
end
