class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.13.1/kheeper_v0.13.1_darwin_arm64.tar.gz"
      sha256 "9e56c4ff383cb211ee1c850dda8807ba8fcd6c70027738e8ded81d283eaaff70"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.13.1/kheeper_v0.13.1_darwin_amd64.tar.gz"
      sha256 "2a21de42d03212922945ca91788e3e68ad12eaee38a7ca6c5920a87907bbd34b"
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
