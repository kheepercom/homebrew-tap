class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.5.0/kheeper_v0.5.0_darwin_arm64.tar.gz"
      sha256 "c67fddd1b51f468f89a19e091749dcbeacdbebf0fc57de28238c6ef30e4d9919"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.5.0/kheeper_v0.5.0_darwin_amd64.tar.gz"
      sha256 "7f8e748869368fe2e60dcdae8fba5ab281b8c1cca4ad3270ed980431225909fe"
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
