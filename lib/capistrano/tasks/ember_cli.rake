namespace :ember_cli do

  desc <<-DESC
        Build the current Ember CLI project. The install command is executed \
        with the --environment flag set to the current stage, and the \
        --output-path set to 'dist/'.

        You can override any of these defaults by setting the variables shown below.

          set :ember_cli_roles, :web
          set :ember_cli_binary, './node_modules/ember-cli/bin/ember'
          set :ember_cli_output_path, 'dist/'
          set :ember_cli_target_path, nil
          set :ember_cli_env, nil
    DESC
  task :build do
    on roles fetch(:ember_cli_roles) do
      within fetch(:ember_cli_target_path, release_path) do
        execute(
          fetch(:ember_cli_binary),
          :build,
          "--environment", fetch(:ember_cli_env, fetch(:stage)),
          "--output-path", fetch(:ember_cli_output_path),
        )
      end
    end
  end

  before 'deploy:updated', 'ember_cli:build'
end

namespace :load do
  task :defaults do
    set :ember_cli_roles, :web
    set :ember_cli_binary, './node_modules/ember-cli/bin/ember'
    set :ember_cli_output_path, 'dist/'
  end
end
