# Description

Example implementation of changing a Solidity contract bytecode during the constructor execution.

This code contains a function `foo()` with hardcoded return value `1` - but in fact it returns `2`. It's because the bytecode returned by the constructor is different than the bytecode compiled from the source code.

# Install

```
npm i
```

# Test

```
npm test
```

Test result:

```
  MyContract
    ✔ Deploys with hardcoded 1 (871ms)
    ✔ Returns 2 instead


  2 passing (883ms)
```
