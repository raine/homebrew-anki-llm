class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.9/anki-llm-darwin-arm64.tar.gz"
      sha256 "fa75e613107c79d0675518b5a357fe08bfb93e69074ad2221bd7ba894e53e674"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.9/anki-llm-darwin-amd64.tar.gz"
      sha256 "7e707ed2c7c1ec0176370505429f780cf50317049e8e7667c559ccc0c5728142"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.9/anki-llm-linux-amd64.tar.gz"
    sha256 "c7490860478f41a093b3994eddde7a002b1fb532d1716b65f7235b6cab0e617c"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
