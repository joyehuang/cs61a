# CS61A Week1

**Pure Functions**: just return values

```python
abs(-2)
2
```



**Non-Pure Functions**: have side effects

```python
two = print(2)
2
prin(two)
None
```

```python
print(print(1), print(2))
1
2
None None
```

