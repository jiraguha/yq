# yq in docker

Docker image containing [yq](https://github.com/abesto/yq), a yaml wrapper of [jq](https://github.com/stedolan/jq).

Example Usage:

```
$ cat > file.yaml << EOF
foo: bar
version: 1.2
EOF
$ cat file.yaml | docker run -i karlkfi/yq -r '.version'
1.2
```

Bash function:

```
function yq() {
  sudo docker run -i karlkfi/yq "$@"
}
cat file.yaml | yq -r '.version'
```

Bash alias:

```
alias yq="sudo docker run -i karlkfi/yq"
cat file.yaml | yq -r '.version'
```

Bonus jq usage:

```
$ cat > file.json << EOF
{
  "foo": "bar",
  "version": 1.2
}
EOF
$ cat file.json | docker run -i --entrypoint jq karlkfi/yq -r '.version'
1.2
```
