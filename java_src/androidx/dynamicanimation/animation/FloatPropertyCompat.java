package androidx.dynamicanimation.animation;

import android.util.FloatProperty;
import androidx.annotation.RequiresApi;
/* loaded from: classes.dex */
public abstract class FloatPropertyCompat<T> {

    /* renamed from: a  reason: collision with root package name */
    final String f5470a;

    public FloatPropertyCompat(String str) {
        this.f5470a = str;
    }

    @RequiresApi(24)
    public static <T> FloatPropertyCompat<T> createFloatPropertyCompat(final FloatProperty<T> floatProperty) {
        return new FloatPropertyCompat<T>(floatProperty.getName()) { // from class: androidx.dynamicanimation.animation.FloatPropertyCompat.1
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public float getValue(T t3) {
                return ((Float) floatProperty.get(t3)).floatValue();
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public void setValue(T t3, float f4) {
                floatProperty.setValue(t3, f4);
            }
        };
    }

    public abstract float getValue(T t3);

    public abstract void setValue(T t3, float f4);
}
