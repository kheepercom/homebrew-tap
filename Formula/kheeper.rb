class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.4.1/kheeper_v0.4.1_darwin_arm64.tar.gz"
      sha256 "f8f49df755ba9a6c96c08424c7f018e852ed3110b398d6763342324dfd9007ef"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.4.1/kheeper_v0.4.1_darwin_amd64.tar.gz"
      sha256 "4d4243bf7512b24f165be839beb1309703a890a1360e47915f6b0e6b611d10ff"
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
