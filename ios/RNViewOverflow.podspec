Pod::Spec.new do |s|
  s.name         = "RNViewOverflow"
  s.version      = "1.0.0"
  s.summary      = "RNViewOverflow"
  s.homepage     = "https://github.com/entria/react-native-view-overflow"
  s.license      = "MIT"
  s.author       = { "author" => "dev@entria.com.br" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNViewOverflow.git", :tag => "master" }
  s.source_files  = "RNViewOverflow/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"
end
