local org = require 'orgmode'

org.setup_ts_grammar()
org.setup {
  org_agenda_files = { '~/Dropbox/org/*', '~/my-orgs/**/*' },
  org_default_notes_file = '~/Dropbox/org/refile.org',
}
