Pod::Spec.new do |s|
  s.name         = "FFmpeg"
  s.version      = "2.6.3"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/chrisballinger/FFmpeg-iOS"
  
  s.license      = { :type => 'LGPLv2.1+', :file => 'COPYING.LGPLv2.1' }
  s.author       = { "Chris Ballinger" => "chris@chatsecure.org" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :ios

  s.source       = { :git => "https://github.com/Ewg777/FFmpegPod.git" }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'precompiled/include/**/*.h'
    ss.public_header_files = 'precompiled/include/**/*.h'
    ss.header_mappings_dir = 'precompiled/include'
    ss.vendored_libraries  = 'precompiled/lib/*.a'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end

end
