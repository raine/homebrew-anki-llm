class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.17/anki-llm-darwin-arm64.tar.gz"
      sha256 "0dc52611b9c091a9a0e157a8910c1d5cf6abed9c6f0de3822ba77da3aa192b88"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.17/anki-llm-darwin-amd64.tar.gz"
      sha256 "7b02a38161e5019346c00e251186c49fbf044181bd5233d98dfed341b7801fc2"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.17/anki-llm-linux-amd64.tar.gz"
    sha256 "b9dcdd6ce3768a15e3dcd4718df60ae846b02f8e3062d50bc84596754037388b"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
