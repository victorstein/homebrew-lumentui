class Lumentui < Formula
  desc "Elegant NestJS-based product monitoring system with real-time macOS notifications"
  homepage "https://github.com/victorstein/lumentui"
  url "https://registry.npmjs.org/lumentui/-/lumentui-1.0.0.tgz"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"lumentui", "--help"
  end
end
