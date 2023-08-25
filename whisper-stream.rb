class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/blob/fd83aaf319dd3dd0ab5aba6aeab9b563c22c8164/whisper-stream.sh"
  version "1.0.2"
  sha256 "f3801bf1f9688c9230f9e7ebca5b1b3804edfc0d337092ad5d9697338c45de6c"
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
