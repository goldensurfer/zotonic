PROJECT = zotonic

ERLC_OPTS = +debug_info +warn_export_all +warn_export_vars +warn_shadow_vars +warn_obsolete_guard +'{parse_transform, lager_transform}'

PLT_APPS = hipe sasl mnesia crypto compiler syntax_tools
DIALYZER_OPTS = -Werror_handling -Wrace_conditions -Wunmatched_returns | fgrep -v -f ./dialyzer.ignore-warning

DEPS_DIR = ../../deps
DEPS = lager riak_err ibrowse erldis oauth getopt

dep_lager = https://github.com/basho/lager.git 2.0.0
dep_bert = git://github.com/zotonic/bert.erl.git master
dep_dh_date = git://github.com/zotonic/dh_date.git master
dep_eiconv = git://github.com/zotonic/eiconv.git master
dep_gen_smtp = git://github.com/zotonic/gen_smtp.git master
dep_mimetypes = git://github.com/zotonic/mimetypes.git master
dep_mochiweb = git://github.com/zotonic/mochiweb.git master
dep_ua_classifier = git://github.com/zotonic/ua_classifier.git master
dep_webzmachine = https://github.com/goldensurfer/webzmachine master
dep_z_stdlib = git://github.com/zotonic/z_stdlib.git master
dep_folsom = git://github.com/boundary/folsom.git master

include ../../erlang.mk
