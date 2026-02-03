class Lumentui < Formula
  desc "Elegant NestJS-based product monitoring system with real-time macOS notifications"
  homepage "https://github.com/victorstein/lumentui"
  url "https://registry.npmjs.org/lumentui/-/lumentui-1.2.2.tgz"
  sha256 "5d87f9db45674f4927149f26efffd2322e9f893efef455d35d7d151f70527efc"
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
