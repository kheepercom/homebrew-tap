class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.6.0/kheeper_v0.6.0_darwin_arm64.tar.gz"
      sha256 "772f905dfee9ab822525daaaab167e44e6b33ccd3f410d39413af2ee2ddd371f"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.6.0/kheeper_v0.6.0_darwin_amd64.tar.gz"
      sha256 "19cdbc8fb99de9c6cff2f96f6959a9ab4de465d531407696d446b4d9d8371e57"
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
