require 'formula'

class Ori < Formula
  homepage 'http://ori.scs.stanford.edu/'
  url 'https://bitbucket.org/orifs/ori/downloads/ori-0.7.0.tgz'
  sha1 'e77662a30ba5ebfff08f3bd2ad10692d9adc4018'

  depends_on 'scons' => :build
  depends_on 'pkg-config' => :build
  depends_on 'openssl'
  depends_on 'libevent'
  depends_on 'fuse4x'
  depends_on 'boost'

  def install
    system "scons", "BUILDTYPE=RELEASE"
    system "scons", "install", "PREFIX=#{prefix}"
  end

  def test
    system "ori"
  end
end
