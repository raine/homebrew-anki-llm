class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.8/anki-llm-darwin-arm64.tar.gz"
      sha256 "9fda6684c62e66286334e67d6e243608c70fe3b61be39c30767c1c3177c1fe34"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.8/anki-llm-darwin-amd64.tar.gz"
      sha256 "836eafa458f9059ace5705a33376ccd09f5e5d6d3938fdb3b24c9ae4fab95201"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.8/anki-llm-linux-amd64.tar.gz"
    sha256 "644ac0b3ae66116ab376612461a4f08744a1ab2d9b3e06c5b4fada3d484bab39"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
