
Pod::Spec.new do |spec|


  spec.name         = "Coredatada"
  spec.version      = "0.0.3"
  spec.summary      = "A suummary to help"
  spec.swift_version = "5.2"
  spec.description  =  "This is Example Framework done by Mj to test all OS Framework working"

  spec.homepage     = "https://github.com/MohamedJaffer-24/CoreData"
 

  spec.license      = "MIT"

  spec.author             = { "Jaffer" => "jaffer.s@zohocorp.com" }

  spec.ios.deployment_target = "8.0"


  spec.source       = { :git => "https://github.com/MohamedJaffer-24/CoreData.git", :tag => "#{spec.version}" }

  spec.source_files  = 'Coredata/**/*.{h,m,swift}'
  spec.resource = 'Coredata/**/*.xcdatamodeld'
  end
