

Pod::Spec.new do |s|

  s.name         = 'YYMyTool'
  s.version      = '1.0.8'
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



# s.subspec 'YYToolBase' do |t|
#         # t.source_files = 'SYBaseKit/Classes/Tool/**/*'
      
#       t.subspec 'RequestTool' do |defi|
#         defi.source_files = 'YYMyTool/YYTool/YYTool/Classes/YYToolBase/RequestTool/**/*'
#         end

#       t.subspec 'YYMyTimeManager' do |net|
#         net.source_files = 'YYMyTool/YYTool/YYTool/Classes/YYToolBase/YYMyTimeManager/**/*'
#         end
#     end


s.source_files  = 'Classes/*.{h,m}'



  s.requires_arc = true





# /******** 补充点 你想用的 三方库 ********/
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  # s.dependency "AFNetworking", "~> 3.2.1"
  # s.frameworks 'UIKit'
  # s.library   = "iconv"
  # s.vendored_libraries = 'Classes/**.a', 'Classes/**.a'

end
