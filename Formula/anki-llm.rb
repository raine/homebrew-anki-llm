class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.18/anki-llm-darwin-arm64.tar.gz"
      sha256 "b511c6b959630e17edafd8564ecc9d2f4f9693ab53fe440931f4db68febb5455"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.18/anki-llm-darwin-amd64.tar.gz"
      sha256 "fe6b73fa035118ba001bf395bdc1da00897b437c0a727956bb4e644aece690f8"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.18/anki-llm-linux-amd64.tar.gz"
    sha256 "593dd215796bd9df976487243c8044ea418badf94bb52bff7c20fc594084515a"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
