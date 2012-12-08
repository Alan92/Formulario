require "bundler/gem_tasks"
require "rake/clean"
CLEAN.include('*.swp')
CLOBBER.include('pkg/*.gem')
task :test do
  sh "ruby -Ilib test/tc_formulario.rb"
end

desc "Run rspec for tictactoe"
task :spec do
sh "rspec -Ilib spec/formulario_spec.rb --format documentation"
end

desc "desistalar geme"
task :unistall do
sh "gem uninstall ull-etsii-alu4214-quiz"
end

desc "Hide gem tictactoe"
task :unpublish, :version do |t,args|
sh "gem yank ull-etsii-alu4214-quiz -v #{args[:version]}"
end

desc " Show all published versions of gem"
task :published do
sh "gem list ull-etsii-alu4214-quiz --remote --all"
end


