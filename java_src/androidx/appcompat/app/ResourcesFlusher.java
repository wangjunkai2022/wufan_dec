package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.LongSparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.util.Map;
/* loaded from: classes.dex */
class ResourcesFlusher {

    /* renamed from: a  reason: collision with root package name */
    private static final String f280a = "ResourcesFlusher";

    /* renamed from: b  reason: collision with root package name */
    private static Field f281b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f282c;

    /* renamed from: d  reason: collision with root package name */
    private static Class<?> f283d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f284e;

    /* renamed from: f  reason: collision with root package name */
    private static Field f285f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f286g;

    /* renamed from: h  reason: collision with root package name */
    private static Field f287h;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f288i;

    private ResourcesFlusher() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull Resources resources) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return;
        }
        if (i2 >= 24) {
            d(resources);
        } else if (i2 >= 23) {
            c(resources);
        } else if (i2 >= 21) {
            b(resources);
        }
    }

    @RequiresApi(21)
    private static void b(@NonNull Resources resources) {
        if (!f282c) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f281b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f282c = true;
        }
        Field field = f281b;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException unused2) {
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    @RequiresApi(23)
    private static void c(@NonNull Resources resources) {
        if (!f282c) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f281b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f282c = true;
        }
        Object obj = null;
        Field field = f281b;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException unused2) {
            }
        }
        if (obj == null) {
            return;
        }
        e(obj);
    }

    @RequiresApi(24)
    private static void d(@NonNull Resources resources) {
        Object obj;
        if (!f288i) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f287h = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f288i = true;
        }
        Field field = f287h;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException unused2) {
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f282c) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f281b = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException unused3) {
            }
            f282c = true;
        }
        Field field2 = f281b;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException unused4) {
            }
        }
        if (obj2 != null) {
            e(obj2);
        }
    }

    @RequiresApi(16)
    private static void e(@NonNull Object obj) {
        if (!f284e) {
            try {
                f283d = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException unused) {
            }
            f284e = true;
        }
        Class<?> cls = f283d;
        if (cls == null) {
            return;
        }
        if (!f286g) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f285f = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
            }
            f286g = true;
        }
        Field field = f285f;
        if (field == null) {
            return;
        }
        LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException unused3) {
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
