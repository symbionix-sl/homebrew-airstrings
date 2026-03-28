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
# Set up your project
airstrings profile add myproject --key ask_live_xxxxxxxxxxxx
airstrings init

# Manage strings locally
airstrings local set greeting en="Hello" it="Ciao" --section home
airstrings push

# Publish to CDN
airstrings publish
```

## Profile Management

```bash
airstrings profile add staging --key ask_test_xxx --url https://api-staging.airstrings.com
airstrings profile list              # shows all profiles, ✓ marks active
airstrings profile use staging       # switch active profile
airstrings profile show              # show active profile details
airstrings profile set-key NEW_KEY   # update API key on active profile
airstrings profile set-key NEW_KEY --profile staging   # update specific profile
airstrings profile remove old-profile
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
