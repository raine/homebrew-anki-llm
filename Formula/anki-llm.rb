class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.3/anki-llm-darwin-arm64.tar.gz"
      sha256 "2353e8e14d626cac54a5b176b8e5649bd781ccb238a25356e4a47fe8ae164f78"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.3/anki-llm-darwin-amd64.tar.gz"
      sha256 "58ca6ed4e25a00a23cf6fc309ff543a0b62d9e2610eb5979a6b8c48fdf8a491d"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.3/anki-llm-linux-amd64.tar.gz"
    sha256 "cfa3120e848b2cc283c201bd9f740216425cfe1311bec4db7365e45a09a1e0b7"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
