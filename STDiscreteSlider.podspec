Pod::Spec.new do |spec|

  spec.name          = "STDiscreteSlider"
  spec.version       = "1.0.0"
  spec.summary       = "STDiscreteSlider – slider which allows user to choose value only from predefined set of data."

  spec.platform      = :ios, '13.0'
  spec.framework     = 'Foundation', 'SwiftUI'

  spec.swift_version = ['5.1']
 
  spec.homepage      = "https://github.com/onl1ner/STDiscreteSlider"
   
  spec.source        = { :git => "https://github.com/onl1ner/STDiscreteSlider.git", :tag => "#{spec.version}" }
 
  spec.license       = { :type => "MIT", :file => "LICENSE" }
  spec.author        = { "Tamerlan Satualdypov" => "tsatualdypov@gmail.com" }
  
  spec.source_files  = "Sources/STDiscreteSlider/**/*.swift"
  
end
