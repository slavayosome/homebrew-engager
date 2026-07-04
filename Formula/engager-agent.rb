class EngagerAgent < Formula
  desc "Local autonomous runner for Engager agent-led campaigns"
  homepage "https://github.com/slavayosome/engager-agent"
  url "https://registry.npmjs.org/engager-agent/-/engager-agent-0.1.1.tgz"
  sha256 "b6487c03c2da4aeea6604bf2d3960d630d25815e6a8789340ae1ce8c3d4eec2f"
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
