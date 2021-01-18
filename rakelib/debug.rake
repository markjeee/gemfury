begin
  require 'docker_task'

  DockerTask.load_containers

  namespace :debug do
    desc 'Bash to ruby19 environment'
    task :ruby19 do
      c = DockerTask.containers['gemfury-cli.ruby19']
      c.pull
      c.runi
    end

    desc 'Bash to ruby20 environment'
    task :ruby20 do
      c = DockerTask.containers['gemfury-cli.ruby20']
      c.pull
      c.runi
    end
  end


rescue LoadError

end
