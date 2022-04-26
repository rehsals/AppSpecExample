Pod::Spec.new do |s|
    s.name             = 'FrameworkWithAppSpec'
    s.version          = '1.0.0'
    s.summary          = 'Framework With AppSpec.'
    s.homepage         = 'https://test.local'
    s.license          = { type: 'MIT', file: 'LICENSE' }
    s.author           = { 'Ilya' => 'rehsals@gmail.com' }
    s.source           = { git: "https://test.local", tag: "#{s.name}/#{s.version}" }
  
    s.ios.deployment_target = '13.0'
    s.swift_version = '5.0'
    s.static_framework = true
    s.prefix_header_file = false
  
    s.source_files = 'Sources/**/*.{h,m,swift}'

    s.dependency 'FrameworkWithResource'
  
    s.app_spec 'Example' do |example|
      example.source_files = 'Example/**/*.swift'
      example.resources = 'Example/**/*.{storyboard,xcassets}'
      example.pod_target_xcconfig = {
        'PRODUCT_BUNDLE_IDENTIFIER' => "ru.ilya.FrameworkWithAppSpec",
        'CODE_SIGN_STYLE' => 'Manual',
        'SKIP_INSTALL' => 'NO'
      }
    end
  end
  