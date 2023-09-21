class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/9f75eb39f4a3633c07a7e874a33d8257b3bcb086.zip"
  version "1.0.9"
  sha256 "38d885f05ba4d7c4ced174526995cf452ab927eb66935fb0bf861b5e9efcf865"
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

  test do
    system "#{bin}/whisper-stream", "--version"
  end
end
