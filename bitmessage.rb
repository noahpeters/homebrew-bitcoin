require 'formula'

class Bitmessage < Formula
    
  homepage 'https://github.com/Bitmessage/PyBitmessage'
  url 'https://github.com/Bitmessage/PyBitmessage.git', :branch => 'master'
  version 'HEAD'

  depends_on 'python'
  depends_on 'pyqt'
  depends_on 'openssl'

  def install
    system "./osx.sh HEAD"
    bin.install "src/dist/Bitmessage.app"
  end

  def caveats; <<-EOS.undent
    You will need to run 'brew linkapps' to link the Bitmessage app.
    EOS
  end
end
