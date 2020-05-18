setup: bootstrap

bootstrap:
	npx lerna bootstrap --hoist

update-deps:
	ncu -u
	npx lerna exec ncu -- -u

clean:
	npx lerna clean

test:
	DEBUG=nodos:* npx jest

lint:
	npx eslint .

lint-fix:
	npx eslint . --fix

publish:
	npx lerna publish

what-to-do:
	git grep FIXME

docs-build:
	npx documentation build packages/nodos-core -f html -o docs

site-start:
	cd site; npm start

site-deploy:
	cd site; GIT_USER=$(U) npm run deploy
