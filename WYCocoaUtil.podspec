Pod::Spec.new do |s|

  s.name         = "WYCocoaUtil"
  s.version      = "1.0"
  s.summary      = "WYCocoaUtil."

  s.description  = <<-DESC
                WYCocoaUtil is a cocoa util.
			DESC

  s.homepage     = "https://github.com/wwy0918/__Y_Utils__.git"

  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author       = { "wwy0918" => "wwy0918@163.com" }

  s.source       = { :git => "https://github.com/wwy0918/__Y_Utils__.git", :tag => s.version.to_s }
  s.source_files = '__Y__/__Y_Utils__/*.{h,m}'

  s.requires_arc = true
end
