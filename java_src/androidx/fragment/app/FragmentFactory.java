package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public class FragmentFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleArrayMap<ClassLoader, SimpleArrayMap<String, Class<?>>> f5859a = new SimpleArrayMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return Fragment.class.isAssignableFrom(b(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @NonNull
    private static Class<?> b(@NonNull ClassLoader classLoader, @NonNull String str) throws ClassNotFoundException {
        SimpleArrayMap<ClassLoader, SimpleArrayMap<String, Class<?>>> simpleArrayMap = f5859a;
        SimpleArrayMap<String, Class<?>> simpleArrayMap2 = simpleArrayMap.get(classLoader);
        if (simpleArrayMap2 == null) {
            simpleArrayMap2 = new SimpleArrayMap<>();
            simpleArrayMap.put(classLoader, simpleArrayMap2);
        }
        Class<?> cls = simpleArrayMap2.get(str);
        if (cls == null) {
            Class<?> cls2 = Class.forName(str, false, classLoader);
            simpleArrayMap2.put(str, cls2);
            return cls2;
        }
        return cls;
    }

    @NonNull
    public static Class<? extends Fragment> loadFragmentClass(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e4) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e4);
        } catch (ClassNotFoundException e5) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e5);
        }
    }

    @NonNull
    public Fragment instantiate(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return loadFragmentClass(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e4) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e4);
        } catch (InstantiationException e5) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e5);
        } catch (NoSuchMethodException e6) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e6);
        } catch (InvocationTargetException e7) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e7);
        }
    }
}
