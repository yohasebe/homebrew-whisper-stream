class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/e2a41b242ab89fbd72c412baac230c2dbc92c369.zip"
  version "1.1.0"
  sha256 "5212bc80d04eae9717284687f8723aedb98736987df190189a53f61495f69265"
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
