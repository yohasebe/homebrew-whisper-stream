class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://raw.githubusercontent.com/yohasebe/whisper-stream/8944b89cec7d9f8f2862314aeacd57378d4b27ff/whisper-stream"
  version "1.0.4"
  sha256 "b8dca9c476039abfd2e5f0f47336a84226f293a764849d4e2d540c14fc6628cb"
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
