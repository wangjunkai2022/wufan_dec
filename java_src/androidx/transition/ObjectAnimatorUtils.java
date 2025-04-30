package androidx.transition;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
/* loaded from: classes2.dex */
class ObjectAnimatorUtils {
    private ObjectAnimatorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ObjectAnimator a(T t3, Property<T, PointF> property, Path path) {
        if (Build.VERSION.SDK_INT >= 21) {
            return ObjectAnimator.ofObject(t3, property, (TypeConverter) null, path);
        }
        return ObjectAnimator.ofFloat(t3, new PathProperty(property, path), 0.0f, 1.0f);
    }
}
