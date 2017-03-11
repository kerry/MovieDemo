# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MovieDemo' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'Kingfisher', '~> 3.0'
  pod 'PKHUD', :git => 'https://github.com/toyship/PKHUD.git'
  pod 'AlamofireObjectMapper', '~> 4.0'
  
  target 'MovieDemoTests' do
    inherit! :search_paths
     pod 'AlamofireObjectMapper', '~> 4.0'
  end

  target 'MovieDemoUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
