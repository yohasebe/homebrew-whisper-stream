class WhisperStream < Formula
  desc "Bash script for real-time speech-to-text via Whisper API or local whisper.cpp"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/66c318aaab717d7906c4f54e998554c254485679.zip"
  version "2.0.0"
  sha256 "48974fefb0927bfe7fae09265e643fb6498bd36914938f69a9df1adbc6fa1f10"
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

  def caveats
    <<~EOS
      Optional: install whisper-cpp to use the local backend (--backend local):
        brew install whisper-cpp
      See the project README for model setup and usage details.
    EOS
  end

  test do
    system "#{bin}/whisper-stream", "--version"
  end
end
