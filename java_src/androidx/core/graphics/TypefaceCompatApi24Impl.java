package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
@RequiresApi(24)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class TypefaceCompatApi24Impl extends TypefaceCompatBaseImpl {

    /* renamed from: d  reason: collision with root package name */
    private static final String f4279d = "TypefaceCompatApi24Impl";

    /* renamed from: e  reason: collision with root package name */
    private static final String f4280e = "android.graphics.FontFamily";

    /* renamed from: f  reason: collision with root package name */
    private static final String f4281f = "addFontWeightStyle";

    /* renamed from: g  reason: collision with root package name */
    private static final String f4282g = "createFromFamiliesWithDefault";

    /* renamed from: h  reason: collision with root package name */
    private static final Class<?> f4283h;

    /* renamed from: i  reason: collision with root package name */
    private static final Constructor<?> f4284i;

    /* renamed from: j  reason: collision with root package name */
    private static final Method f4285j;

    /* renamed from: k  reason: collision with root package name */
    private static final Method f4286k;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName(f4280e);
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod(f4281f, ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod(f4282g, Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            method = null;
            method2 = null;
        }
        f4284i = constructor;
        f4283h = cls;
        f4285j = method2;
        f4286k = method;
    }

    private static boolean h(Object obj, ByteBuffer byteBuffer, int i2, int i4, boolean z3) {
        try {
            return ((Boolean) f4285j.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i4), Boolean.valueOf(z3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface i(Object obj) {
        try {
            Object newInstance = Array.newInstance(f4283h, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f4286k.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean isUsable() {
        return f4285j != null;
    }

    private static Object j() {
        try {
            return f4284i.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i2) {
        FontResourcesParserCompat.FontFileResourceEntry[] entries;
        Object j4 = j();
        if (j4 == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            ByteBuffer copyToDirectBuffer = TypefaceCompatUtil.copyToDirectBuffer(context, resources, fontFileResourceEntry.getResourceId());
            if (copyToDirectBuffer == null || !h(j4, copyToDirectBuffer, fontFileResourceEntry.getTtcIndex(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                return null;
            }
        }
        return i(j4);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i2) {
        Object j4 = j();
        if (j4 == null) {
            return null;
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            Uri uri = fontInfo.getUri();
            ByteBuffer byteBuffer = (ByteBuffer) simpleArrayMap.get(uri);
            if (byteBuffer == null) {
                byteBuffer = TypefaceCompatUtil.mmap(context, cancellationSignal, uri);
                simpleArrayMap.put(uri, byteBuffer);
            }
            if (byteBuffer == null || !h(j4, byteBuffer, fontInfo.getTtcIndex(), fontInfo.getWeight(), fontInfo.isItalic())) {
                return null;
            }
        }
        Typeface i4 = i(j4);
        if (i4 == null) {
            return null;
        }
        return Typeface.create(i4, i2);
    }
}
