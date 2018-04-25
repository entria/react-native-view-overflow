
Pod::Spec.new do |s|
  s.name         = "RNViewOverflow"
  s.version      = "1.0.0"
  s.summary      = "RNViewOverflow"
  s.description  = <<-DESC
                  RNViewOverflow
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "dev@entria.com.br" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNViewOverflow.git", :tag => "master" }
  s.source_files  = "RNViewOverflow/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
