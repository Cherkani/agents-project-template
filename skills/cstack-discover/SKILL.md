---
name: cstack-discover
description: Discover and compare the best skill for a requested technology or workflow using officialskills.sh, source quality, maintenance, fit, and installed-skill overlap before asking to install it.
---

# CStack Skill Discovery

Use when the user asks to find, compare, rate, or install a skill.

1. Clarify the capability needed, project stack, target agent, and whether the user wants recommendations only or an installation.
2. Search `https://officialskills.sh/` first, then inspect the linked source repository. Use the official maintainer skill when one exists.
3. Compare candidates using evidence rather than a single popularity number: maintainer authority, source repository activity, documentation quality, compatibility, scope, permissions, issue health, and GitHub stars or community adoption when available.
4. Check the installed Codex skills and project `AGENTS.md` for overlap. Prefer extending an existing skill or using gstack when it already covers the workflow.
5. Return a short ranked table with source, purpose, fit, overlap, risk, and recommendation. Do not call an installer or change files during recommendation-only requests.
6. If installation is requested, install only the selected skill through the Codex skill installer, pin or record its source, validate its `SKILL.md`, and report the files changed. Never bulk-install a catalog.
7. Treat ratings as decision evidence, not a guarantee. Do not describe a skill as “most rated” unless the source provides a current, verifiable ranking; otherwise say “best fit based on the available evidence.”
