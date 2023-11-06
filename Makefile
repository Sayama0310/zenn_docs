# Zenn の記事を新規作成
# Usage: make article
# ------------------------------------------------------------------------------
article:
	@read -p "Enter article title: " title; \
	now=`date +'%Y%m%d%H%M%S'`; \
	slug=`echo "$$title" | sed -e 's/ /_/g' | tr '[:upper:]' '[:lower:]'`; \
	slug=`echo "$$now"_"$$slug"`; \
	echo "Creating new article: $$slug"; \
	npx zenn new:article --slug "$$slug"
