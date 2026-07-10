class MnaATcliv0012 < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version 'cli-v0.0.1-2'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/macos-arm.zip"
    sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/linux-x64.zip"
    sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
