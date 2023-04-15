format:
	swift-format --configuration config.json -i -r ./Sources

lint:
	swift-format lint --configuration config.json -r ./Sources