class WhisperStream < Formula
  desc "Bash script for real-time speech-to-text via OpenAI API or local whisper.cpp"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/f8afd7aa061e235e352ab2570b4fa1178ec04d6d.zip"
  version "3.1.1"
  sha256 "cd50a8f1c277e277ff0d4a4d8813115484da8d5f34a5a37232ccbd3e4bc5ea98"
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
