class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.6/anki-llm-darwin-arm64.tar.gz"
      sha256 "cf6b58d1cffe646ce595c3f96177665385da7ef2464c4294a2544f3c28853803"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.6/anki-llm-darwin-amd64.tar.gz"
      sha256 "82a20e61ca4f385ed57e90dc20f4cf62a9f875cc6ddccca42bbcb62924b727a0"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.6/anki-llm-linux-amd64.tar.gz"
    sha256 "2964b90fe254087b10fa73ee818e11731081b9d80507a85b8d1cc3da85cb7afe"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
