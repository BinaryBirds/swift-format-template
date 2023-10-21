format:
	swift-format -i -r ./Sources && swift-format -i -r ./Tests

lint:
	swift-format lint -r ./Sources && swift-format lint -r ./Tests
