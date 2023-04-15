# Swift format template

Install [swift-format](https://github.com/apple/swift-format):

```shell
brew install swift-format
```


Add these lines to your `Makefile`:

```makefile
format:
	@curl -s https://raw.githubusercontent.com/BinaryBirds/swift-format-template/main/config.json >> swift-format.json && \
	swift-format --configuration swift-format.json -i -r ./Sources && \
	swift-format --configuration swift-format.json -i -r ./Tests && \
	rm -f ./swift-format.json

lint:
	@curl -s https://raw.githubusercontent.com/BinaryBirds/swift-format-template/main/config.json >> swift-format.json && \
	swift-format lint --configuration swift-format.json -r ./Sources && \
	swift-format lint --configuration swift-format.json -r ./Tests && \
	rm -f ./swift-format.json
```


Alternative one-liner integration: 

```shell
echo "\n\n# swift-format commands\n" >> ./Makefile && curl -s https://raw.githubusercontent.com/BinaryBirds/swift-format-template/main/Makefile >> ./Makefile
```



Run: 

```shell
make format
make lint
```

That's it.