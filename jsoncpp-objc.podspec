 
Pod::Spec.new do |s|
 

  s.name         = "jsoncpp-objc"
  s.version      = "1.0.0"
  s.summary      = "自定义的横向滑动tableview"
 
  s.homepage     = "https://github.com/junhaiyang/jsoncpp-objc"
 
  s.license      = "MIT"
 
  s.author             = { "yangjunhai" => "junhaiyang@gmail.com" } 
  s.ios.deployment_target = "6.0" 
  
  s.source = { :git => 'https://github.com/junhaiyang/jsoncpp-objc.git', :tag => '1.0.0' , :submodules => true} 
 
  s.requires_arc = true
  
  s.exclude_files = "jsoncpp/devtools","jsoncpp/doc","jsoncpp/makefiles","jsoncpp/pkg-config","jsoncpp/scons-tools","jsoncpp/test","jsoncpp/src/jsontestrunner","jsoncpp/src/test_lib_json"
   
   s.subspec 'include' do |as|
    as.subspec 'json' do |ds| 
    	ds.source_files = 'jsoncpp/include/json/*.{h,m,mm}'   
  	end   		 
  end
  
  s.subspec 'src' do |ds|   
  	ds.source_files = 'jsoncpp/src/lib_json/*.{h,cpp,inl}'  
   	 
  end
  
  s.header_mappings_dir = 'jsoncpp/include'
     
  
end
