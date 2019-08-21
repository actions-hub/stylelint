# stylelint
GitHub Action that runs [stylelint](https://stylelint.io).

## Usage

```yaml
- uses: exelban/stylelint@master
```

Or use docker image:
```yaml
- uses: "docker://exelban/stylelint:latest"
```

### Default values
#### Configuration file
Action will check if stylelint is already installed. If not, it will install styleling.
Also, its check if the configuration file exists (`.stylelintrc`).

By default action use next configuration:
```json
{
  "extends": "stylelint-config-standard",
  "rules": {
    "indentation": 2
  }
}
```

#### Pattern
If pattern is not provided, action will use default one: `*.css`.
```yaml
- uses: exelban/stylelint@master
  with:
    args: ./**/*.scss
```

#### Indentation
Indentation can be set by environment variable `INDENT_SPACES`.

```yaml
- uses: exelban/stylelint@master
  env:
    INDENT_SPACES: 4
```

## License
[MIT License](https://github.com/exelban/stylelint/blob/master/LICENSE)
