PROJECT = zotonic

ERLC_OPTS = +debug_info +warn_export_all +warn_export_vars +warn_shadow_vars +warn_obsolete_guard +'{parse_transform, lager_transform}'

PLT_APPS = hipe sasl mnesia crypto compiler syntax_tools
DIALYZER_OPTS = -Werror_handling -Wrace_conditions -Wunmatched_returns | fgrep -v -f ./dialyzer.ignore-warning

DEPS_DIR = deps
DEPS = lager bert dh_date eiconv gen_smtp mimetypes mochiweb ua_classifier webzmachine z_stdlib folsom

dep_lager = https://github.com/goldensurfer/lager 2.0.0b
dep_bert = https://github.com/goldensurfer/bert.erl 1.2
dep_dh_date = https://github.com/goldensurfer/dh_date 1.2
dep_eiconv = https://github.com/goldensurfer/eiconv 1.2
dep_gen_smtp = https://github.com/goldensurfer/gen_smtp 1.2
dep_mimetypes = https://github.com/goldensurfer/mimetypes 1.2
dep_mochiweb = https://github.com/goldensurfer/mochiweb v2.9.0
dep_ua_classifier = https://github.com/goldensurfer/ua_classifier 1.2
dep_webzmachine = https://github.com/goldensurfer/webzmachine 1.2
dep_z_stdlib = https://github.com/goldensurfer/z_stdlib 1.2
dep_folsom = https://github.com/goldensurfer/folsom 1.3

include erlang.mk
