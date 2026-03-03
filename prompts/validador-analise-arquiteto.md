# Validador: Análise de Código - Perspectiva de Arquiteto Sênior

Checklist de análise técnica e arquitetural para projetos Git/GitHub.

## 1) Estrutura e Organização do Projeto

- [ ] **Diretórios bem definidos**: Pastas organizadas por responsabilidade (src, tests, docs, scripts)
- [ ] **Sem raízes flutuantes**: Não há arquivos importantes soltos na raiz
- [ ] **Convenção de nomes consistente**: Pastas e arquivos seguem padrão (snake_case, kebab-case, camelCase)
- [ ] **README na raiz**: Documentação clara e acessível no primeiro nível
- [ ] **Arquivo .gitignore apropriado**: Ignora artefatos, dependências, secrets
- [ ] **LICENSE presente**: Projeto tem licença bem definida

## 2) Controle de Versão e Git

- [ ] **Branching strategy clara**: main/develop/feature/hotfix bem definida
- [ ] **Histórico limpo**: Commits atômicos, descritivos e em ordem lógica
- [ ] **Não há secrets no histórico**: Chaves, tokens, senhas não estão commitados
- [ ] **Tags versionadas**: Releases marcadas com tags semânticas (v1.0.0, v2.1.3)
- [ ] **Commits sem merge conflicts**: Histórico sem sinais de rebases problemáticos
- [ ] **Branch protection rules**: main/develop protegidas contra push direto

## 3) Qualidade de Código

- [ ] **Linting configurado**: ESLint, Pylint, Checkstyle ou similar
- [ ] **Formatação padronizada**: Prettier, Black, gofmt ou similar
- [ ] **Sem código duplicado**: DRY principle aplicado
- [ ] **Sem código morto**: Funções/arquivos não usados removidos
- [ ] **Complexidade ciclomática baixa**: Funções com responsabilidade única
- [ ] **Nomes significativos**: Variáveis, funções, classes autoexplicativas

## 4) Testes

- [ ] **Cobertura de testes adequada**: >= 70% de cobertura
- [ ] **Testes unitários presentes**: Lógica isolada testada
- [ ] **Testes de integração**: Fluxos críticos testados
- [ ] **Testes passam localmente**: CI/CD verde
- [ ] **Testes isolados**: Não dependem de ordem ou estado compartilhado
- [ ] **Testes documentados**: Casos de teste explicam o comportamento esperado

## 5) Dependências

- [ ] **Dependências atualizadas**: Sem versões bloqueadas desatualizadas
- [ ] **Dependências conhecidas**: Sem bibliotecas obscuras ou não mantidas
- [ ] **Sem dependências circulares**: Grafo de dependências acíclico
- [ ] **Versions bem especificadas**: package.json, requirements.txt, pom.xml com ranges sensatos
- [ ] **Sem vulnerabilidades críticas**: Dependências auditadas (npm audit, safety check)

## 6) Documentação

- [ ] **README com setup**: Como rodar o projeto localmente
- [ ] **API documentada**: Endpoints, params, respostas claros
- [ ] **ADRs (Architecture Decision Records)**: Decisões principais documentadas
- [ ] **Changelog mantido**: Histórico de mudanças por versão
- [ ] **Comentários apenas quando necessário**: Código fala por si
- [ ] **Exemplos funcionais**: Snippets que demonstram uso real

## 7) CI/CD

- [ ] **GitHub Actions/GitLab CI configurado**: Automação de build e testes
- [ ] **Build passa em todas as branches**: Nenhuma branch quebrada
- [ ] **Linting rodando no CI**: Qualidade é enforçada
- [ ] **Testes rodando no CI**: Cobertura validada
- [ ] **Deploy automático**: Prod deployment é reproduzível
- [ ] **Logs acessíveis**: Pipeline logs salvos e pesquisáveis

## 8) Segurança

- [ ] **Sem secrets hardcoded**: Variáveis de ambiente para sensíveis
- [ ] **Autenticação/Autorização**: Credenciais não armazenadas em código
- [ ] **Validação de entrada**: Dados sanitizados
- [ ] **HTTPS obrigatório**: Comunicação externa é encriptada
- [ ] **Dependências auditadas**: Vulnerabilidades conhecidas identificadas
- [ ] **Acesso baseado em roles**: RBAC configurado

## 9) Performance e Escalabilidade

- [ ] **Sem queries N+1**: Otimizado para banco de dados
- [ ] **Caching estratégico**: Cache implementado onde necessário
- [ ] **Sem memory leaks óbvios**: Recursos liberados corretamente
- [ ] **Índices no banco**: Queries otimizadas
- [ ] **Logging estruturado**: Logs facilitam debugging
- [ ] **Métricas coletadas**: APM/observabilidade mínima

## 10) Colaboração e Escalabilidade do Time

- [ ] **CONTRIBUTING.md presente**: Como contribuir está claro
- [ ] **Code review process**: PRs têm revisão obrigatória
- [ ] **Commit messages significativas**: Histórico é rastreável
- [ ] **Issues e PRs triagadas**: Backlog organizado
- [ ] **Pull request templates**: PRs têm estrutura consistente
- [ ] **Documentação de onboarding**: Novos devs conseguem iniciar em <= 1h

## 11) Monitoramento e Observabilidade

- [ ] **Logs estruturados**: JSON logs ou similar
- [ ] **Alertas configurados**: Problemas em produção notificam o time
- [ ] **Health checks**: /health endpoint ou similar
- [ ] **Metricas de negócio**: KPIs monitorados
- [ ] **SLOs definidos**: Acordos de nível de serviço documentados
- [ ] **Traces distribuídos**: Request tracking entre serviços

## 12) Conformidade e Padrões

- [ ] **Segue padrões da empresa**: Convenções corporativas respeitadas
- [ ] **Compatível com regulações**: GDPR, CCPA, etc., se aplicável
- [ ] **Versioning semântico**: Releases seguem SemVer
- [ ] **Documentação de APIs clara**: OpenAPI/Swagger ou similar
- [ ] **Consistent error handling**: Tratamento de erros padronizado
- [ ] **Logging de ações críticas**: Auditoria é possível

## Como Usar Este Checklist

1. **Avaliar o projeto**: Passar por cada item
2. **Marcar concluído**: Usar `[x]` para itens ok
3. **Documentar gaps**: Anotar problemas identificados
4. **Priorizar**: Focar em high-impact items primeiro
5. **Acompanhar**: Revisitar periodicamente (sprint, mensal)

## Exemplo de Saída

```
Total de itens: 72
Concluídos: 58 (80%)
Em progresso: 8 (11%)
Não iniciado: 6 (8%)

Prioridade alta:
- [ ] Cobertura de testes >= 70%
- [ ] Documentação de setup
- [ ] CI/CD pipeline

Prioridade média:
- [ ] Atualizar dependências
- [ ] Adicionar ADRs
```

## Notas

- Este checklist é **guia, não lei** — adapte conforme contexto
- Projetos greenfield vs legacy têm expectativas diferentes
- Qualidade é balanceamento entre perfeccionismo e pragmatismo
