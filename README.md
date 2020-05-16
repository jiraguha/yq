# yq in docker

Example Usage:

```
$ cat > file.yaml << EOF
foo: bar
version: 2.10.1
EOF
$ cat file.yaml | docker run -i jpiraguha/yq -r '.version'
2.10.1
```

Bash function:

```
function yq() {
  docker run -i jpiraguha/yq "$@"
}
cat file.yaml | yq -r '.version'
```

Bash alias:

```
alias yq="docker run -i jpiraguha/yq"
cat file.yaml | yq -r '.version'
```

Bonus jq usage:

```
$ cat > file.json << EOF
{
  "foo": "bar",
  "version": 2.10.1
}
EOF
$ cat file.json | docker run -i --entrypoint jq jpiraguha/yq -r '.version'
2.10.1
```
