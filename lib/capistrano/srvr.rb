namespace :srvr do
  desc <<-DESC
    Check servers' uptime
  DESC
  task :uptime do
    on roles(:all) do |s|
      info "Host #{host}: #{capture(:uptime)}"
    end
  end

  desc <<-DESC
    List known servers
  DESC
  task :list do
    on roles(:all) do |s|
      info s
    end
  end

  desc <<-DESC
    Copy any script and run it (i.e. bootstrap)
  DESC
  task :launch, [:script] do |t, args|
    if not File.exists?(args.script)
      fail "#{args.script} does not exist."
    end

    on roles(:all) do |host|
      upload! args.script, './'
      sudo "bash ./#{args.script}"
      rm "./#{args.script}"
    end
  end
end
