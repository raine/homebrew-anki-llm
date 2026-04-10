class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.4/anki-llm-darwin-arm64.tar.gz"
      sha256 "d5f1dcb2fad49de97346876f81a3057dc8a18cabee3437a4003471fc2b88c319"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.4/anki-llm-darwin-amd64.tar.gz"
      sha256 "398d9cba9a4bf72aed01a2c24e742f410a85671d5450572ba302fca21c68286e"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.4/anki-llm-linux-amd64.tar.gz"
    sha256 "d47d471cedb0126be2206b637b51a9c98bc9fb45273c667786470b5a65c12287"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
