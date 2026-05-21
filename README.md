# SDK Parity Examples

Canonical public synthetic examples for SDK Parity.

This repository must contain only examples that are safe to publish.

## Rules

- Use synthetic APIs and synthetic SDKs only.
- Do not include customer repositories, customer specs, private migration notes,
  infrastructure details, or internal materials.
- Keep examples small, deterministic, and suitable for tests and documentation.

## Fixtures

- `pulse-api`: synthetic OpenAPI fixture used to verify SDK generation behavior,
  including authenticated resources and a public health-check operation.

## Usage

The `pulse-api` config writes generated output to `generated/pulse` when run from
this repository. Automation may override the output directory, but the OpenAPI
and config files here remain the source of truth for the public Pulse example.
