class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/3cdc9ce7979df979f863e1a2feae2bf4d780cc86.zip"
  version "1.0.7"
  sha256 "f1f96f3f81264a2aa56d762c1f14b81df38eb935dd4e7a0304851bf7b138c7df"
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
