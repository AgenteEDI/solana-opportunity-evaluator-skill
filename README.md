# Solana Opportunity Evaluator Skill

A production-oriented skill for founders and builders who need to decide whether a Solana opportunity is worth pursuing.

## What problem it solves

Teams regularly waste time on:

- grants that look prestigious but do not fit the roadmap
- bounties that are too crowded or underpriced
- partnership proposals with fuzzy upside
- integrations that create maintenance burden without leverage
- hiring or vendor opportunities with unclear return

This skill gives coding agents a repeatable evaluation workflow so they can turn scattered inputs into a clear decision memo.

## Core outputs

- `opportunity memo`
- `fit / effort / upside / risk score`
- `pursue / defer / drop` recommendation
- `next-step plan`
- `open questions before committing`

## Who it is for

- Solana founders
- protocol operators
- startup teams evaluating ecosystem opportunities
- hackathon and grant teams triaging where to spend attention

## Skill shape

- `skill/SKILL.md`: entry point and routing
- `skill/opportunity-eval.md`: operating procedure
- `skill/scoring.md`: scoring model
- `skill/artifacts.md`: output templates and deliverables

## Example prompts

- "Evaluate whether we should pursue this Solana bounty"
- "Compare these two ecosystem partnership opportunities"
- "Read this grant page and tell me if it is worth our time"
- "Should we integrate this protocol now or later?"

## Installation

```bash
./install.sh
./validate.sh
```

For non-Claude setups:

```bash
./install.sh --agents /path/to/project
```

## Repository structure

```text
solana-opportunity-evaluator-skill/
├── README.md
├── LICENSE
├── install.sh
├── validate.sh
├── tests/
│   └── run_all.sh
└── skill/
    ├── SKILL.md
    ├── opportunity-eval.md
    ├── scoring.md
    └── artifacts.md
```

## License

MIT
