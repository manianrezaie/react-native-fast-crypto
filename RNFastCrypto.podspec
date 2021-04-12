require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNFastCrypto"
  s.version      = package['version']
  s.summary      = "RNFastCrypto"
  s.description  = package['description']
  s.homepage     = "https://github.com/ExodusMovement/react-native-fast-crypto"
  s.license      = "MIT"
  s.author             = { "Paul Puey" => "paul@airbitz.co" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/ExodusMovement/react-native-fast-crypto.git", :tag => "v#{s.version}" }
  s.source_files  = "RNFastCrypto/**/*.{h,m}"
  s.requires_arc = true
  s.vendored_libraries =
    'RNFastCrypto/Libraries/libboost_regex.a',
    'RNFastCrypto/Libraries/libboost_system.a',
    'RNFastCrypto/Libraries/libboost_thread.a',
    'RNFastCrypto/Libraries/libmymonerocorecpp.a',
    'RNFastCrypto/Libraries/libnativecrypto.a'


  s.dependency "React"

end