class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.2/anki-llm-darwin-arm64.tar.gz"
      sha256 "db796d95fd69e7122a2cb1a7435fcccf9342ec070790d309c378c5b0b333a2a9"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.2/anki-llm-darwin-amd64.tar.gz"
      sha256 "a5165a5f704bcd397edb17fe4442994f06f7fca40b794d05f5535b8a62e2a20a"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.2/anki-llm-linux-amd64.tar.gz"
    sha256 "bd6d38e1b3f513fb9d14d315bf85548e97de062a55952f1ccbc1baf4e9213012"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
