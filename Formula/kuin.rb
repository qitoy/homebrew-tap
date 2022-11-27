class Kuin < Formula
  desc "Programming Language kuin"
  homepage "https://kuina.ch/kuin"
  url "https://kuina.ch/download/kuin_2021_08_17_src_ja.zip"
  sha256 "6907b0731409e6288afb06d534a0192717e01372ef955e150f386b968a5c35ca"
  license ""

  def install
    system "c++", "-std=c++11", "kuin.cpp", "-o", "kuin"
    bin.install "kuin"
    cp_r("sys", prefix)
  end

  def caveats
    <<~EOS
      Add the following in your ~/.zshrc or ~/.zprofile:
        alias kuin="kuin -s #{prefix}/sys/"
    EOS
  end

  test do
    (testpath/"hello.kn").write ""
    system "#{bin}/kuin", "-s", "#{prefix}/sys/", "-i", "hello.kn", "-e", "cpp", "-o", "hello"
    system "c++", "-std=c++11", "-o", "hello", "hello.cpp"
    assert_equal "Hello, world!", shell_output("./hello")
  end
end
