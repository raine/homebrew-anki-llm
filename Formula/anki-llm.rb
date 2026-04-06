class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.0/anki-llm-darwin-arm64.tar.gz"
      sha256 "0e3e5d8f8584a0b6070b441fc9ebbb0550a44f9b21f22242840b25b599a88ebe"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.0/anki-llm-darwin-amd64.tar.gz"
      sha256 "d41230bc9642669a89c8f08b0777156cf117908b13aa7cacdfe48de04c5b4f7a"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.0/anki-llm-linux-amd64.tar.gz"
    sha256 "e462ff9a40288bd10d18d4830227567b261112a30d5ccc11ed06d4877fe5c9a0"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
