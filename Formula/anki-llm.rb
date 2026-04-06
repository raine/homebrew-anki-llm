class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.1/anki-llm-darwin-arm64.tar.gz"
      sha256 "8508c559be103d2197b8396329b5963883267c04964e4f8139dea670469cbecb"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.1/anki-llm-darwin-amd64.tar.gz"
      sha256 "470cae18742c34542c048deb04c9e1601d26abc175e403bdea0d5379cdea424a"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.1/anki-llm-linux-amd64.tar.gz"
    sha256 "66fff7fa388a5b0b5390d5ab91e338151cf59aa28ff6cd0607743453644a916f"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
