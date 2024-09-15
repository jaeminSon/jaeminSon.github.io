---
title: (잡생각) 좌절 관리 알고리즘
parent: Thoughts
---

**(잡생각) 좌절 관리 알고리즘**

v.0.0.1
```
function solve_depression(curr_states, ideal_states, achievable):
   # curr_states and ideal_states are sets
   # achievable is a function pointer that takes states and returns a boolean

   if ideal_states - curr_states is empty:
      return "정신과 약물치료"
   else:

      # 원하던 바를 이루지 못하는 경우, wish list 에서 지움.
      # (곧 새롭게 갈망하는 것이 생김)

      states_remove = initialize_empty_set()
      for s in ideal_states:
         if s not achievable(curr_states):
            states_remove.add(s)

      ideal_states -= states_remove

      return "keep calm and carry on!"
```

    