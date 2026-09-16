# campanhas/ — uma pasta por campanha

Cada campanha (ou cliente) fica numa pasta própria aqui dentro, autossuficiente, com sua marca, briefings e entregas separados de todo o resto.

```
campanhas/
├─ estudio-i9-locacao/
│  ├─ marca/       (marca.md, voz.md, identidade.md, publico.md, performance.md)
│  │  └─ insumos/  (material bruto do cliente)
│  ├─ briefings/
│  └─ entregas/
├─ cliente-x-lancamento/
└─ ...
```

## Como criar uma campanha nova

Na raiz do projeto, rode:

```bash
./nova-campanha.sh nome-da-campanha
```

Isso copia o `_MODELO-CAMPANHA/` (estrutura vazia + templates) para `campanhas/nome-da-campanha/`.

Depois **abra o Claude Code dentro da pasta da campanha** e use os comandos normalmente (`/marca`, `/repurpose`, `/calendario`, `/campanha`, `/ads`). Os comandos não mudam: como você está trabalhando dentro da pasta da campanha, tudo que eles leem e escrevem (`marca/`, `entregas/`) já fica ali dentro, isolado das outras campanhas.

> Regra de sempre: `/marca` primeiro. Os outros quatro dependem do que ele escreve.
