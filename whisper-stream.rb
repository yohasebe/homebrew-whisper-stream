class WhisperStream < Formula
  desc "Bash script for real-time speech-to-text via OpenAI API or local whisper.cpp"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/e1ae659ee1a1c22a8a7ab3fd2321ff866b45752e.zip"
  version "3.1.2"
  sha256 "0b03c0c5300fbd9e3bb3935f042867a29cd13b95947db3480c6dc970b800050c"
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
