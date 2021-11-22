#
# Be sure to run `pod lib lint YoViewCtl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YoViewCtl'
  s.version          = '0.1.0'
  s.summary          = 'A short description of YoViewCtl.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/YoSwiftKing/YoViewCtl'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YoSwiftKing' => '206321073@qq.com' }
  s.source           = { :git => 'https://github.com/YoSwiftKing/YoViewCtl.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'YoViewCtl/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YoViewCtl' => ['YoViewCtl/Assets/*.png']
  # }
#  s.resources = 'YoViewCtl/Assets/YoViewCtlBundle.bundle'
#  s.dependency 'YoNavBarView' # 自定义导航view
#  s.dependency 'SnapKit' # 布局用
#  s.dependency 'YoCommon/Define' # 共有类
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  # 单图查看  注意图片加载 子模块里
#  s.subspec 'Accessory' do |ss|
#    ss.source_files = 'YoPhotoBrowser/Classes/Accessory/**/*'
#    # 排除其他子模块的文件
#    # ss.exclude_files = 'Sources/Classes/Core/**/*'
#    ss.dependency 'YoPhotoBrowser/Core'
#    ss.dependency 'SDWebImage'
#    ss.resources = 'YoPhotoBrowser/Assets/YoPhotoBrowserBundle.bundle'
#  end
   # 核心库  公有类模块+功能子模块=单图产看+多图查看等
   s.subspec 'Core' do |ss|
       ss.source_files = 'YoViewCtl/Classes/Core/**/*'
#       ss.resources = 'YoViewCtl/Assets/YoViewCtlBundle.bundle'
       ss.resources = 'YoViewCtl/Assets/**/*'
       ss.dependency 'YoNavBarView' # 自定义导航view
       ss.dependency 'SnapKit' # 布局用
       ss.dependency 'YoCommon/Define' # 共有类
  end

  s.default_subspec = 'Core'
  
end
