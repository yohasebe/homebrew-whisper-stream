class WhisperStream < Formula
  desc "Bash script for real-time speech-to-text via OpenAI API or local whisper.cpp"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/8a194c37f6ed4128f34b0d56d8bed9b0cd97369c.zip"
  version "3.0.0"
  sha256 "e4e975436551daf8ea5cd6e5b9c010e381acd1b0696f1acefa738412b7db1b5c"
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
