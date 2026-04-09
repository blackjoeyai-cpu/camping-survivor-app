# AGENTS.md

## App Type
- **Flutter** offline-first camping/survival app
- Must work reliably in real survival situations — offline functionality is non-negotiable

## Target Architecture
- **Clean Architecture**: Entities → Use Cases → Repositories → Data Sources
- **Riverpod** for state management
- **Isar** for local storage (offline-first data persistence)
- Battery efficiency and minimal network dependency

## Stack Notes
- Flutter (mobile)
- Isar (local NoSQL database)
- Riverpod (state management)
- Clean Architecture pattern

## Multi-Agent Workflow
See `Docs/AGENTS-WORKFLOW.md` for the Planner → Coder → Reviewer pipeline. Keep tasks small and focused; always pass through Reviewer before marking complete.

## Conventions
- Prioritize offline usage in all decisions
- Modules must be independent
- No code that requires network connectivity to function
- App must be reliable — this may be used in real survival situations
