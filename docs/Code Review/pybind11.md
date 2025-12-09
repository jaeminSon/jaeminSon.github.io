---
title: (코드 탐색) pybind11
parent: Code Review
---

**(코드 탐색) pybind11**
### Python ↔ C++/CUDA Interaction (pybind11 + PyTorch Extension)
Python object
→ PyObject* (CPython’s internal object representation)
→ pybind11 type casters (conversion layer)
→ C++ function
→ (optional) CUDA kernel
→ back through pybind11 type casters
→ Python object

### Python → C++ Argument Passing
1. The Python runtime creates normal Python objects.
2. When the C++ extension is called, Python provides PyObject* pointers for each argument.
3. pybind11 inspects the PyObject* and selects the appropriate type caster.
4. The type caster converts the argument into a native C++ type (e.g., int, std::string, std::vector<T>, at::Tensor).
5. Your C++ function receives fully constructed C++ variables, independent of Python.

### C++ → Python Return Value
1. Your C++ function finishes and returns a native C++ value (e.g., int, float, std::string, std::vector<T>, or torch::Tensor).
2. pybind11 intercepts the return value and identifies its C++ type.
3. The matching type caster constructs an equivalent Python object (PyObject*).
4. Python receives that object as a normal Python value.