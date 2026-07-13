# AI Agents Knowledge

Репозиторий знаний и конфигурации для `Claude Code` и `Codex`, с явным разделением по средам.

## Структура репозитория

- `claude/` — отдельная Claude-часть: агенты, skills, hooks, `CLAUDE.md`, `settings.json` и инструкции установки.
- `codex/` — отдельная Codex-часть: `AGENTS.md`, skills и инструкции установки.
- `shared/` — нейтральные соглашения и материалы, не зависящие от конкретной агентной среды.

## Навигация

- Claude: [claude/README.md](claude/README.md)
- Codex: [codex/README.md](codex/README.md)
- Shared: [shared/README.md](shared/README.md)

## Принцип разделения

- Claude-специфичные hooks, `settings.json`, `CLAUDE.md`, агенты и skills живут только в `claude/`.
- Codex-специфичные `AGENTS.md` и skills живут только в `codex/`.
- Общие соглашения, которые можно использовать в обеих средах, живут в `shared/`.

## Что не делать

- Не смешивать Claude skills и Codex skills в одном каталоге.
- Не использовать `shared/` для platform-specific hooks и runtime-специфичных файлов.
- Не дублировать одинаковые правила в трёх местах, если их можно вынести в `shared/`.
