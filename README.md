# Swift format template

Install [swift-format](https://github.com/apple/swift-format):

```shell
brew install swift-format
```


Add these lines to your `Makefile`:

```makefile
format:
	swift-format -i -r ./Sources && swift-format -i -r ./Tests

lint:
	swift-format lint -r ./Sources && swift-format lint -r ./Tests
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
