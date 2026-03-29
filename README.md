# Homebrew Tap for AirStrings CLI

Official Homebrew tap for the [AirStrings](https://airstrings.com) CLI and MCP server.

## Install

```bash
brew install symbionix-sl/airstrings/airstrings
```

This installs two binaries:

- `airstrings` — CLI for managing strings, locales, bundles, and publishing
- `airstrings-mcp` — MCP server for AI assistant integration (Claude, Cursor, etc.)

## Usage

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

## Navigation

```bash
airstrings status                    # show active project, env, and key
airstrings env                       # list environments (✓ = active)
airstrings env use staging           # switch environment
airstrings project use MyProject     # switch project

# Shorthands (chainable)
airstrings -e -u staging             # switch env
airstrings -p -u MyProject           # switch project
airstrings -p -u MyProject -e -u staging   # switch both
```

## MCP Server

Connect AI assistants to AirStrings with one command:

```bash
airstrings mcp install                  # for Claude Code
airstrings mcp install --claude-desktop # for Claude Desktop
airstrings mcp status                   # check installation
```

Restart Claude and the tools are available. No manual JSON editing needed.

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
