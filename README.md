# HDI_JSONFileValidation

A 4D v17 **HDI** (How Do I) binary database demonstrating JSON validation, converted to a 4D project using 4D 21. The codebase was then updated and cleaned up with the help of **GitHub Copilot**.

## Origin

This project started as a binary `.4DB` example database originally distributed with 4D v17. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

- **Blog post:** [Validate your JSON object](https://blog.4d.com/validate-your-json-object/)

- **Original download:** [HDI_JSONFileValidation.zip](https://download.4d.com/Demos/4D_v16_R4/HDI_JSONFileValidation.zip)

## Branches

Each branch represents a distinct modernisation effort, guided by a corresponding Copilot instruction file.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-hdi-project-modernisation`](../../tree/miyako-hdi-project-modernisation) | Hid form-dependent subroutines from the Run Method dialog, added English/Japanese XLIFF localisation, migrated `C_*` declarations to `var`/`#DECLARE`, moved the startup dialog to the modern `CALL WORKER`/`DIALOG(...; *)` pattern, and adopted dark mode + Liquid Glass styling. | [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md), [localisation.instructions.md](.github/instructions/localisation.instructions.md), [variable.declarations.instructions.md](.github/instructions/variable.declarations.instructions.md), [menu.instructions.md](.github/instructions/menu.instructions.md), [startup.instructions.md](.github/instructions/startup.instructions.md), [css.instructions.md](.github/instructions/css.instructions.md), [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md) |

## Copilot Token Usage

Actual per-session token usage, pulled from Copilot session records.

| Session | Branch | Model(s) | Input Tokens | Output Tokens | Turns |
|---------|--------|----------|-------------:|--------------:|------:|
| HDI project modernisation | `miyako-hdi-project-modernisation` | Claude Sonnet 5 | 11,330,808 | 52,414 | 76 |
| **Total** | | | **11,330,808** | **52,414** | **76** |

This was a single-session effort covering all seven modernisation tasks (method visibility, localisation, variable declarations, menu actions, startup dialog, and dark mode/Liquid Glass styling) in one pass. The task combined mechanical refactors (attribute flags, `C_*` -> `var` conversions, CSS class extraction) with some domain-specific reasoning (4D's startup/dialog lifecycle, XLIFF structure, and token-safety verification against the existing source), which together justify a capable general-purpose model rather than a smaller one.

**Recommendation:** For a repeat of this kind of multi-file, instruction-driven modernisation pass, Claude Sonnet 5 in interactive or plan mode is a good fit -- the tasks are well-scoped by the instruction files but still benefit from cross-file judgment (e.g. deciding whether an object needs a form context, or whether a colour is semantic/branded vs. structural). Autopilot would likely work equally well now that the instruction files fully document the target patterns.

## Screenshots
