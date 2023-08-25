class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://raw.githubusercontent.com/yohasebe/whisper-stream/6ba62b610001d17dbb3cca209194184ac1052cb4/whisper-stream"
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
