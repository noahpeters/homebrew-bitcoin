require 'formula'

class Uthash < Formula
    
  homepage 'https://github.com/troydhanson/uthash'
  head 'https://github.com/troydhanson/uthash.git'

  def install
    include.install Dir['src/*']
  end
end
