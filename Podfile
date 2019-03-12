# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

# ignore all warnings from all pods
inhibit_all_warnings!

pod 'SwiftLint'
pod 'SwiftGen'

target 'ReduxExample' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  target 'Redux' do
    pod 'GitHubAPI', :path => './GitHubAPI', :version => '0.0.1'
  end

  target 'API' do
    pod 'GitHubAPI', :path => './GitHubAPI', :version => '0.0.1'
  end

  target 'ReduxTests' do
    inherit! :search_paths
    pod 'Mockingjay'
    pod 'MirrorDiffKit'
  end

  target 'ReduxExampleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ReduxExampleUITests' do
    inherit! :search_paths
    pod 'iOSSnapshotTestCase'
    pod 'Mockingjay'
    pod 'MirrorDiffKit'
  end

end

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings.delete('CODE_SIGNING_ALLOWED')
    config.build_settings.delete('CODE_SIGNING_REQUIRED')
  end
end

