# 這個檔案由 tom19830924/AgentMux 的 CI 自動產生，請勿手動編輯。
class Am < Formula
  desc "Per-project AI agent gateway switcher"
  homepage "https://github.com/tom19830924/AgentMux"
  url "https://github.com/tom19830924/AgentMux/releases/download/v0.1.1/am-0.1.1-macos-universal.tar.gz"
  sha256 "13693011b80c3125d4d52ae8ff4559d1718ee9c09fc7bfbe513b92f0aeb78a92"
  version "0.1.1"

  depends_on macos: :ventura

  def install
    bin.install "am"
  end

  test do
    assert_match "am", shell_output("#{bin}/am --help")
  end
end
