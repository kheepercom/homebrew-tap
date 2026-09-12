class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.23.0/kheeper_v0.23.0_darwin_arm64.tar.gz"
      sha256 "89de70f1363c21968153e01de56d6c78b8b15af2affd77cadc569f2e444cf27f"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.23.0/kheeper_v0.23.0_darwin_amd64.tar.gz"
      sha256 "cfd588bd162f6f2886a492e2ccc4b96764715d2fc4d158271428dcc8572a41f4"
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
