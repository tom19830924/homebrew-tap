# 這個檔案由 tom19830924/AgentMux 的 CI 自動產生，請勿手動編輯。
class Am < Formula
  desc "Per-project AI agent gateway switcher"
  homepage "https://github.com/tom19830924/AgentMux"
  url "https://github.com/tom19830924/AgentMux/releases/download/v0.1.3/am-0.1.3-macos-universal.tar.gz"
  sha256 "315e92cb8e311acb98ddcc1abd1950f54bcf1bc2badebfb6d126fb806645b731"
  version "0.1.3"

  depends_on macos: :ventura

  def install
    bin.install "am"
  end

  test do
    assert_match "am", shell_output("#{bin}/am --help")
  end
end
