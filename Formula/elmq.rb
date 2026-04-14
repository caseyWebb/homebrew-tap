class Elmq < Formula
  desc "Query and edit Elm files — like jq for Elm"
  homepage "https://github.com/caseyWebb/elmq"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.8.0/elmq-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "c9c14e85ae688e15891e0256244ee66698105d422bbe0104b012ae8de4469053"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.8.0/elmq-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "1c69c19d6f792e3136f4620d310601dd88cc4313539dff90263e521d8865078f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/caseyWebb/elmq/releases/download/v0.8.0/elmq-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bae8376f8f2e035fe2690f823078ecf22d58fc8bdf88180423325b6a0dc3509"
    else
      url "https://github.com/caseyWebb/elmq/releases/download/v0.8.0/elmq-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c3e45d4d5a50c5095129f1872d211f7738ca68bfa15ba6ed6c361daed8b512a7"
    end
  end

  def install
    bin.install "elmq"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elmq --version")
  end
end
