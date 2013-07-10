require 'formula'

class Bitmessage < Formula
    
  homepage 'https://github.com/Bitmessage/PyBitmessage'
  head 'https://github.com/Bitmessage/PyBitmessage.git'

  depends_on 'python'
  depends_on 'pyqt'
  depends_on 'openssl'

  def install
    system "./osx.sh HEAD"
    bin.install "src/dist/Bitmessage.app"
    ln_s "#{prefix}/bin/Bitmessage.app", "/Applications/Bitmessage.app"
  end
end
