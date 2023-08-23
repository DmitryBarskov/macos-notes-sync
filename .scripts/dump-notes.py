#!/usr/bin/env python3

import yaml
import sys

NOTE_TEMPLATE = "---\nid: {id}\nname: {name}\n---\n{body}"

def whole_input() -> str:
    return "".join(sys.stdin.readlines())


def read_notes(raw_yaml: str) -> list:
    return list(yaml.safe_load_all(raw_yaml))
    

def write_note(note: dict):
    filename = '{name}.md'.format(**note)
    with open(filename, 'w') as outputfile:
        print(NOTE_TEMPLATE.format(**note), file=outputfile)


def main():
    notes = read_notes(whole_input())
    for note in notes:
        write_note(note)


if __name__ == '__main__':
    main()
