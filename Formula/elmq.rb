class Elmq < Formula
  desc "Query and edit Elm files — like jq for Elm"
  homepage "https://github.com/caseyWebb/elmq"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.2/elmq-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.2/elmq-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.2/elmq-v0.7.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 ""
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.2/elmq-v0.7.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "elmq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elmq --version")
  end
end
