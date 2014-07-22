class Specinfra::Command::Linux::Base::LxcContainer < Specinfra::Command::Base::LxcContainer
  def check_exists(container)
    "lxc-ls -1 | grep -w #{escape(container)}"
  end

  def check_is_running(container)
    "lxc-info -n #{escape(container)} -t RUNNING"
  end
end