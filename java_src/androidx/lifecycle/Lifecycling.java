package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.Lifecycle;
import com.join.mgps.Util.g0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class Lifecycling {

    /* renamed from: a  reason: collision with root package name */
    private static final int f6252a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static final int f6253b = 2;

    /* renamed from: c  reason: collision with root package name */
    private static Map<Class<?>, Integer> f6254c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static Map<Class<?>, List<Constructor<? extends GeneratedAdapter>>> f6255d = new HashMap();

    private Lifecycling() {
    }

    private static GeneratedAdapter a(Constructor<? extends GeneratedAdapter> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException(e4);
        } catch (InstantiationException e5) {
            throw new RuntimeException(e5);
        } catch (InvocationTargetException e6) {
            throw new RuntimeException(e6);
        }
    }

    @Nullable
    private static Constructor<? extends GeneratedAdapter> b(Class<?> cls) {
        try {
            Package r02 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r02 != null ? r02.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String adapterName = getAdapterName(canonicalName);
            if (!name.isEmpty()) {
                adapterName = name + g0.f27568a + adapterName;
            }
            Constructor declaredConstructor = Class.forName(adapterName).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException(e4);
        }
    }

    @NonNull
    @Deprecated
    static GenericLifecycleObserver c(Object obj) {
        final LifecycleEventObserver f4 = f(obj);
        return new GenericLifecycleObserver() { // from class: androidx.lifecycle.Lifecycling.1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                LifecycleEventObserver.this.onStateChanged(lifecycleOwner, event);
            }
        };
    }

    private static int d(Class<?> cls) {
        Integer num = f6254c.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int g4 = g(cls);
        f6254c.put(cls, Integer.valueOf(g4));
        return g4;
    }

    private static boolean e(Class<?> cls) {
        return cls != null && LifecycleObserver.class.isAssignableFrom(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static LifecycleEventObserver f(Object obj) {
        boolean z3 = obj instanceof LifecycleEventObserver;
        boolean z4 = obj instanceof FullLifecycleObserver;
        if (z3 && z4) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj, (LifecycleEventObserver) obj);
        }
        if (z4) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj, null);
        }
        if (z3) {
            return (LifecycleEventObserver) obj;
        }
        Class<?> cls = obj.getClass();
        if (d(cls) == 2) {
            List<Constructor<? extends GeneratedAdapter>> list = f6255d.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
            }
            GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                generatedAdapterArr[i2] = a(list.get(i2), obj);
            }
            return new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
        }
        return new ReflectiveGenericLifecycleObserver(obj);
    }

    private static int g(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends GeneratedAdapter> b4 = b(cls);
        if (b4 != null) {
            f6255d.put(cls, Collections.singletonList(b4));
            return 2;
        } else if (ClassesInfoCache.f6182c.d(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (e(superclass)) {
                if (d(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f6255d.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (e(cls2)) {
                    if (d(cls2) == 1) {
                        return 1;
                    }
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(f6255d.get(cls2));
                }
            }
            if (arrayList != null) {
                f6255d.put(cls, arrayList);
                return 2;
            }
            return 1;
        }
    }

    public static String getAdapterName(String str) {
        return str.replace(g0.f27568a, "_") + "_LifecycleAdapter";
    }
}
