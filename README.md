# Swift format template

Install [swift-format](https://github.com/apple/swift-format):

```shell
brew install swift-format
```

Create a `.swift-format` using this template.

```shell
curl -s https://raw.githubusercontent.com/BinaryBirds/swift-format-template/main/.swift-format > .swift-format
```

Add these lines to your `Makefile`:

```makefile
format:
	swift-format -i -r ./Sources && swift-format -i -r ./Tests

lint:
	swift-format lint -r ./Sources && swift-format lint -r ./Tests
```


One-liner integration: 

```shell
curl -s https://raw.githubusercontent.com/BinaryBirds/swift-format-template/main/.swift-format > .swift-format && curl -s https://raw.githubusercontent.com/BinaryBirds/swift-format-template/main/Makefile >> ./Makefile
```

Usage: 

```shell
make format
make lint
```

That's it.
