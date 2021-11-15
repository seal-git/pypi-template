from ._version import __version__


def say_hello():
    """ Just print hello"""
    print(f'hello, this is pypy-template(ver.{__version__}).')
    return 'hello'


