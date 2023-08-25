class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://raw.githubusercontent.com/yohasebe/whisper-stream/8944b89cec7d9f8f2862314aeacd57378d4b27ff/whisper-stream"
  version "1.0.4"
  sha256 "5f40c42beec2c92e20387994de574b1bdb55798a6f823b5d4f39e2ae7871d269"
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
