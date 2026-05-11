class WhisperStream < Formula
  desc "Bash script for real-time speech-to-text via OpenAI API or local whisper.cpp"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/f24f14d41ad0efce6a5061eb6298d5b8743d7354.zip"
  version "3.1.0"
  sha256 "dcc5ee1ebe333c3e839e17d3e8770100a97af29619dff91cfa7f940a4c1ab23f"
  license "MIT"

  depends_on "jq"
  depends_on "sox"

  on_macos do
    depends_on "switchaudio-osx"
  end

  uses_from_macos "curl"

  def install
    bin.install "whisper-stream"
  end

  def caveats
    <<~EOS
      Optional: install whisper-cpp to use the local backend (--backend local):
        brew install whisper-cpp
      See the project README for model setup and usage details.
    EOS
  end

  test do
    system "#{bin}/whisper-stream", "--version"
  end
end
