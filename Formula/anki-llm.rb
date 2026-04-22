class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.10/anki-llm-darwin-arm64.tar.gz"
      sha256 "bd695b3ab5639cd3258e4917a0b29429dd157fa70067d384996a1aeec8cf8448"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.10/anki-llm-darwin-amd64.tar.gz"
      sha256 "2354a4f81219fbc3e6c68211ca5d34854508c21516c71dd4f7d5bb2016153cfd"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.10/anki-llm-linux-amd64.tar.gz"
    sha256 "8fa08c079bae0df42ed3ec72d82b06c23c590534fafba942feccae0eb7ac8745"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
