package com.xinzhu.overmind.utils.wrappers;

import android.os.Build;
import java.util.Objects;
/* loaded from: classes3.dex */
public class ObjectsWrapper {
    public static boolean equals(Object a4, Object b4) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(a4, b4);
        }
        return a4 == b4 || (a4 != null && a4.equals(b4));
    }
}
