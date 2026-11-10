class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.26.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.26.2/kheeper_v0.26.2_darwin_arm64.tar.gz"
      sha256 "ca04e6de1e35a74e5ebe7700ee8610cc3299991b5f5eec612ce52e308bd38926"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.26.2/kheeper_v0.26.2_darwin_amd64.tar.gz"
      sha256 "bcb4e28801a3d745dff56506ffdaa124b61e8dfce5c82bf9c43a2af1acb6cbb5"
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
