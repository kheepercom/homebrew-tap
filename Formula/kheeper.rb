class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.3.0/kheeper_v0.3.0_darwin_arm64.tar.gz"
      sha256 "f9a998d83cbdedcf0d8ca8f9929e55130d8d1989dfd61a7c8b137e6678fdda0f"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.3.0/kheeper_v0.3.0_darwin_amd64.tar.gz"
      sha256 "933f5115e27f794fe4791dd85615025e9145599d2e7be5ae1bc612754166f724"
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
