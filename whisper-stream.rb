class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/blob/373af760df4853f9e82ca663bb9acb2b18224bcc/whisper-stream"
  version "1.0.5"
  sha256 "b97bfeabb2e830661e910054e5c782510c57cf1c13c81cc086774c8df98eb085"
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
