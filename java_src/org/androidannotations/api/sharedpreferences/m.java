package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Set;
/* compiled from: SharedPreferencesCompat.java */
/* loaded from: classes5.dex */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f73194a = b(SharedPreferences.Editor.class, "apply", new Class[0]);

    /* renamed from: b  reason: collision with root package name */
    private static final Method f73195b = b(SharedPreferences.class, "getStringSet", String.class, Set.class);

    /* renamed from: c  reason: collision with root package name */
    private static final Method f73196c = b(SharedPreferences.Editor.class, "putStringSet", String.class, Set.class);

    private m() {
    }

    public static void a(SharedPreferences.Editor editor) {
        try {
            d(f73194a, editor, new Object[0]);
        } catch (NoSuchMethodException unused) {
            editor.commit();
        }
    }

    private static Method b(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Set<String> c(SharedPreferences sharedPreferences, String str, Set<String> set) {
        try {
            return (Set) d(f73195b, sharedPreferences, str, set);
        } catch (NoSuchMethodException unused) {
            String string = sharedPreferences.getString(str, null);
            return string == null ? set : l.a(string);
        }
    }

    public static <T> T d(Method method, Object obj, Object... objArr) throws NoSuchMethodException {
        if (method != null) {
            try {
                return (T) method.invoke(obj, objArr);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                throw new NoSuchMethodException(method.getName());
            }
        }
        throw new NoSuchMethodException();
    }

    public static void e(SharedPreferences.Editor editor, String str, Set<String> set) {
        try {
            d(f73196c, editor, str, set);
        } catch (NoSuchMethodException unused) {
            editor.putString(str, l.b(set));
        }
    }
}
