# 這個檔案由 tom19830924/AgentMux 的 CI 自動產生，請勿手動編輯。
class Am < Formula
  desc "Per-project AI agent gateway switcher"
  homepage "https://github.com/tom19830924/AgentMux"
  url "https://github.com/tom19830924/AgentMux/releases/download/v0.1.0/am-0.1.0-macos-universal.tar.gz"
  sha256 "43fd504b8b3c3c2c5dd16f107fef20274162f8db2b7f3c993ba24b3be42a0b80"
  version "0.1.0"

  depends_on macos: :ventura

  def install
    bin.install "am"
  end

  test do
    assert_match "am", shell_output("#{bin}/am --help")
  end
end
