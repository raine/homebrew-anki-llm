class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.12/anki-llm-darwin-arm64.tar.gz"
      sha256 "2bb43b905ba3ca9d3a7b3fb3ce6f4e340af5586239dd5684b9d3659c392d83d2"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.12/anki-llm-darwin-amd64.tar.gz"
      sha256 "f546720fe02fd76ce128428ac797d5d29b998db3feb26c58661de564e8691363"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.12/anki-llm-linux-amd64.tar.gz"
    sha256 "cb2d050eef79a4d3b6d4ad332be2940527e83d1c2a409bdb5b49147b589bc0ef"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
