## GitHub Copilot Chat

- Extension: 0.43.0 (prod)
- VS Code: 1.115.0 (41dd792b5e652393e7787322889ed5fdc58bd75b)
- OS: win32 10.0.26200 x64
- GitHub Account: MikeHacksAI

## Network

User Settings:
```json
  "http.systemCertificatesNode": true,
  "github.copilot.advanced.debug.useElectronFetcher": true,
  "github.copilot.advanced.debug.useNodeFetcher": false,
  "github.copilot.advanced.debug.useNodeFetchFetcher": true
```

Connecting to https://api.github.com:
- DNS ipv4 Lookup: 140.82.112.5 (24 ms)
- DNS ipv6 Lookup: Error (16 ms): getaddrinfo ENOTFOUND api.github.com
- Proxy URL: None (1 ms)
- Electron fetch (configured): HTTP 200 (197 ms)
- Node.js https: HTTP 200 (170 ms)
- Node.js fetch: HTTP 200 (160 ms)

Connecting to https://api.individual.githubcopilot.com/_ping:
- DNS ipv4 Lookup: 140.82.112.22 (37 ms)
- DNS ipv6 Lookup: Error (37 ms): getaddrinfo ENOTFOUND api.individual.githubcopilot.com
- Proxy URL: None (0 ms)
- Electron fetch (configured): HTTP 200 (189 ms)
- Node.js https: HTTP 200 (167 ms)
- Node.js fetch: HTTP 200 (193 ms)

Connecting to https://proxy.individual.githubcopilot.com/_ping:
- DNS ipv4 Lookup: 138.91.182.224 (18 ms)
- DNS ipv6 Lookup: Error (15 ms): getaddrinfo ENOTFOUND proxy.individual.githubcopilot.com
- Proxy URL: None (1 ms)
- Electron fetch (configured): HTTP 200 (256 ms)
- Node.js https: HTTP 200 (246 ms)
- Node.js fetch: HTTP 200 (251 ms)

Connecting to https://mobile.events.data.microsoft.com: HTTP 404 (31 ms)
Connecting to https://dc.services.visualstudio.com: HTTP 404 (302 ms)
Connecting to https://copilot-telemetry.githubusercontent.com/_ping: HTTP 200 (250 ms)
Connecting to https://telemetry.individual.githubcopilot.com/_ping: HTTP 200 (179 ms)
Connecting to https://default.exp-tas.com: HTTP 400 (121 ms)

Number of system certificates: 140

## Documentation

In corporate networks: [Troubleshooting firewall settings for GitHub Copilot](https://docs.github.com/en/copilot/troubleshooting-github-copilot/troubleshooting-firewall-settings-for-github-copilot).