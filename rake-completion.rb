class RakeCompletion < Formula
  desc "Bash completion for Rake"
  homepage "https://gist.github.com/turadg/840663"
  url "https://gist.githubusercontent.com/turadg/840663/raw/e58c029d656f0705b2a77632d2c3e02ff0a5e825/rake.sh"
  version "1"
  sha256 "262bf355a0b1f3bf134b34baeecbf6857b326218dee5ab09d0aa22302bbd271a"

  bottle :unneeded

  def install
    bash_completion.install "rake.sh" => "rake"
  end

  test do
    assert_match "-F _rakecomplete",
      shell_output("source #{bash_completion}/rake && complete -p rake")
  end
end
