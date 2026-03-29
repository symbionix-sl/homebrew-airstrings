# Homebrew Tap for AirStrings CLI

Official Homebrew tap for the [AirStrings](https://airstrings.com) CLI and MCP server.

## Install

```bash
brew install symbionix-sl/airstrings/airstrings
```

This installs two binaries:

- `airstrings` — CLI for managing strings, locales, bundles, and publishing
- `airstrings-mcp` — MCP server for AI assistant integration (Claude, Cursor, etc.)

## Quick Start

```bash
# Log in with your API key
airstrings login ask_live_xxxxxxxxxxxx

# Initialize workspace in your project
airstrings init

# Manage strings locally
airstrings local set greeting en="Hello" it="Ciao" --section home
airstrings push

# Publish to CDN
airstrings publish
```

## Commands

### Auth

```bash
airstrings login <api-key> [--url <base-url>]    # authenticate and store credentials
airstrings logout                                 # remove current credential
airstrings status                                 # show active project, env, and key
```

### Navigation

```bash
airstrings project                               # show current project info
airstrings project use <name>                    # switch active project
airstrings env                                   # list environments (✓ = active)
airstrings env use <name>                        # switch active environment
airstrings locales                               # list locales with string counts

# Shorthands (chainable)
airstrings -p -u <project>                       # switch project
airstrings -e -u <env>                           # switch environment
airstrings -p -u <project> -e -u <env>           # switch both
```

### Strings

```bash
airstrings strings list [--locale <loc>] [--section <id>] [--limit <n>]
airstrings strings get <key>
airstrings strings set <key> <locale>=<value> [<locale>=<value>...]
airstrings strings create <key> <locale>=<value> [--format text|icu] [--section <id>]
airstrings strings delete <key>
```

### Sections

```bash
airstrings sections list
airstrings sections create <name> [--description <desc>]
airstrings sections delete <id>
```

### Bundles & Publishing

```bash
airstrings bundles                               # list published bundles
airstrings publish [locale...]                   # publish bundles (all locales if none specified)
```

### Import

```bash
airstrings import csv <file>                     # import strings from CSV file
airstrings import status <id>                    # check import status
```

### Workspace

```bash
airstrings init                                  # initialize local workspace
airstrings local set <key> <locale>=<value> [--format text|icu] [--section <name>]
airstrings local rm <key> [--locale <loc>] [--section <name>]
airstrings local ls [--section <name>]           # list local strings
airstrings push [--section <name>]               # push local strings to API
airstrings pull [--section <name>]               # pull remote strings to local
```

### MCP Server

Connect AI assistants to AirStrings with one command:

```bash
airstrings mcp install                           # for Claude Code
airstrings mcp install --claude-desktop          # for Claude Desktop
airstrings mcp uninstall                         # remove MCP server
airstrings mcp status                            # check installation status
```

Restart Claude and the tools are available. No manual JSON editing needed.

### Flags

```bash
--json                                           # output as JSON (works with any command)
```

## Updating

```bash
brew update
brew upgrade airstrings
```

## Links

- [AirStrings](https://airstrings.com) — Remote string management platform
- [Documentation](https://docs.airstrings.com)

## License

Proprietary. Copyright Symbionix SL.
