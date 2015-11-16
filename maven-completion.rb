class MavenCompletion < Formula
  desc "Bash completion for Maven"
  homepage "https://github.com/juven/maven-bash-completion"
  url "https://github.com/juven/maven-bash-completion.git",
    :revision => "42e754fec6c29835acba8b0a5f02e483ad34201c"
  version "20150510"

  head "https://github.com/juven/maven-bash-completion.git"

  bottle :unneeded

  def install
    bash_completion.install "bash_completion.bash" => "maven"
  end

  test do
    assert_match "-F _mvn",
      shell_output("source #{bash_completion}/maven && complete -p mvn")
  end
end
