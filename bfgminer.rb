require 'formula'

class Bfgminer < Formula
    homepage 'https://github.com/luke-jr/bfgminer'
    url 'http://luke.dashjr.org/programs/bitcoin/files/bfgminer/3.1.1/bfgminer-3.1.1.tbz2'
    sha1 '826194510747fd40082c0820ab5bb11818e3a86d'
    
    depends_on 'autoconf' => :build
    depends_on 'automake' => :build
    depends_on 'libtool' => :build
    depends_on 'pkg-config' => :build
    depends_on 'curl'
    depends_on 'jansson'
    
    def install
        system "./configure", "--disable-debug", "--disable-dependency-tracking",
        "--prefix=#{prefix}",
        "PKG_CONFIG_PATH=/usr/local/opt/curl/lib/pkgconfig:/usr/local/opt/jansson/lib/pkgconfig",
        "--enable-scrypt"
        system "make", "install"
    end
    
    test do
        system "bfgminer"
    end
end