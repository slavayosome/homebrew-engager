class EngagerAgent < Formula
  desc "Local autonomous runner for Engager agent-led campaigns"
  homepage "https://github.com/slavayosome/engager-agent"
  url "https://registry.npmjs.org/engager-agent/-/engager-agent-0.3.2.tgz"
  sha256 "c801923e78bf0f36a119a0e941ea0ed6e4e43497e5f63ed0c5055c0c5971b67d"
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
