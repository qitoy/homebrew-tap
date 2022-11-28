class Brainstack < Formula
  desc "Brainf*ck based stack-oriented language"
  homepage "https://github.com/vm-xeck/brainstack"
  url "https://github.com/vm-xeck/brainstack/archive/main.tar.gz"
  version "0.0.0"
  sha256 ""
  license ""

  depends_on "kuin"

  def install
    system "kuin", "-i", "bsi.kn", "-s", Formula["kuin"].opt_prefix/"sys/", "-e", "cpp", "-o", "bsi"
    system "c++", "-std=c++11", "bsi.cpp", "-o", "bsi"
    bin.install "bsi"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test brainstack`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
