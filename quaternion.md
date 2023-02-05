---
layout: default
---

**Rotation matrix with Quaternion**

[Reference](https://docs.scipy.org/doc/scipy/reference/generated/scipy.spatial.transform.Rotation.from_quat.html)

[Python File](./data/quaternion/example.py)

## Source Code

```python
from scipy.spatial.transform import Rotation as R
import numpy as np

# quaternion formula for rotation theta along axis (q1, q2, q3)
# >>> cos(theta/2) + sin(theta/2)*(q1*i + q2*j + q3*k))
# where q1**2 + q2**2 + q3**2 == 1

q0, q1, q2, q3 = np.cos(np.pi/4), 0, 0, np.sin(np.pi/4) # 90 degree by z axis 

r = R.from_quat([q1, q2, q3, q0]) # (x, y, z, w) [q0 + q1*i + q2*j + q3*k]

# rotation matrix manual computation
r00 = 2 * (q0 * q0 + q1 * q1) - 1
r01 = 2 * (q1 * q2 - q0 * q3)
r02 = 2 * (q1 * q3 + q0 * q2)
r10 = 2 * (q1 * q2 + q0 * q3)
r11 = 2 * (q0 * q0 + q2 * q2) - 1
r12 = 2 * (q2 * q3 - q0 * q1)
r20 = 2 * (q1 * q3 - q0 * q2)
r21 = 2 * (q2 * q3 + q0 * q1)
r22 = 2 * (q0 * q0 + q3 * q3) - 1
     
rot_matrix = np.array([[r00, r01, r02],
                        [r10, r11, r12],
                        [r20, r21, r22]])

assert np.all(np.abs(r.as_matrix() - rot_matrix) < 1e-6)
```
