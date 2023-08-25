class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://raw.githubusercontent.com/yohasebe/whisper-stream/main/whisper-stream"
  version "1.0.3"
  sha256 "8833409913c3d2f04fea97cc0529fb4787615581959c3b44982f4f8a9f9e256b"
  license "MIT"

  depends_on "jq"
  depends_on "sox"

  uses_from_macos "curl"

  def install
    bin.install "whisper-stream"
  end

  test do
    system "#{bin}/whisper-stream", "--version"
  end
end
