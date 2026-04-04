class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.2.0/kheeper_v0.2.0_darwin_arm64.tar.gz"
      sha256 "9ac82da18c8dd1a58e483c9ffdedab795dd1cdeb3f0f5867a1cda9c2b477942b"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.2.0/kheeper_v0.2.0_darwin_amd64.tar.gz"
      sha256 "e7040f975c93ae1d420efeee35d3db1c11bc2f21f65bdb5e46aa2d304e440187"
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
