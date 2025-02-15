#compdef _op op


function _op {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '(-h --help)'{-h,--help}'[Get help for op.]' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "account:Manage your locally configured 1Password accounts"
      "completion:Generate shell completion information"
      "connect:Manage Connect instances and Connect tokens in your 1Password account"
      "document:Perform CRUD operations on Document items in your vaults"
      "events-api:Manage Events API integrations in your 1Password account"
      "group:Manage the groups in your 1Password account"
      "help:Get help for a command"
      "inject:Inject secrets into a config file"
      "item:Perform CRUD operations on the 1Password items in your vaults"
      "plugin:Manage the shell plugins you use to authenticate third-party CLIs"
      "read:Read a secret reference"
      "run:Pass secrets as environment variables to a process"
      "signin:Sign in to a 1Password account"
      "signout:Sign out of a 1Password account"
      "ssh:Manage SSH keys"
      "update:Check for and download updates."
      "user:Manage users within this 1Password account"
      "vault:Manage permissions and perform CRUD operations on your 1Password vaults"
      "whoami:Get information about a signed-in account"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  account)
    _op_account
    ;;
  completion)
    _op_completion
    ;;
  connect)
    _op_connect
    ;;
  document)
    _op_document
    ;;
  events-api)
    _op_events-api
    ;;
  group)
    _op_group
    ;;
  help)
    _op_help
    ;;
  inject)
    _op_inject
    ;;
  item)
    _op_item
    ;;
  plugin)
    _op_plugin
    ;;
  read)
    _op_read
    ;;
  run)
    _op_run
    ;;
  signin)
    _op_signin
    ;;
  signout)
    _op_signout
    ;;
  ssh)
    _op_ssh
    ;;
  update)
    _op_update
    ;;
  user)
    _op_user
    ;;
  vault)
    _op_vault
    ;;
  whoami)
    _op_whoami
    ;;
  esac
}


function _op_account {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "add:Add an account to sign in to for the first time"
      "forget:Remove a 1Password account from this device"
      "get:Get details about your account"
      "list:List users and accounts set up on this device"
      "use:Set the default 1Password account to use"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  add)
    _op_account_add
    ;;
  forget)
    _op_account_forget
    ;;
  get)
    _op_account_get
    ;;
  list)
    _op_account_list
    ;;
  use)
    _op_account_use
    ;;
  esac
}

function _op_account_add {
  _arguments \
    '--address[The sign-in address for your account.]:' \
    '--email[The email address associated with your account.]:' \
    '--raw[Only return the session token.]' \
    '--shorthand[Set a custom account shorthand for your account.]:' \
    '--signin[Immediately sign in to the added account.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_account_forget {
  _arguments \
    '--all[Forget all authenticated accounts.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_account_get {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_account_list {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_account_use {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_completion {
  _arguments \
    '(-h --help)'{-h,--help}'[help for completion]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_connect {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "group:Manage group access to Secrets Automation"
      "server:Manage Connect servers"
      "token:Manage Connect tokens"
      "vault:Manage connect server vault access"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  group)
    _op_connect_group
    ;;
  server)
    _op_connect_server
    ;;
  token)
    _op_connect_token
    ;;
  vault)
    _op_connect_vault
    ;;
  esac
}


function _op_connect_group {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Grant a group access to manage Secrets Automation"
      "revoke:Revoke a group's access to manage Secrets Automation"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_connect_group_grant
    ;;
  revoke)
    _op_connect_group_revoke
    ;;
  esac
}

function _op_connect_group_grant {
  _arguments \
    '--all-servers[Grant access to all current and future servers in the authenticated account.]' \
    '--group[The `group` to receive access.]:' \
    '--server[The `server` to grant access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_group_revoke {
  _arguments \
    '--all-servers[Revoke access to all current and future servers in the authenticated account.]' \
    '--group[The `group` to revoke access from.]:' \
    '--server[The `server` to revoke access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_connect_server {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Set up a Connect server"
      "delete:Remove a Connect server"
      "edit:Rename a Connect server"
      "get:Get a Connect server"
      "list:List Connect servers"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_connect_server_create
    ;;
  delete)
    _op_connect_server_delete
    ;;
  edit)
    _op_connect_server_edit
    ;;
  get)
    _op_connect_server_get
    ;;
  list)
    _op_connect_server_list
    ;;
  esac
}

function _op_connect_server_create {
  _arguments \
    '(-f --force)'{-f,--force}'[Do not prompt for confirmation when overwriting credential files.]' \
    '*--vaults[Grant the Connect server access to these vaults.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_server_delete {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_server_edit {
  _arguments \
    '--name[Change the server'\''s `name`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_server_get {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_server_list {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_connect_token {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Issue a token for a 1Password Connect server"
      "delete:Revoke a token for a Connect server"
      "edit:Rename a Connect token"
      "list:Get a list of tokens"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_connect_token_create
    ;;
  delete)
    _op_connect_token_delete
    ;;
  edit)
    _op_connect_token_edit
    ;;
  list)
    _op_connect_token_list
    ;;
  esac
}

function _op_connect_token_create {
  _arguments \
    '--expires-in[Set how long the Connect token is valid for in (s)econds, (m)inutes, or (h)ours.]:' \
    '--server[Issue a token for this server.]:' \
    '*--vault[Issue a token on these vaults.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_token_delete {
  _arguments \
    '--server[Only look for tokens for this 1Password Connect server.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_token_edit {
  _arguments \
    '--name[Change the token'\''s name.]:' \
    '--server[Only look for tokens for this 1Password Connect server.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_token_list {
  _arguments \
    '--server[Only list tokens for this Connect `server`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_connect_vault {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Grant a Connect server access to a vault"
      "revoke:Revoke a Connect server's access to a vault"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_connect_vault_grant
    ;;
  revoke)
    _op_connect_vault_revoke
    ;;
  esac
}

function _op_connect_vault_grant {
  _arguments \
    '--server[The server to be granted access.]:' \
    '--vault[The vault to grant access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_vault_revoke {
  _arguments \
    '--server[The `server` to revoke access from.]:' \
    '--vault[The `vault` to revoke a server'\''s access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_document {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a document item"
      "delete:Delete or archive a document item"
      "edit:Edit a document item"
      "get:Download a document"
      "list:Get a list of documents"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_document_create
    ;;
  delete)
    _op_document_delete
    ;;
  edit)
    _op_document_edit
    ;;
  get)
    _op_document_get
    ;;
  list)
    _op_document_list
    ;;
  esac
}

function _op_document_create {
  _arguments \
    '--file-name[Set the file'\''s `name`.]:' \
    '--tags[Set the tags to the specified (comma-separated) values.]:' \
    '--title[Set the document item'\''s `title`.]:' \
    '--vault[Save the document in this `vault`. Default: Private.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_document_delete {
  _arguments \
    '--archive[Move the document to the Archive.]' \
    '--vault[Delete the document in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_document_edit {
  _arguments \
    '--file-name[Set the file'\''s `name`.]:' \
    '--tags[Set the tags to the specified (comma-separated) values. An empty value will remove all tags.]:' \
    '--title[Set the document item'\''s `title`.]:' \
    '--vault[Look up document in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_document_get {
  _arguments \
    '--file-mode[Set filemode for the output file. It is ignored without the --out-file flag.]:' \
    '--force[Forcibly print an unintelligible document to an interactive terminal. If --out-file is specified, save the document to a file without prompting for confirmation.]' \
    '--include-archive[Include document items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.]' \
    '(-o --out-file)'{-o,--out-file}'[Save the document to the file `path` instead of stdout.]:' \
    '--vault[Look for the document in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_document_list {
  _arguments \
    '--include-archive[Include document items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.]' \
    '--vault[Only list documents in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_events-api {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Set up an integration with the Events API"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_events-api_create
    ;;
  esac
}

function _op_events-api_create {
  _arguments \
    '--expires-in[Set how the long the events-api token is valid for in (s)econds, (m)inutes, or (h)ours.]:' \
    '*--features[Set the comma-separated list of `features` the integration token can be used for. Options: '\''signinattempts'\'', '\''itemusages'\'', '\''auditevents'\''.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_group {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a group"
      "delete:Remove a group"
      "edit:Edit a group's name or description"
      "get:Get details about a group"
      "list:List groups"
      "user:Manage group membership"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_group_create
    ;;
  delete)
    _op_group_delete
    ;;
  edit)
    _op_group_edit
    ;;
  get)
    _op_group_get
    ;;
  list)
    _op_group_list
    ;;
  user)
    _op_group_user
    ;;
  esac
}

function _op_group_create {
  _arguments \
    '--description[Set the group'\''s description.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_delete {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_edit {
  _arguments \
    '--description[Change the group'\''s `description`.]:' \
    '--name[Change the group'\''s `name`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_get {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_list {
  _arguments \
    '--user[List groups that a `user` belongs to.]:' \
    '--vault[List groups that have direct access to a `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_group_user {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Add a user to a group"
      "list:Retrieve users that belong to a group"
      "revoke:Remove a user from a group"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_group_user_grant
    ;;
  list)
    _op_group_user_list
    ;;
  revoke)
    _op_group_user_revoke
    ;;
  esac
}

function _op_group_user_grant {
  _arguments \
    '--group[Specify the group to add the user to.]:' \
    '--role[Specify the user'\''s role as a member or manager. Default: member.]:' \
    '--user[Specify the user to add to the group.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_user_list {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_user_revoke {
  _arguments \
    '--group[Specify the group to remove the user from.]:' \
    '--user[Specify the user to remove from the group.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_help {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_inject {
  _arguments \
    '--file-mode[Set filemode for the output file. It is ignored without the --out-file flag.]:' \
    '(-f --force)'{-f,--force}'[Do not prompt for confirmation.]' \
    '(-i --in-file)'{-i,--in-file}'[The filename of a template file to inject.]:' \
    '(-o --out-file)'{-o,--out-file}'[Write the injected template to a file instead of stdout.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_item {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create an item"
      "delete:Delete or archive an item"
      "edit:Edit an item's details"
      "get:Get an item's details"
      "list:List items"
      "move:Move an item between vaults"
      "share:Share an item"
      "template:Manage templates"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_item_create
    ;;
  delete)
    _op_item_delete
    ;;
  edit)
    _op_item_edit
    ;;
  get)
    _op_item_get
    ;;
  list)
    _op_item_list
    ;;
  move)
    _op_item_move
    ;;
  share)
    _op_item_share
    ;;
  template)
    _op_item_template
    ;;
  esac
}

function _op_item_create {
  _arguments \
    '*--autofill-urls[Set the `URL`s 1Password uses to autofill a Login or Password item'\''s details.]:' \
    '--category[Set the item'\''s `category`.]:' \
    '--dry-run[Test the command and output a preview of the resulting item.]' \
    '--favorite[Add item to favorites.]' \
    '--generate-password[Add a randomly-generated password to a Login or Password item.]' \
    '--ssh-generate-key[The type of SSH key to create: Ed25519 or RSA. For RSA, specify 2048, 3072, or 4096 (default) bits. Possible values: '\''ed25519'\'', '\''rsa'\'', '\''rsa2048'\'', '\''rsa3072'\'', '\''rsa4096'\''.]:' \
    '--tags[Set the tags to the specified (comma-separated) values.]:' \
    '--template[Specify the file path to read an item template from.]:' \
    '--title[Set the item'\''s `title`.]:' \
    '--vault[Save the item in this `vault`. Default: Private.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_delete {
  _arguments \
    '--archive[Move the item to the Archive.]' \
    '--vault[Look for the item in this vault.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_edit {
  _arguments \
    '*--autofill-urls[Set the `URL`s 1Password uses to autofill the item'\''s details.]:' \
    '--dry-run[Perform a dry run of the command and output a preview of the resulting item.]' \
    '--favorite[Whether this item is a favorite item. Options: true, false]' \
    '--generate-password[Give the item a randomly generated password.]' \
    '--tags[Set the tags to the specified (comma-separated) values. An empty value will remove all tags.]:' \
    '--template[Specify the filepath to read an item template from.]:' \
    '--title[Set the item'\''s `title`.]:' \
    '--vault[Edit the item in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_get {
  _arguments \
    '*--autofill-urls[Get autofill URLs by field label. Duplicate labels return an error.]:' \
    '*--fields[Return data from specific fields. Use '\''label='\'' to get the field by name or '\''type='\'' to filter fields by type. Specify multiple in a comma-separated list.]:' \
    '--include-archive[Include items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.]' \
    '--otp[Output the primary one-time password for this item.]' \
    '--reveal[Don'\''t conceal the private SSH key when using human-readable output.]' \
    '--share-link[Get a shareable link for the item.]' \
    '--vault[Look for the item in this vault.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_list {
  _arguments \
    '*--categories[Only list items in these `categories` (comma-separated).]:' \
    '--favorite[Only list favorite items]' \
    '--include-archive[Include items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.]' \
    '--long[Output a more detailed item list.]' \
    '*--tags[Only list items with these `tags` (comma-separated).]:' \
    '--vault[Only list items in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_move {
  _arguments \
    '--current-vault[Vault where the item is currently saved.]:' \
    '--destination-vault[The vault you want to move the item to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_share {
  _arguments \
    '*--emails[Email addresses to share with.]:' \
    '--expiry[Link expiring after the specified duration in (s)econds, (m)inutes, or (h)ours (default 7h).]:' \
    '--vault[Look for the item in this vault.]:' \
    '--view-once[Expire link after a single view.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_item_template {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "get:Get an item template"
      "list:Get a list of templates"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  get)
    _op_item_template_get
    ;;
  list)
    _op_item_template_list
    ;;
  esac
}

function _op_item_template_get {
  _arguments \
    '--file-mode[Set filemode for the output file. It is ignored without the --out-file flag.]:' \
    '(-f --force)'{-f,--force}'[Do not prompt for confirmation.]' \
    '(-o --out-file)'{-o,--out-file}'[Write the template to a file instead of stdout.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_template_list {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_plugin {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "clear:Clear shell plugin configuration"
      "credential:Manage credentials for shell plugins"
      "init:Configure a shell plugin"
      "inspect:Inspect your existing shell plugin configurations"
      "list:List all available shell plugins"
      "run:Provision credentials from 1Password and run this command"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  clear)
    _op_plugin_clear
    ;;
  credential)
    _op_plugin_credential
    ;;
  init)
    _op_plugin_init
    ;;
  inspect)
    _op_plugin_inspect
    ;;
  list)
    _op_plugin_list
    ;;
  run)
    _op_plugin_run
    ;;
  esac
}

function _op_plugin_clear {
  _arguments \
    '--all[Clear all configurations for this plugin that apply to this directory and/or terminal session, including the global default.]' \
    '(-f --force)'{-f,--force}'[Apply immediately without asking for confirmation.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_plugin_credential {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "import:Import credentials for a shell plugin"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  import)
    _op_plugin_credential_import
    ;;
  esac
}

function _op_plugin_credential_import {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_plugin_init {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_plugin_inspect {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_plugin_list {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_plugin_run {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_read {
  _arguments \
    '--file-mode[Set filemode for the output file. It is ignored without the --out-file flag.]:' \
    '(-f --force)'{-f,--force}'[Do not prompt for confirmation.]' \
    '(-n --no-newline)'{-n,--no-newline}'[Do not print a new line after the secret.]' \
    '(-o --out-file)'{-o,--out-file}'[Write the secret to a file instead of stdout.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_run {
  _arguments \
    '*--env-file[Enable Dotenv integration with specific Dotenv files to parse. For example: --env-file=.env.]:' \
    '--no-masking[Disable masking of secrets on stdout and stderr.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_signin {
  _arguments \
    '(-f --force)'{-f,--force}'[Ignore warnings and print raw output from this command.]' \
    '--raw[Only return the session token.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_signout {
  _arguments \
    '--all[Sign out of all signed-in accounts.]' \
    '--forget[Remove the details for a 1Password account from this device.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_ssh {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "generate:Generate an SSH key and save it in 1Password"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  generate)
    _op_ssh_generate
    ;;
  esac
}

function _op_ssh_generate {
  _arguments \
    '--bits[The key size to use when generating the key using RSA, cannot be used with Ed25519. Supported values are 2048, 3072 or 4096.]:' \
    '--title[The title of the item containing the SSH Key. ]:' \
    '--type[The algorithm to use to generate the key - either Ed25519 or RSA.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_update {
  _arguments \
    '--channel[Look for updates from a specific channel. allowed: stable, beta]:' \
    '--directory[Download the update to this '\'''\''path'\'''\''.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_user {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "confirm:Confirm a user"
      "delete:Remove a user and all their data from the account"
      "edit:Edit a user's name or Travel Mode status"
      "get:Get details about a user"
      "list:List users"
      "provision:Provision a user in the authenticated account"
      "reactivate:Reactivate a suspended user"
      "suspend:Suspend a user"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  confirm)
    _op_user_confirm
    ;;
  delete)
    _op_user_delete
    ;;
  edit)
    _op_user_edit
    ;;
  get)
    _op_user_get
    ;;
  list)
    _op_user_list
    ;;
  provision)
    _op_user_provision
    ;;
  reactivate)
    _op_user_reactivate
    ;;
  suspend)
    _op_user_suspend
    ;;
  esac
}

function _op_user_confirm {
  _arguments \
    '--all[Confirm all unconfirmed users.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_delete {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_edit {
  _arguments \
    '--name[Set the user'\''s name.]:' \
    '--travel-mode[Turn Travel Mode on or off for the user.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_get {
  _arguments \
    '--fingerprint[Get the user'\''s public key fingerprint.]' \
    '--me[Get the authenticated user'\''s details.]' \
    '--public-key[Get the user'\''s public key.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_list {
  _arguments \
    '--group[List users who belong to a `group`.]:' \
    '--vault[List users who have direct access to `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_provision {
  _arguments \
    '--email[Provide the user'\''s email address.]:' \
    '--language[Provide the user'\''s account language.]:' \
    '--name[Provide the user'\''s name.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_reactivate {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_suspend {
  _arguments \
    '--deauthorize-devices-after[Deauthorize the user'\''s devices after a time (rounded down to seconds).]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_vault {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a new vault"
      "delete:Remove a vault"
      "edit:Edit a vault's name, description, icon, or Travel Mode status"
      "get:Get details about a vault"
      "group:Manage group vault access"
      "list:List all vaults in the account"
      "user:Manage user vault access"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_vault_create
    ;;
  delete)
    _op_vault_delete
    ;;
  edit)
    _op_vault_edit
    ;;
  get)
    _op_vault_get
    ;;
  group)
    _op_vault_group
    ;;
  list)
    _op_vault_list
    ;;
  user)
    _op_vault_user
    ;;
  esac
}

function _op_vault_create {
  _arguments \
    '--allow-admins-to-manage[Set whether administrators can manage the vault. If not provided, the default policy for the account applies.]:' \
    '--description[Set the group'\''s `description`.]:' \
    '--icon[Set the vault icon.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_delete {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_edit {
  _arguments \
    '--description[Change the vault'\''s `description`.]:' \
    '--icon[Change the vault'\''s `icon`.]:' \
    '--name[Change the vault'\''s `name`.]:' \
    '--travel-mode[Turn Travel Mode on or off for the vault. Only vaults with Travel Mode enabled will be accessible while a user has Travel Mode turned on.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_get {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_vault_group {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Grant a group permissions to a vault"
      "list:List all the groups that have access to the given vault"
      "revoke:Revoke a portion or the entire access of a group to a vault"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_vault_group_grant
    ;;
  list)
    _op_vault_group_list
    ;;
  revoke)
    _op_vault_group_revoke
    ;;
  esac
}

function _op_vault_group_grant {
  _arguments \
    '--group[The `group` to receive access.]:' \
    '--no-input[Do not prompt for `input` on interactive terminal.]' \
    '--permissions[The `permissions` to grant to the group.]:' \
    '--vault[The `vault` to grant group permissions to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_group_list {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_group_revoke {
  _arguments \
    '--group[The `group` to revoke access from.]:' \
    '--no-input[Do not prompt for `input` on interactive terminal.]' \
    '--permissions[The `permissions` to revoke from the group.]:' \
    '--vault[The `vault` to revoke access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_list {
  _arguments \
    '--group[List vaults a group has access to.]:' \
    '--user[List vaults that a given user has access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_vault_user {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Grant a user access to a vault"
      "list:List all users with access to the vault and their permissions"
      "revoke:Revoke a portion or the entire access of a user to a vault"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_vault_user_grant
    ;;
  list)
    _op_vault_user_list
    ;;
  revoke)
    _op_vault_user_revoke
    ;;
  esac
}

function _op_vault_user_grant {
  _arguments \
    '--no-input[Do not prompt for `input` on interactive terminal.]' \
    '--permissions[The `permissions` to grant to the user.]:' \
    '--user[The `user` to receive access.]:' \
    '--vault[The `vault` to grant access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_user_list {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_user_revoke {
  _arguments \
    '--no-input[Do not prompt for `input` on interactive terminal.]' \
    '--permissions[The `permissions` to revoke from the user.]:' \
    '--user[The `user` to revoke access from.]:' \
    '--vault[The `vault` to revoke access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_whoami {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

