<!--
Назначение: Инструкции по использованию и установке Codex-части репозитория.
Взаимодействие: Ссылается на codex/AGENTS.md, codex/skills/ и shared/; не меняет Claude-файлы в корне репозитория.
Параметры: Предполагает установку в ~/.codex для пользовательского профиля Codex.
Created: 2026-07-13
Modified: 2026-07-13
-->

# Codex

Отдельная часть репозитория для Codex. Здесь лежат правила `AGENTS.md` и skills, уже адаптированные под поток работы Codex и не зависящие от Claude-хуков.

## Содержимое

- `AGENTS.md` — глобальные правила для Codex.
- `skills/` — skills для `adversarial-review`, `grill-me`, `runbook`, `secret-hygiene`, `project-structure`, `scaffold`.

## Установка

Скопируй содержимое в профиль Codex:

```powershell
Copy-Item codex\AGENTS.md "$env:USERPROFILE\.codex\AGENTS.md"
Copy-Item -Recurse codex\skills\* "$env:USERPROFILE\.codex\skills\"
```

Если в `~/.codex/AGENTS.md` уже есть правила, объединяй их вручную, а не перезаписывай вслепую.

## Что уже адаптировано

- Убрана зависимость от `CLAUDE.md`.
- Убраны Claude-specific hooks.
- `grill-me` адаптирован под режимы `Quick` и `Deep`.
- `scaffold` и `project-structure` не навязывают Claude-обвязку и не создают лишние пустые каталоги.

## Shared

Нейтральные, переносимые между агентными средами соглашения и заметки лежат в `shared/`.
