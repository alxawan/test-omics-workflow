# Hello World WDL Workflow

A simple AWS HealthOmics workflow that outputs a personalized greeting.

## Inputs

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `name` | String | "Genomics Researcher" | Name to include in the greeting |

## Outputs

| Output | Type | Description |
|--------|------|-------------|
| `greeting` | String | The greeting message |

## Usage

Run on AWS HealthOmics with default parameters or provide a custom name:

```json
{
  "name": "Your Name"
}
```

## Resources

- CPU: 1
- Memory: 1 GB
