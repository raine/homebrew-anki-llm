class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.11/anki-llm-darwin-arm64.tar.gz"
      sha256 "e903ea8c1a895a7287bbbcb1e9d2551e4b5fb8c8573af98d4cb8d221604108c5"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.11/anki-llm-darwin-amd64.tar.gz"
      sha256 "0925b58de4399005d5278d68694a0a9cfb8dc6a51cec8209c56e4d0117deb854"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.11/anki-llm-linux-amd64.tar.gz"
    sha256 "a36b4c7faf8a6d0a7bf04d3492f5034b3dfe3cebb79deb38aa8d97bef0c0d663"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
