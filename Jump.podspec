Pod::Spec.new do |s|
  s.name     = 'Jump'
  s.version  = '1.0.9'
  s.license  = 'MIT'
  s.summary  = 'clean architecture for swift projects'
  s.homepage = 'https://github.com/Proscom/Jump.git'
  s.social_media_url = 'http://proscom.ru'
  s.authors  = { 'Proscom' => 'hi@proscom.ru' }
  s.source   = { :git => 'https://github.com/Proscom/Jump.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"

  s.source_files = 'Source/**/*.swift'
end
