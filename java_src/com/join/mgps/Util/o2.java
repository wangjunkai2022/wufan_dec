package com.join.mgps.Util;

import android.util.SparseArray;
import android.view.View;
/* compiled from: ViewHolder.java */
/* loaded from: classes3.dex */
public class o2 {
    public static <T extends View> T a(View view, int i2) {
        SparseArray sparseArray = (SparseArray) view.getTag();
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            view.setTag(sparseArray);
        }
        T t3 = (T) sparseArray.get(i2);
        if (t3 == null) {
            T t4 = (T) view.findViewById(i2);
            sparseArray.put(i2, t4);
            return t4;
        }
        return t3;
    }
}
