class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.9.0/kheeper_v0.9.0_darwin_arm64.tar.gz"
      sha256 "e58445b6f33f8e7b2ca756402b31a1055dba3b189778a9ea1843235d0fd209da"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.9.0/kheeper_v0.9.0_darwin_amd64.tar.gz"
      sha256 "e2fdc889fa255250e9b21b10333d48c23a3943cc46d4d207f775a6555eac2344"
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
