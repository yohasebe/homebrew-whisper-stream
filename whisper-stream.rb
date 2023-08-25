class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/blob/fd83aaf319dd3dd0ab5aba6aeab9b563c22c8164/whisper-stream.sh"
  version "1.0.2"
  sha256 "2d793b7d3a052c37a43b74c0bc649af6a719e85b28dfebe1ac735f14b1690322"
  license "MIT"

  depends_on "jq"
  depends_on "sox"

  uses_from_macos "curl"

  def install
    bin.install "whisper-stream.sh" => "whisper-stream"
  end

  test do
    system "#{bin}/whisper-stream", "--version"
  end
end
