# Build and local installation 
kdtree:
	node-gyp configure build install 

# Run all unit tests
test:
	@find tests/*js | xargs -n 1 -t node

# Delete all temporary files generated by a build
clean:
	node-gyp clean

#uninstall:
#	node-waf uninstall

# Install npm package
dist:
	rm -rf build
	npm install

dist-uninstall:
	npm uninstall kdtree