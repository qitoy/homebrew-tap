class Ssss < Formula
  desc "Soreha So Screensaver"
  homepage "https://github.com/vm-xeck/ssss"
  url "https://github.com/vm-xeck/ssss/archive/484620eaa0826c545269e8d25c5762d97baf78df.tar.gz"
  version "0.0.0"
  sha256 "e5975beaef1006668b9b19e046d968e166a862346dc095f5ac7d43fdc9d67e3c"
  license ""
  head "https://github.com/vm-xeck/ssss.git", branch: "main"

  depends_on "ncurses"

  def install
    system "cc", "-I", Formula["ncurses"].opt_prefix/"include", \
        "-L", Formula["ncurses"].opt_prefix/"lib", "-o", "ssss", "-l", "ncurses", "ssss.c"
    bin.install "ssss"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ssss`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
