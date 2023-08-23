notes.yml:
	bash ./scripts/read-notes.bash > .cache/notes.yml

clean:
	rm .cache/*

dump: notes.yml
	cat notes.yml | python3 notes.py

sync: dump

commit:
	git commit -m "Sync $(date)"

push: commit
	git push
