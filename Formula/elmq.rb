class Elmq < Formula
  desc "Query and edit Elm files — like jq for Elm"
  homepage "https://github.com/caseyWebb/elmq"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.4/elmq-v0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "9128498c4452d09709bc36f96ee51fcdfcff70ea57cfc32a4e4f9365a93ed1c6"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.4/elmq-v0.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "38d5972f8d0cded3df659bc13e5880953e5cc659a108a8da587523d01055c7e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.4/elmq-v0.7.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8f012b781c461b36a59ddae8fb30b64f8ab32e4cc60ad8d368691c0b00ae522"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.7.4/elmq-v0.7.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e90db8c5ebb69fbe9539de71f6ebe2bb7e0e6ff63dd7e8029e31938b3d601752"
    end
  end

  def install
    bin.install "elmq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elmq --version")
  end
end
