class EngagerAgent < Formula
  desc "Local autonomous runner for Engager agent-led campaigns"
  homepage "https://github.com/slavayosome/engager-agent"
  url "https://registry.npmjs.org/engager-agent/-/engager-agent-0.2.1.tgz"
  sha256 "13922ded62b9a808c833e712a604c6f382fa748b981af5c2ba1d631ba9a6807b"
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
