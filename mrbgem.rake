MRuby::Gem::Specification.new('mruby-pax') do |spec|
  spec.license = 'All rights reserved to CloudWalk Inc.'
  spec.authors = 'CloudWalk Inc.'
  spec.version = "1.3.0"

  spec.cc.include_paths << "#{build.root}/src"

  # Add compile flags
  # spec.cc.flags << ''

  # Add cflags to all
  # spec.mruby.cc.flags << '-g'

  # Add libraries
  # spec.linker.libraries << 'external_lib'

  # Default build files
  spec.rbfiles = Dir.glob("#{dir}/mrblib/*.rb")
  # spec.objs = Dir.glob("#{dir}/src/*.{c,cpp,m,asm,S}").map { |f| objfile(f.relative_path_from(dir).pathmap("#{build_dir}/%X")) }
  # spec.test_rbfiles = Dir.glob("#{dir}/test/*.rb")
  # spec.test_objs = Dir.glob("#{dir}/test/*.{c,cpp,m,asm,S}").map { |f| objfile(f.relative_path_from(dir).pathmap("#{build_dir}/%X")) }
  # spec.test_preload = 'test/assert.rb'

  # Values accessible as TEST_ARGS inside test scripts
  # spec.test_args = {'tmp_dir' => Dir::tmpdir}
  spec.add_dependency 'mruby-pax-network'
  spec.add_dependency 'mruby-io'
  spec.add_dependency 'mruby-time'
end