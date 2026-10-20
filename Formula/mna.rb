class Mna < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version '0.0.19'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/macos-arm.zip"
    sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/linux-x64.zip"
    sha256 '63567a001dc1c7c5a06f2471e177bd3cd9814c82cc244877b8caabc158b62a41' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
