class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.14/anki-llm-darwin-arm64.tar.gz"
      sha256 "48731ecdbf78d2276f00becde5978480cf949e8e14f74af2b62cdf4ba16ba80e"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.14/anki-llm-darwin-amd64.tar.gz"
      sha256 "b52d044e8500ce30639b68f87ab54cbd6400458888ba7b609e3ded688a3e60c1"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.14/anki-llm-linux-amd64.tar.gz"
    sha256 "4c8037ab83c7b904e738c8a6d449fd8a095f01f86347c249fb8b342fe56f6b47"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
