:- module(dirs, []).
:- use_package([]).
:- multifile library_directory/1.
:- dynamic(library_directory/1). % (just declaration, dynamic not needed in this module)
library_directory('.'). % TODO: strange
