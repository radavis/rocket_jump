require 'rake'

task :run do
  pids = [
    spawn("cd server && rails s"),
    spawn("cd frontend && ember server"),
  ]

  trap "INT" do
    Process.kill "INT", *pids
    exit 1
  end

  loop do
    sleep 1
  end
end
