

Pod::Spec.new do |s|

  s.name         = 'YYMyTool'
  s.version      = '1.0.1'
  s.summary      = 'An easy way to send request and upload file'
  s.homepage     = 'https://github.com/yy32/YYMyTool'
  s.license      = 'MIT'
  s.author       = { 'YY' => '3297509752@qq.com' }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/yy32/YYMyTool.git', :tag => s.version }
  s.source_files = 'YYTool/YYTool/RequestTool/*.{h,m}'
  s.public_header_files = 'YYMyTool/YYTool/YYTool/YYMyManagerTool.h'

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  # s.dependency "AFNetworking", "~> 3.2.1"
  # s.frameworks 'UIKit'

end
