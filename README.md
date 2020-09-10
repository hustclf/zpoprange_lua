# use lua implement zpoprange operation

## how to debug
```
redis-cli --eval zpoprange.lua dq , 0 100 3
```

## how to load to redis
```
redis-cli -x script load < zpoprange.lua
```
