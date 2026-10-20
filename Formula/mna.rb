class Mna < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version ''

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/macos-arm.zip"
    sha256 '61d4001b59bbaf7dd8d6318b5bfc4dee68912a41ce73d53ead61955e3b9f9545' # macos-arm
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
