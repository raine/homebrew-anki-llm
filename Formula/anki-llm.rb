class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.19/anki-llm-darwin-arm64.tar.gz"
      sha256 "3470eeb6d511902a25036faaabe55ee1b6cae292ce7397f597609a8d29ca4a21"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.19/anki-llm-darwin-amd64.tar.gz"
      sha256 "d5e51d8350856d435141739b8f14421cf702b1d974facb03b01051409833d456"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.19/anki-llm-linux-amd64.tar.gz"
    sha256 "65f30ed05264c8a968dfc82c4727daf6edbd82e5793fe7c7805d7fa4ca76b58d"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
