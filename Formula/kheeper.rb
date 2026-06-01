class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.11.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.11.2/kheeper_v0.11.2_darwin_arm64.tar.gz"
      sha256 "a039d900be2751f81c045d007f1b2137a01b0541f97e0eb120a9ec01323081b9"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.11.2/kheeper_v0.11.2_darwin_amd64.tar.gz"
      sha256 "d3d6ab0d1a3c8e9400914c30d6044bff54a8c647cec42b72b3bf6fe53707bd7a"
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
