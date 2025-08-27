# Justfile
# Git based Markdown diary manager tool

# Variables
CONTENTS_DIR := "contents"


# help
default:
    @echo "Available Commands:"
    @echo "  just link <repo_url>   : remote repository add"
    @echo "  just new               : create today's diary markdown"
    @echo "  just publish           : commit & push"
    @echo "  just pull              : fetch latest from remote"

# Remote add
link repo_url:
    git remote remove origin || true
    git remote add origin {{repo_url}}
    git branch -M main
    git push -u origin main

# Create new diary for today
new:
	@mkdir -p {{CONTENTS_DIR}}
	@if [ ! -f "{{CONTENTS_DIR}}/$(date +%F).md" ]; then \
		echo "## $(date +%F)" > "{{CONTENTS_DIR}}/$(date +%F).md"; \
		echo "" >> "{{CONTENTS_DIR}}/$(date +%F).md"; \
		echo "generated: {{CONTENTS_DIR}}/$(date +%F).md"; \
	else \
		echo "already exist: {{CONTENTS_DIR}}/$(date +%F).md"; \
	fi

# commit + pull + push
publish:
    git add -A
    git commit -m "Diary: $(date +'%F %T')" || echo "No changes to commit"
    git pull origin main --rebase
    git push origin main

# Get latest from remote
pull:
    git pull origin main --rebase