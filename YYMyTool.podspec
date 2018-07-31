

Pod::Spec.new do |s|

  s.name         = 'YYMyTool'
  s.version      = '1.0.6'
  s.summary      = 'An easy way to send request and upload file'
  s.homepage     = 'https://github.com/yy32/YYMyTool'
  s.license      = 'MIT'
  s.author       = { 'YY' => '3297509752@qq.com' }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/yy32/YYMyTool.git', :tag => s.version }
  # s.source_files = 'YYTool/YYTool/YYToolBase/**/*.{h,m}'

  # s.source_files = 'YYTool/YYTool/YYToolBase/YYBaseTools.h','YYTool/YYTool/YYToolBase/RequestTool/**/*.{h,m}','YYTool/YYTool/YYToolBase/YYMyTimeManager/**/*.{h,m}'


  # 如果超过两级 文件夹 这个 会 报错的 结构尚浅
  # s.public_header_files = 'YYMyTool/YYTool/YYTool/YYToolBase/YYBaseTools.h'


# /三级文件夹以及 多个 子库 一定要把父文件夹的source_files给注释掉 /

c.subspec 'RequestTool' do |request|
      request.source_files = 'YYMyTool/Classes/BaseTool/RequestTool/**/*'
      end

      c.subspec 'YYMyTimeManager' do |myTime|
      myTime.source_files = 'YYMyTool/Classes/BaseTool/YYMyTimeManager/**/*'
      end










  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  # s.dependency "AFNetworking", "~> 3.2.1"
  # s.frameworks 'UIKit'

end
