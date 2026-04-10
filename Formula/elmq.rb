class Elmq < Formula
  desc "Query and edit Elm files — like jq for Elm"
  homepage "https://github.com/caseyWebb/elmq"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.4.0/elmq-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "3d9f5151017eee17d8a9ecffe5664eb0ec470ba4563b1600631ef1b92e6beed9"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.4.0/elmq-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "70f13441a41eb798ff111bad2a3fbad6897d1deaf94650cd16ddfb084c7d2959"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.4.0/elmq-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a96d36d5c134c3bb7a534529b2c384ecdb1cf393ee36ccf48874260ca143e72a"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.4.0/elmq-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7dd57c5300996cbcae0489ace5c89d4e8b7cf6e044e81d3039a2552e62f9bb4"
    end
  end

  def install
    bin.install "elmq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elmq --version")
  end
end
