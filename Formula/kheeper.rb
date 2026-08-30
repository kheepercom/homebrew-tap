class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.22.0/kheeper_v0.22.0_darwin_arm64.tar.gz"
      sha256 "3b60f1731b1fcbb3b3d643faee03bf5bbd69ada601fe4f833629ed9a005b2629"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.22.0/kheeper_v0.22.0_darwin_amd64.tar.gz"
      sha256 "d2ac65cce518c135635f76139ac46a3699e47acb46667ee6fa9a18a436a9f503"
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
