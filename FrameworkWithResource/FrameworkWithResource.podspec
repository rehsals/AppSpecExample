Pod::Spec.new do |s|
    s.name             = 'FrameworkWithResource'
    s.version          = '1.121.8'
    s.summary          = 'Framework with some resource.'
    s.homepage         = 'https://test.local'
    s.license          = { type: 'MIT', file: 'LICENSE' }
    s.author           = { 'Ilya' => 'rehsals@gmail.com' }
    s.source           = { git: "https://test.local", tag: "#{s.name}/#{s.version}" }
  
    s.ios.deployment_target = '13.0'
    s.swift_version = '5.0'
  
    s.source_files = 'FrameworkWithResource/Sources/**/*.{h,m,swift}'
    s.resources = 'FrameworkWithResource/Resources/**/*.{xib,storyboard}'
end