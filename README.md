# python-package-starter

[![CI](https://github.com/ablil/python-package-starter/actions/workflows/ci.yaml/badge.svg?event=push)](https://github.com/ablil/python-package-starter/actions/workflows/ci.yaml)

## Develop locally

Start a new virtual env
```shell
poetry shell
```

Install all dependencies (declared on pyproject.toml) from all groups
```shell
poetry install

# only main group
poetry install --only main

# without test group
poetry install --without test
```

Add new dependency
```shell
# add dep to main group
poetry add requests

# add dep to dev group
poetry add black --group dev

# add dep to test group
poetry add pytest --group test
```

## Build and publish

Publish package
```shell
> poetry publish --build -r testpypi
> poetry publish --build
```

Authenticate to PyPI
```shell
> poetry config pypi-token.testpypi $PYPI_TOKEN_TEST
> poetry config pypi-token.pypi $PYPI_TOKEN
```


# Referencs

[Guide to Python module](https://docs.python.org/3/tutorial/modules.htmldir)
[Python packaging user guide](https://packaging.python.org/en/latest/)
