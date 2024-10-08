# Functional programming for C# developers

This repo contains the source code for a [presentation](src/main.md) on Functional programming in _dotnet_.
The slides are prepared using [marp](https://marp.app/).

## Generate the slides

To generate a pdf version of the slides:
```shell
./scripts/build-marp.sh src pdf
```

Similarly, you can create an html version of them by just running:
```shell
./scripts/build-marp.sh src html
```

The latest version is hosted on github ages at [](https://fabiolune.github.io/fp-for-csharp-devs/).

When using VSCode you can use the [official extensions](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)