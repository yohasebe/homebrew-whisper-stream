class WhisperStream < Formula
  desc "Bash script to transcribe spoken audio into text using Whisper API"
  homepage "https://github.com/yohasebe/whisper-stream"
  url "https://github.com/yohasebe/whisper-stream/blob/fd83aaf319dd3dd0ab5aba6aeab9b563c22c8164/whisper-stream.sh"
  version "1.0.2"
  sha256 "974eb0a9ec380f165ee8b9666f029a79a87234f15bdcc9fb73635565da836c56"
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
