class Elmq < Formula
  desc "Query and edit Elm files — like jq for Elm"
  homepage "https://github.com/caseyWebb/elmq"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.3/elmq-v0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "1761e7171f02dbcf7be3140ae94f4dc71b5876701ef8b39c404a66036407b91e"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.3/elmq-v0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "18546cf70b210494b54aff6d038e31269b07b7440ccfde95636f5b6c437f36b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.3/elmq-v0.7.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9af29f6ed9a1b68407a148105bc9e8ec7f28c548c859cb52c9a8b6d426cdf8ff"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.3/elmq-v0.7.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0bca3baa3a1a7b9c6bd60569249c74a62be233c28178fae123b61f7b230e10b4"
    end
  end

  def install
    bin.install "elmq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elmq --version")
  end
end
