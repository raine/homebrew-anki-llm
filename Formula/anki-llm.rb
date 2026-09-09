class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.21/anki-llm-darwin-arm64.tar.gz"
      sha256 "4fcaf2973383a23561d755664c1199a276bf21a65303203f04c7d33e25a6601a"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.21/anki-llm-darwin-amd64.tar.gz"
      sha256 "4b8c03f6cefd5ba513bb82468bc24b3fa1bfa7b4f7155bfcabdf8803d78f02b4"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.21/anki-llm-linux-amd64.tar.gz"
    sha256 "b07b835f8c7b5c1a854a82a3e36ceb3f16f03931178940328761ff317295cb83"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
