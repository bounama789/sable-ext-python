import os

from sys import path

MAX = 10


class Greeter:
    """A docstring."""

    def greet(self, name: str) -> str:
        count = 42
        text = f"hello {name}\n"
        return text * count


def main() -> None:
    g = Greeter()
    print(g.greet("world"))  # prints hello world
