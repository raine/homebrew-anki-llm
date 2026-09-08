class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.20/anki-llm-darwin-arm64.tar.gz"
      sha256 "4bbf48e55065eb3dfe85655cb2712d287f510755d65e96524c7cc61c4503b01e"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.20/anki-llm-darwin-amd64.tar.gz"
      sha256 "344d0603fa0458e1629849feb7c99829d6631e0eafa93e0ce6ee8941fe3c91e1"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.20/anki-llm-linux-amd64.tar.gz"
    sha256 "5fe2552e5ebf5e602b6fd6fba3d719f4a14d6de0ec599f035e983fe752753c51"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
