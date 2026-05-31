class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.11.1/kheeper_v0.11.1_darwin_arm64.tar.gz"
      sha256 "ea4de63f745c7e0fc9bd8617a3634bf0b01991348ab1eb828f79c59e730acc45"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.11.1/kheeper_v0.11.1_darwin_amd64.tar.gz"
      sha256 "be667032f13562afaeef77d0b8dc2fcd4ade35ed0b248bc375af348d9906d471"
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
