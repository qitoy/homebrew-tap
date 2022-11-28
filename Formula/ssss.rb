class Ssss < Formula
  desc "Soreha So Screensaver"
  homepage "https://github.com/vm-xeck/ssss"
  url "https://github.com/vm-xeck/ssss/archive/main.tar.gz"
  version "0.0.0"
  sha256 "131ecc96194fb645c7389483415a73bcefe950cc12b55b0141a47f79ed44412c"
  license ""

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
