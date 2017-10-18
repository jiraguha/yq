# yq in docker

Docker build containing the awesome work done [here](https://github.com/abesto/yq)

This is to yaml what jq is to json.

To use you can do something like this:

```
cat file.yaml | docker run -i evns/yq ".version"
```

If file.yaml looked like this:

```
foo: bar
version: 1.2
```

The above call would return "1.2"
