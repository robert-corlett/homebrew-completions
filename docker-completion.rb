class DockerCompletion < Formula
  desc "Bash, Zsh and Fish completion for Docker"
  homepage "https://github.com/docker/docker"
  url "https://github.com/docker/docker/archive/v1.9.0.tar.gz"
  sha256 "1c06baea61971a711f9e510800fb4de5e0d8a6560963cfdc891e0037b40dc974"
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
      shell_output("bash -c 'source #{bash_completion}/docker && complete -p docker'")
  end
end
