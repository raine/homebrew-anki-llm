class AnkiLlm < Formula
  desc "Command-line interface for bulk-processing Anki flashcards with LLMs"
  homepage "https://github.com/raine/anki-llm"
  version "2.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/anki-llm/releases/download/v2.0.13/anki-llm-darwin-arm64.tar.gz"
      sha256 "20e7d0e9d146bbb2d094e0d690f113e50253acfe83c1a1ac1fd49ed2ad4fb91b"
    else
      url "https://github.com/raine/anki-llm/releases/download/v2.0.13/anki-llm-darwin-amd64.tar.gz"
      sha256 "e11d6b4773ccfbf3d27c06234ed06e97bb1427e9c01ec505683b6c0adc6aa056"
    end
  end

  on_linux do
    url "https://github.com/raine/anki-llm/releases/download/v2.0.13/anki-llm-linux-amd64.tar.gz"
    sha256 "0abbad71e86f89c492d82d4b9a1c4350d90e092845cc8dbae2e61ea5b6b21cbd"
  end

  def install
    bin.install "anki-llm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/anki-llm --version")
  end
end
