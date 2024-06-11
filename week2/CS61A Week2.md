# CS61A Week2

**Functions are first-class **: Functions can be manipulated as values in our programming language

**Higher-order function**: A function that takes aa function as an argument values or returns a function as a return value

- Express general methods of computation
- Remove repetition from programs
- Separate concerns among functions

```python
def make_adder(n):
	"""Return a function that takes one argument k aand returns k + n
	>>> add_three = make_adder(3)
	>>> add_three(4)
	7
	"""
	def adder(k):
		return n + k
	return adder
```

