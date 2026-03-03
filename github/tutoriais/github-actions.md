# Tutorial: GitHub Actions

GitHub Actions automatiza build, testes, lint e deploy.

## Estrutura

Os workflows ficam em:

```text
.github/workflows/
```

## Exemplo simples de workflow

Crie um arquivo em `.github/workflows/ci.yml`:

```yaml
name: CI

on:
  push:
    branches: ["main"]
  pull_request:
    branches: ["main"]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Node
        uses: actions/setup-node@v4
        with:
          node-version: 20

      - name: Install dependencies
        run: npm ci

      - name: Run tests
        run: npm test
```

## Próximos passos

- Criar workflow de lint.
- Adicionar badge de status no README.
- Configurar deploy automático por ambiente.
