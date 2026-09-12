![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# HDI_JSONFileValidation

Demonstrates `JSON Validate`, which checks a JSON object against a JSON Schema and reports whether it conforms. Originally published by 4D as a **HDI** (*How Do I*) example for **4D v16 R4 / v17**; converted from the binary `.4DB` to the `.4DProject` architecture so it runs on current 4D releases.

## What it demonstrates

- Validating a parsed JSON object against a JSON Schema (`Resources/PersonSchema.json`) with `JSON Validate`.
- Reading the boolean `success` field of the result object with `OB Get` and reacting to pass/fail.
- Colouring the result object's fill via `OBJECT SET RGB COLORS`, sourcing success/error colours from hidden reference rectangles so the feedback tracks the current theme.
- Parsing and pretty-printing a JSON document with `JSON Parse` / `JSON Stringify`, using the `*` option to keep the internal `__symbol` metadata.
- Highlighting the `__symbol` attribute in the stringified output with styled-text attributes.
- Loading the schema, sample documents and tab titles from the resources folder, with localised (English/Japanese) sample files.

## Key commands

| Command | Used for |
|---|---|
| `JSON Validate` | Validate a parsed JSON object against a parsed JSON Schema |
| `JSON Parse` | Parse the sample document and the schema text into objects |
| `JSON Stringify` | Pretty-print the parsed document for display |
| `OB Get` | Read the `success` field from the validation result object |
| `OBJECT SET RGB COLORS` | Tint the result object with success/error colours |
| `Document to text` | Read `PersonSchema.json` from the resources folder |

## How it works

The landing form `HDI` is the standard splash screen (`ObjectMethods/BtnDemo.4dm` opens the demo). The demo is the form `HDI2`.

`Forms/HDI2/method.4dm` loads the schema once on `On Load` (`Document to text` of `PersonSchema.json` into `vSchema`) and calls `initHDI`, which fills the tab list from `SAMPLES.json` and the sample documents from `JSON_example.json`. On page change, page 3 runs `validateJSON` and page 4 runs `parseJSON`; the two dropdown object methods re-run the same subroutines on data change.

`Methods/validateJSON.4dm` is the core: it calls `JSON Validate(JSON Parse(vJSON; *); JSON Parse(vSchema))`, then branches on `OB Get(oResult; "success")` and paints the result object green or red using colours read from the `refSuccessFill` / `refErrorFill` reference rectangles.

`Methods/parseJSON.4dm` is the companion path: it round-trips the document through `JSON Parse` / `JSON Stringify` and tints the `__symbol` key teal with `ST SET ATTRIBUTES`.

## Points of interest

- `JSON Validate` takes *parsed* objects, not raw text -- both the document and the schema are passed through `JSON Parse` first.
- The `*` option on `JSON Parse` / `JSON Stringify` preserves 4D's internal `__symbol` metadata, which is why the parse view can highlight it.
- Success/error colours are not hard-coded; they are read at runtime from hidden reference rectangles via `OBJECT GET RGB COLORS`, so the feedback adapts to light/dark themes.
- The result of validation is a status object with a `success` flag rather than an exception, so failures are handled by inspection, not error trapping.

## Modernisation notes

Converted from the binary `.4DB` to a 4D project. The following branch tracks the modernisation work.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-hdi-project-modernisation`](../../tree/miyako-hdi-project-modernisation) | Hid form-dependent subroutines from the Run Method dialog, added English/Japanese XLIFF localisation, migrated `C_*` declarations to `var`/`#DECLARE`, moved the startup dialog to the modern `CALL WORKER`/`DIALOG(...; *)` pattern, and adopted dark mode + Liquid Glass styling. | [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md), [localisation.instructions.md](.github/instructions/localisation.instructions.md), [variable.declarations.instructions.md](.github/instructions/variable.declarations.instructions.md), [menu.instructions.md](.github/instructions/menu.instructions.md), [startup.instructions.md](.github/instructions/startup.instructions.md), [css.instructions.md](.github/instructions/css.instructions.md), [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md) |

## References

- [4D blog: Validate your JSON object](https://blog.4d.com/validate-your-json-object/)
- [4D documentation: JSON Validate](https://developer.4d.com/docs/commands/json-validate)
- Original download: [HDI_JSONFileValidation.zip](https://download.4d.com/Demos/4D_v16_R4/HDI_JSONFileValidation.zip)
- Index of v16/v17 HDIs: [miyako/4d-hdi](https://github.com/miyako/4d-hdi)

## Screenshots

<img width="360" height="352" alt="Screenshot 2026-07-24 at 7 34 32" src="https://github.com/user-attachments/assets/c4844e14-3083-40d0-882c-0a468b87ca4c" />
<img width="965" height="722" alt="Screenshot 2026-07-24 at 7 41 32" src="https://github.com/user-attachments/assets/9e3c76fe-af46-428a-baca-06c40c97b956" />
<img width="965" height="722" alt="Screenshot 2026-07-24 at 7 41 27" src="https://github.com/user-attachments/assets/f3e37f69-d7e7-4625-92ae-5213a06cf751" />
<img width="965" height="722" alt="Screenshot 2026-07-24 at 7 41 18" src="https://github.com/user-attachments/assets/2ab83644-f870-432c-add1-a17b61dc1614" />
<img width="965" height="722" alt="Screenshot 2026-07-24 at 7 41 23" src="https://github.com/user-attachments/assets/10e98e1a-3d8d-43d8-b0ee-fb0d91bb70ba" />
