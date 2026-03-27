class Elmq < Formula
  desc "Query and edit Elm files — like jq for Elm"
  homepage "https://github.com/caseyWebb/elmq"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.2.2/elmq-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "e24a08bdad76f66d8b5b8b5e89d52b4cee0263ccb53b9089952b3bc8a73a79dd"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.2.2/elmq-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "3da338ed4c91a4021b2d57687039a46193aa7cd8ce622eb096a09dc0518dd931"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.2.2/elmq-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "094e871805f1c77bfaaf2d550a628fa586e7a20ef32e9c0ebae46b381d4315b0"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.2.2/elmq-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b96dfc2bfdf2dc837831f472b05f70daa426e22a660b0466f97e59e7cfd12e8"
    end
  end

  def install
    bin.install "elmq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elmq --version")
  end
end
