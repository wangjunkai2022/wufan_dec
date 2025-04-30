package androidx.databinding.adapters;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class ListenerUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<WeakHashMap<View, WeakReference<?>>> f5317a = new SparseArray<>();

    public static <T> T getListener(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 14) {
            return (T) view.getTag(i2);
        }
        SparseArray<WeakHashMap<View, WeakReference<?>>> sparseArray = f5317a;
        synchronized (sparseArray) {
            WeakHashMap<View, WeakReference<?>> weakHashMap = sparseArray.get(i2);
            if (weakHashMap == null) {
                return null;
            }
            WeakReference<?> weakReference = weakHashMap.get(view);
            if (weakReference == null) {
                return null;
            }
            return (T) weakReference.get();
        }
    }

    public static <T> T trackListener(View view, T t3, int i2) {
        WeakReference<?> put;
        if (Build.VERSION.SDK_INT >= 14) {
            T t4 = (T) view.getTag(i2);
            view.setTag(i2, t3);
            return t4;
        }
        SparseArray<WeakHashMap<View, WeakReference<?>>> sparseArray = f5317a;
        synchronized (sparseArray) {
            WeakHashMap<View, WeakReference<?>> weakHashMap = sparseArray.get(i2);
            if (weakHashMap == null) {
                weakHashMap = new WeakHashMap<>();
                sparseArray.put(i2, weakHashMap);
            }
            if (t3 == null) {
                put = weakHashMap.remove(view);
            } else {
                put = weakHashMap.put(view, new WeakReference<>(t3));
            }
            if (put == null) {
                return null;
            }
            return (T) put.get();
        }
    }
}
