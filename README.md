# Swift format template

Install [swift-format](https://github.com/apple/swift-format):

```
brew install swift-format
```


Add these lines to your `Makefile`:

```makefile
format:
	@curl -s https://raw.githubusercontent.com/BinaryBirds/swift-format-template/main/config.json >> swift-format.json && \
	swift-format --configuration swift-format.json -i -r ./Sources && \
	rm -f ./swift-format.json

lint:
	@curl -s https://raw.githubusercontent.com/BinaryBirds/swift-format-template/main/config.json >> swift-format.json && \
	swift-format lint --configuration swift-format.json -r ./Sources && \
	rm -f ./swift-format.json
```

Run: 

```shell
make format
make lint
```

That's it.