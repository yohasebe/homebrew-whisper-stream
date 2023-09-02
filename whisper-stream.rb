class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/6a9ed87e3d628fdb9de654ef1c54ae4a16b78193.zip"
  version "1.0.8"
  sha256 "f43e3fb6f535bfb8ad8a22b9bda56b2bacd810152d07b843c5a04dff72b5a07b"
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
