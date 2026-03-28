class Elmq < Formula
  desc "Query and edit Elm files — like jq for Elm"
  homepage "https://github.com/caseyWebb/elmq"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.3.0/elmq-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "a0a3944440ae38f72d69c0ddcec6b481caa3327848a1cf4af5f3d2f4cdb8b76f"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.3.0/elmq-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "662181c65fbf902bdd685f6a495bd773a4d8165a0630ae1f042b7591aedf2b2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.3.0/elmq-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b833e9993c739af96c4a767a9978a0f0b36630b92ff82a88cf961e668b84e208"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.3.0/elmq-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7cbdd0699a7e861ac65aa17363e9c51231140bd84c49d342270a0fa6403bf4cd"
    end
  end

  def install
    bin.install "elmq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elmq --version")
  end
end
