class WhisperStream < Formula
  desc "Bash script for real-time speech-to-text via OpenAI API or local whisper.cpp"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/archive/74fdfefee48413b5fcf90cea0a5b4fd75cdc1d4c.zip"
  version "3.2.0"
  sha256 "08a0806d3ce32f4e714cfd5dd632467d115a134328407cadb5661a13b7f8e986"
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
