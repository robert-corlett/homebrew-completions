class DockerCompletion < Formula
  desc "Bash, Zsh and Fish completion for Docker"
  homepage "https://github.com/docker/docker"
  url "https://github.com/docker/docker/archive/v1.8.1.tar.gz"
  sha256 "7f22e88a994dc1bc143f87215de01ccd902450e6e8d747467d042a56db792b03"
  head "https://github.com/docker/docker"

  conflicts_with "docker",
    :because => "docker already includes these completion scripts"

  bottle :unneeded

  def install
    bash_completion.install "contrib/completion/bash/docker"
    fish_completion.install "contrib/completion/fish/docker.fish"
    zsh_completion.install "contrib/completion/zsh/_docker"
  end

  test do
    assert_match "-F _docker",
      shell_output("source #{bash_completion}/docker && complete -p docker")
  end
end
