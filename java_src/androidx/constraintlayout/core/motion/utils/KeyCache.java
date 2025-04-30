package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes.dex */
public class KeyCache {

    /* renamed from: a  reason: collision with root package name */
    HashMap<Object, HashMap<String, float[]>> f2117a = new HashMap<>();

    public float getFloatValue(Object obj, String str, int i2) {
        HashMap<String, float[]> hashMap;
        float[] fArr;
        if (this.f2117a.containsKey(obj) && (hashMap = this.f2117a.get(obj)) != null && hashMap.containsKey(str) && (fArr = hashMap.get(str)) != null && fArr.length > i2) {
            return fArr[i2];
        }
        return Float.NaN;
    }

    public void setFloatValue(Object obj, String str, int i2, float f4) {
        if (!this.f2117a.containsKey(obj)) {
            HashMap<String, float[]> hashMap = new HashMap<>();
            float[] fArr = new float[i2 + 1];
            fArr[i2] = f4;
            hashMap.put(str, fArr);
            this.f2117a.put(obj, hashMap);
            return;
        }
        HashMap<String, float[]> hashMap2 = this.f2117a.get(obj);
        if (hashMap2 == null) {
            hashMap2 = new HashMap<>();
        }
        if (!hashMap2.containsKey(str)) {
            float[] fArr2 = new float[i2 + 1];
            fArr2[i2] = f4;
            hashMap2.put(str, fArr2);
            this.f2117a.put(obj, hashMap2);
            return;
        }
        float[] fArr3 = hashMap2.get(str);
        if (fArr3 == null) {
            fArr3 = new float[0];
        }
        if (fArr3.length <= i2) {
            fArr3 = Arrays.copyOf(fArr3, i2 + 1);
        }
        fArr3[i2] = f4;
        hashMap2.put(str, fArr3);
    }
}
