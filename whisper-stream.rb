class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/blob/373af760df4853f9e82ca663bb9acb2b18224bcc/whisper-stream"
  version "1.0.4"
  sha256 "2f1cb79d48fc5769dcaf1433bd783223c120a027b9927dcab6f7dd6842395f84"
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
