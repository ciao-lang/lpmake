:- module(_, [], [lpdoclib(doccfg)]).

:- include(ciao_docsrc(common/'LPDOCCOMMON')).

filepath := at_bundle(lpmake, 'cmds').
filepath := at_bundle(lpmake, '.'). % (for examples/)
filepath := ~ciaofilepath_common.

doc_structure := [
  'lpmake'-[
    'make/make_doc',
    'make/make_rt'
  ]
].

%doc_mainopts := no_patches.
doc_mainopts := _ :- fail. % Allow patches in main changelog (those are the release notes)
% TODO: Added no_propuses because texindex breaks with very large
%       indices (due to internal, maybe arbitrary, limitations) --JF.
doc_compopts := no_isoline|no_engmods|propmods|no_changelog|no_propuses.

bibfile := ~ciao_bibfile.

% TODO: port this manual
allow_markdown := no.
syntax_highlight := no.
