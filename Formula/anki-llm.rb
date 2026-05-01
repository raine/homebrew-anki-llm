class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.16/anki-llm-darwin-arm64.tar.gz"
      sha256 "740b1a5bf167204815ebcb3c9c1c8b63237a4ea48162f43bda426b575f3c9fde"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.16/anki-llm-darwin-amd64.tar.gz"
      sha256 "e49e8baab6f237dea375e8eae67031d24e4d1708550716838741c0c599284bfc"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.16/anki-llm-linux-amd64.tar.gz"
    sha256 "ecde66875434add1a1de18fb6b788e91c2b65f380680ae25471043fc26bc9c20"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
