class EngagerAgent < Formula
  desc "Local autonomous runner for Engager agent-led campaigns"
  homepage "https://github.com/slavayosome/engager-agent"
  url "https://registry.npmjs.org/engager-agent/-/engager-agent-0.6.0.tgz"
  sha256 "be177d1a6330707dbe9ca22ab73368dfbf764f00fefccd117e20dbcc664d5de2"
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
