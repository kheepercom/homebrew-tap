class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.4.0/kheeper_v0.4.0_darwin_arm64.tar.gz"
      sha256 "15954a3cbc7345c33713983754bec0788d7c22dd11b835439c0c46329fca1fc1"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.4.0/kheeper_v0.4.0_darwin_amd64.tar.gz"
      sha256 "2a73248b31acfd614e985be481888b8cc8b864c0e93d2c74f199b398ea420e1d"
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
