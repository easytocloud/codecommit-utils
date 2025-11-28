# Security Policy

## Supply Chain Security

This project implements several security measures to protect against supply chain attacks:

### 1. GitHub Actions Pinning

All GitHub Actions are pinned to **immutable SHA commit hashes** instead of mutable version tags.

**Why this matters:**
- Version tags like `@v4` can be moved by attackers who compromise a repository
- SHA commits are cryptographically immutable - they cannot be changed
- This protects against tag poisoning attacks

**Example:**
```yaml
# ❌ INSECURE - Tag can be moved
- uses: actions/checkout@v4

# ✅ SECURE - SHA is immutable
- uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683  # v4.2.2
```

### 2. Dependabot Monitoring

Dependabot automatically monitors and updates our pinned GitHub Actions:
- Weekly scans for security updates
- Automated pull requests for new versions
- Groups related updates to reduce PR noise

See `.github/dependabot.yml` for configuration.

### 3. Minimal Permissions

Workflows use the principle of least privilege:
```yaml
permissions:
  contents: write      # Only what's needed
  id-token: write      # For future SLSA provenance
```

Default `GITHUB_TOKEN` permissions are restricted to only what each job requires.

### 4. Secret Management

- Secrets are managed via 1Password Service Accounts
- Tokens are scoped per-step to minimize exposure
- **Warning:** Current implementation exposes service account token to all steps (see Line 28 in release.yml)

**Recommended improvement:**
```yaml
with:
  export-env: true
  unset-previous: true  # Clear secrets after use
```

## Reporting Security Issues

Please report security vulnerabilities to the repository maintainers privately.

Do not open public issues for security vulnerabilities.

## Future Security Enhancements

See [Phase 2 Security Improvements](../docs/security-roadmap.md) for planned enhancements:
- SLSA provenance generation
- Artifact signing with Sigstore
- Dependency verification
- Enhanced secret scoping
