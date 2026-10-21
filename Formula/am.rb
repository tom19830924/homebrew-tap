# 這個檔案由 tom19830924/AgentMux 的 CI 自動產生，請勿手動編輯。
class Am < Formula
  desc "Per-project AI agent gateway switcher"
  homepage "https://github.com/tom19830924/AgentMux"
  url "https://github.com/tom19830924/AgentMux/releases/download/v0.1.2/am-0.1.2-macos-universal.tar.gz"
  sha256 "95fd5d7639620fb5bc54a04f0899fba9a59cc05f1774aa7224ca478331cd038f"
  version "0.1.2"

  depends_on macos: :ventura

  def install
    bin.install "am"
  end

  test do
    assert_match "am", shell_output("#{bin}/am --help")
  end
end
