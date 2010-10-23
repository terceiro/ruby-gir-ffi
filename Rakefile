# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

load 'tasks/setup.rb'

ensure_in_path 'lib'
require 'gir_ffi'

task :default => 'test:run'

PROJ.name = 'gir_ffi'
PROJ.authors = 'Matijs van Zuijlen'
PROJ.email = 'matijs@matijs.net'
PROJ.url = 'http://www.github.com/mvz/ruby-gir-ffi'
PROJ.version = GirFFI::VERSION
PROJ.readme_file = 'README.rdoc'

PROJ.exclude << ["^tmp/", "\\.swp$", "^\\.gitignore$", "^\\.autotest$"]

# EOF
