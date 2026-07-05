class EngagerAgent < Formula
  desc "Local autonomous runner for Engager agent-led campaigns"
  homepage "https://github.com/slavayosome/engager-agent"
  url "https://registry.npmjs.org/engager-agent/-/engager-agent-0.4.0.tgz"
  sha256 "1573713bfdd99ae7afae74bbadc9d72af38dfdbeb0a767ad44a21c485e777421"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/engager-agent --version")
  end
end
