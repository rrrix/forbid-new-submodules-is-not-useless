# forbid-new-submodules is not useless!

This repo is an example showing the behavior of [pre-commit](https://pre-commit.com)
hooks `check-hooks-apply` and `forbid-new-submodules`.

Using this `.pre-commit-config.yaml`:

```yaml
repos:
  - repo: meta
    hooks:
      - id: check-hooks-apply
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v4.3.0
    hooks:
      - id: forbid-new-submodules
```

Results in the following error during `pre-commit run`:

```text
$ pre-commit run --all-files
Check hooks apply to the repository......................................Failed
- hook id: check-hooks-apply
- exit code: 1

forbid-new-submodules does not apply to this repository

forbid new submodules................................(no files to check)Skipped
```
