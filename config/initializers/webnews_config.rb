# The news server name, or 'localhost' if using SSH tunneling
NEWS_SERVER = 'news.csh.rit.edu'

# Users at this domain get the Posts/Profile/Wiki link treatment
LOCAL_EMAIL_DOMAIN = '@csh.rit.edu'

# URL prefixes for the Profile and Wiki links
PROFILES_URL = 'https://members.csh.rit.edu/profiles/members/'
WIKI_URL = 'https://wiki.csh.rit.edu/wiki/'
WIKI_USER_URL = WIKI_URL + 'User:'

# Server variables that provide the user's username and real name
ENV_USERNAME = 'WEBAUTH_USER'
ENV_REALNAME = 'WEBAUTH_LDAP_CN'

# Date formats (SHORT is used in the dashboard feeds)
DATE_FORMAT = '%-m/%-d/%Y %-I:%M%P'
SHORT_DATE_FORMAT = '%-m/%-d %-I:%M%P'

# Newsgroups matching this regex are excluded from the Recent Activity feed
RECENT_EXCLUDE = /^(control|csh\.lists|csh\.test)/

# Default and maximum values for the 'limit' parameter to Posts#index
INDEX_DEF_LIMIT_1 = 8  # Default limit when the request is only in one direction (older or newer)
INDEX_DEF_LIMIT_2 = 4  # Default limit when the request is for both directions (older and newer)
INDEX_MAX_LIMIT = 20   # Maximum limit that can be requested with the API

# Set true if the 'whenever' cron jobs have been installed for this instance
CRON_ENABLED = false

# Set true to disable authentication and auto-login as a testing admin user
DEV_MODE_ENABLED = false