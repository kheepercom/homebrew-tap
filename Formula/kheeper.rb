class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.17.1/kheeper_v0.17.1_darwin_arm64.tar.gz"
      sha256 "575e573e0e57f7d52304f669b62e0ca2cae5da5a72dae4e69f08364f0ab61b18"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.17.1/kheeper_v0.17.1_darwin_amd64.tar.gz"
      sha256 "d0dd99debefa142d645907af338a3a23a3bce6aebf7ff56de6aefeaaa82fffce"
    end
  end

  def install
    bin.install "kheeper"
    bin.install "docker-credential-kheeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kheeper --version")
  end
end
