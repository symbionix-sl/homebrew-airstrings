# Homebrew Tap for AirStrings CLI

Official Homebrew tap for the [AirStrings](https://airstrings.com) CLI and MCP server.

## Install

```bash
brew tap symbionix-sl/airstrings
brew install airstrings
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

## MCP Server

Connect AI assistants to AirStrings:

```json
{
  "mcpServers": {
    "airstrings": {
      "command": "airstrings-mcp"
    }
  }
}
```

After `brew install`, `airstrings-mcp` is in your PATH — no absolute path needed.

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
