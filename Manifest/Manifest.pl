:- bundle(lpmake).
version('1.0').
depends([
    core
]).
alias_paths([
    library = 'lib'
]).
lib('lib').
cmd('cmds/lpmake').
manual('lpmake', [main='doc/SETTINGS.pl']).
