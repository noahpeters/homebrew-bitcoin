require 'formula'

class Uthash < Formula
    
  homepage 'https://github.com/troydhanson/uthash'
  head 'https://github.com/troydhanson/uthash.git'
  url 'https://github.com/troydhanson/uthash.git', :tag => 'v1.9.8'
  version '1.9.8'

  def install
    include.install Dir['src/*']
  end
end
