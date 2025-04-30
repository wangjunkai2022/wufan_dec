package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import net.lingala.zip4j.util.e;
@RequiresApi(26)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TypefaceCompatApi26Impl extends TypefaceCompatApi21Impl {
    private static final int A = -1;

    /* renamed from: t  reason: collision with root package name */
    private static final String f4287t = "TypefaceCompatApi26Impl";

    /* renamed from: u  reason: collision with root package name */
    private static final String f4288u = "android.graphics.FontFamily";

    /* renamed from: v  reason: collision with root package name */
    private static final String f4289v = "addFontFromAssetManager";

    /* renamed from: w  reason: collision with root package name */
    private static final String f4290w = "addFontFromBuffer";

    /* renamed from: x  reason: collision with root package name */
    private static final String f4291x = "createFromFamiliesWithDefault";

    /* renamed from: y  reason: collision with root package name */
    private static final String f4292y = "freeze";

    /* renamed from: z  reason: collision with root package name */
    private static final String f4293z = "abortCreation";

    /* renamed from: m  reason: collision with root package name */
    protected final Class<?> f4294m;

    /* renamed from: n  reason: collision with root package name */
    protected final Constructor<?> f4295n;

    /* renamed from: o  reason: collision with root package name */
    protected final Method f4296o;

    /* renamed from: p  reason: collision with root package name */
    protected final Method f4297p;

    /* renamed from: q  reason: collision with root package name */
    protected final Method f4298q;

    /* renamed from: r  reason: collision with root package name */
    protected final Method f4299r;

    /* renamed from: s  reason: collision with root package name */
    protected final Method f4300s;

    public TypefaceCompatApi26Impl() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> v3 = v();
            constructor = w(v3);
            method2 = s(v3);
            method3 = t(v3);
            method4 = x(v3);
            method5 = r(v3);
            method = u(v3);
            cls = v3;
        } catch (ClassNotFoundException | NoSuchMethodException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to collect necessary methods for class ");
            sb.append(e4.getClass().getName());
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f4294m = cls;
        this.f4295n = constructor;
        this.f4296o = method2;
        this.f4297p = method3;
        this.f4298q = method4;
        this.f4299r = method5;
        this.f4300s = method;
    }

    @Nullable
    private Object l() {
        try {
            return this.f4295n.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private void m(Object obj) {
        try {
            this.f4299r.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    private boolean n(Context context, Object obj, String str, int i2, int i4, int i5, @Nullable FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f4296o.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i2), Integer.valueOf(i4), Integer.valueOf(i5), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean o(Object obj, ByteBuffer byteBuffer, int i2, int i4, int i5) {
        try {
            return ((Boolean) this.f4297p.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i4), Integer.valueOf(i5))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean p(Object obj) {
        try {
            return ((Boolean) this.f4298q.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean q() {
        return this.f4296o != null;
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i2) {
        FontResourcesParserCompat.FontFileResourceEntry[] entries;
        if (!q()) {
            return super.createFromFontFamilyFilesResourceEntry(context, fontFamilyFilesResourceEntry, resources, i2);
        }
        Object l4 = l();
        if (l4 == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            if (!n(context, l4, fontFileResourceEntry.getFileName(), fontFileResourceEntry.getTtcIndex(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(fontFileResourceEntry.getVariationSettings()))) {
                m(l4);
                return null;
            }
        }
        if (p(l4)) {
            return i(l4);
        }
        return null;
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i2) {
        Typeface i4;
        if (fontInfoArr.length < 1) {
            return null;
        }
        if (!q()) {
            FontsContractCompat.FontInfo e4 = e(fontInfoArr, i2);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(e4.getUri(), e.f73017f0, cancellationSignal);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(e4.getWeight()).setItalic(e4.isItalic()).build();
                openFileDescriptor.close();
                return build;
            } catch (IOException unused) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> readFontInfoIntoByteBuffer = TypefaceCompatUtil.readFontInfoIntoByteBuffer(context, fontInfoArr, cancellationSignal);
        Object l4 = l();
        if (l4 == null) {
            return null;
        }
        boolean z3 = false;
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            ByteBuffer byteBuffer = readFontInfoIntoByteBuffer.get(fontInfo.getUri());
            if (byteBuffer != null) {
                if (!o(l4, byteBuffer, fontInfo.getTtcIndex(), fontInfo.getWeight(), fontInfo.isItalic() ? 1 : 0)) {
                    m(l4);
                    return null;
                }
                z3 = true;
            }
        }
        if (!z3) {
            m(l4);
            return null;
        } else if (p(l4) && (i4 = i(l4)) != null) {
            return Typeface.create(i4, i2);
        } else {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i2, String str, int i4) {
        if (!q()) {
            return super.createFromResourcesFontFile(context, resources, i2, str, i4);
        }
        Object l4 = l();
        if (l4 == null) {
            return null;
        }
        if (!n(context, l4, str, 0, -1, -1, null)) {
            m(l4);
            return null;
        } else if (p(l4)) {
            return i(l4);
        } else {
            return null;
        }
    }

    @Nullable
    protected Typeface i(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f4294m, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f4300s.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    protected Method r(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod(f4293z, new Class[0]);
    }

    protected Method s(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod(f4289v, AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    protected Method t(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod(f4290w, ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    protected Method u(Class<?> cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod(f4291x, Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    protected Class<?> v() throws ClassNotFoundException {
        return Class.forName(f4288u);
    }

    protected Constructor<?> w(Class<?> cls) throws NoSuchMethodException {
        return cls.getConstructor(new Class[0]);
    }

    protected Method x(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod(f4292y, new Class[0]);
    }
}
