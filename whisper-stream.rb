class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream/archive/ec300df942d0bb086e455095543986686aa0a9e8.zip"
  version "1.0.6"
  sha256 "671da9aa1ac5632d577e7945821812c14ad13ca777c6985ee43ad86f147efded"
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
