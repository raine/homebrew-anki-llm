class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.15/anki-llm-darwin-arm64.tar.gz"
      sha256 "4ec8c3837ae22c40c9e2e996d85fa83177bcfa36c9f42b4f3320a9ad50becb7b"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.15/anki-llm-darwin-amd64.tar.gz"
      sha256 "0532cfdf8b430deb123aa993cca51f59931b23d99c8399a215dfd0e503378345"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.15/anki-llm-linux-amd64.tar.gz"
    sha256 "1dae27da4f2cea64f2abf759208d5e5f42948cf23e2f11bdbb8974cbd9d567f2"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
