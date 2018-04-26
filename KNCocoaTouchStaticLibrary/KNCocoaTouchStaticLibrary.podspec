#
#  Be sure to run `pod spec lint KNCocoaTouchStaticLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "KNCocoaTouchStaticLibrary" #项目名称
  s.version      = "0.0.1" # 与仓库的标签号对应
  s.summary      = "Improve feedback interface and customize webview functionality" # 项目简介

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                   DESC

  s.homepage     = "http://EXAMPLE/KNCocoaTouchStaticLibrary"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" } #LICENSE

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "zhangkn" => "developerkunnan@gmail.com" }
  # Or just: s.author    = "zhangkn"
  # s.authors            = { "zhangkn" => "zhangkunnan@qinbaowan.com" }
  s.social_media_url   = "http://twitter.com/zhangkn"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP. 不能用SSH地址
  # tag ,一般都是从tag 获取内容，因此记得创建tag分支

  s.source       = { :git => "https://github.com/zhangkn/KNCocoaTouchStaticLibrary.git", :tag => "#{s.version}" }  ## 你的仓库地址，不能用SSH地址
  # 配置项目的目标路径，如果不是本地开发，pod init/update会从这个路去拉去代码


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #
  # Business/PublicInterface 
  # 源码位置

  s.source_files  = "Business", "Business/**/*.{h,m}" # 代码的位置， Classes/*.{h,m} 表示 Classes 文件夹下所有的.h和.m文件
  s.exclude_files = "Classes/Exclude"

  s.public_header_files = "Business/PublicInterface/*.h"   # #需要对外开放的头文件

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #
  #本项目依赖的是KNStaticBundle.bundle 中的资源文件
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png" ##资源，比如图片，音频文件等

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework" ##表示依赖系统的框架

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2" ##表示依赖的系统类库，比如libz.dylib等
  # s.ios.vendored_frameworks = 'YJKit/YJKit.framework' # 依赖的第三方/自己的framework
  #s.vendored_libraries = 'Library/Classes/libWeChatSDK.a' #表示依赖第三方/自己的静态库（比如libWeChatSDK.a）
#依赖的第三方的或者自己的静态库文件必须以lib为前缀进行命名，否则会出现找不到的情况，这一点非常重要

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4" # 依赖的项目内容 可以多个

end
