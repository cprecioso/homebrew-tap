cask "ibm-notifier" do
  version "3.2.3-b-135"
  sha256 "2b4d13398d68a2305574567f486c34204998641206cd21ff2c2d816e346ab257"

  url "https://github.com/IBM/mac-ibm-notifications/releases/download/v-#{version}/IBM.Notifier.zip"
  name "IBM Notifier"
  desc "macOS agent used to display custom notifications and alerts to the end user."
  homepage "https://github.com/IBM/mac-ibm-notifications"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
  end

  app "IBM Notifier.app", target: "/Applications/Utilities/IBM Notifier.app"
end
