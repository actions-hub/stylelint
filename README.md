# stylelint
GitHub Action that runs [stylelint](https://stylelint.io).

## Usage
To use stylelint in your workflow just add this step:

```yaml
- name: stylelint 
  uses: actions-hub/stylelint@master
```

## Configuration
Action has 3 parameters which you can set:
- PATTERN - Pattern for style files.
- CONFIG_PATH - Path to stylelint configuration file
- INDENT_SPACE - Space indentation

This parameters can be set through environment variables:
```yaml
- uses: actions-hub/stylelint@master
  env:
    INDENT_SPACES: 4
    PATTERN: "*.scss"
```

### .stylelintrc
By default, action will try to find an existing configuration file in the project.  
If the configuration file will not found, it will be created with the next configuration:

```json
{
  "extends": "stylelint-config-standard",
  "rules": {
    "indentation": 2
  }
}
```

### File pattern
If you want to specify which file or types must be validated.  
You need to pass the pattern as a `PATTERN` variable.
By default, it will try to find `*.css`.

### Indentation
Indentation can be set by environment variable `INDENT_SPACES`.  
By default space, indent is 2.

```yaml
- uses: actions-hub/stylelint@master
  ENV:
    INDENT_SPACES: 4
```

## Example
### Default values
```bash
name: Test
on: [push]

jobs:
  linters:
    name: stylelint
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v1
      - uses: actions-hub/stylelint@master
```

### Custom paramenters
```bash
name: Test
on: [push]

jobs:
  linters:
    name: stylelint
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v1
      - uses: actions-hub/stylelint@master
        env:
          PATTERN: "*.scss"
          INDENT_SPACES: 4
```

## License
[MIT License](https://github.com/actions-hub/stylelint/blob/master/LICENSE)
