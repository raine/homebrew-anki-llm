class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.5/anki-llm-darwin-arm64.tar.gz"
      sha256 "fa59e46bd0ade5811cbe636184affbd187fb4e5346604bdde85c68685c522d27"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.5/anki-llm-darwin-amd64.tar.gz"
      sha256 "34c6e94470f26bc8782d2637aec0563d6d3b10776426ccf068b203100de53fee"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.5/anki-llm-linux-amd64.tar.gz"
    sha256 "77e0e582917f8fa3510fb3a564e40b1a15ac93eeba4cc7668adbbff2df14f254"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
