class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.7/anki-llm-darwin-arm64.tar.gz"
      sha256 "f2f6effbff74cc4facdf6389813ef843dcfa31ef3a440f4169e54b93b44c15d7"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.7/anki-llm-darwin-amd64.tar.gz"
      sha256 "f0d3f12260984ae33c0e25676a58b010431ee7dbcd1fdd2ec4135087bbbb6f2e"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.7/anki-llm-linux-amd64.tar.gz"
    sha256 "d5021341c497a95254719daca33d419fc78d91eb3d5270a6178e4ad135aa0c02"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
