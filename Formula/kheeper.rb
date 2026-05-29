class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.10.0/kheeper_v0.10.0_darwin_arm64.tar.gz"
      sha256 "8032e7c248f591068ea65dc26697d1b9a2022820b6f2184916babcdfe8dca110"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.10.0/kheeper_v0.10.0_darwin_amd64.tar.gz"
      sha256 "e22fa073d7f848e78c8440cfebe8a68e59bf706586b86b1219d3c6d7f15011d6"
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
