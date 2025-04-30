package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import net.lingala.zip4j.util.e;
@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {

    /* renamed from: d  reason: collision with root package name */
    private static final String f4270d = "TypefaceCompatApi21Impl";

    /* renamed from: e  reason: collision with root package name */
    private static final String f4271e = "android.graphics.FontFamily";

    /* renamed from: f  reason: collision with root package name */
    private static final String f4272f = "addFontWeightStyle";

    /* renamed from: g  reason: collision with root package name */
    private static final String f4273g = "createFromFamiliesWithDefault";

    /* renamed from: h  reason: collision with root package name */
    private static Class<?> f4274h;

    /* renamed from: i  reason: collision with root package name */
    private static Constructor<?> f4275i;

    /* renamed from: j  reason: collision with root package name */
    private static Method f4276j;

    /* renamed from: k  reason: collision with root package name */
    private static Method f4277k;

    /* renamed from: l  reason: collision with root package name */
    private static boolean f4278l;

    private static boolean h(Object obj, String str, int i2, boolean z3) {
        k();
        try {
            return ((Boolean) f4276j.invoke(obj, str, Integer.valueOf(i2), Boolean.valueOf(z3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static Typeface i(Object obj) {
        k();
        try {
            Object newInstance = Array.newInstance(f4274h, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f4277k.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    private File j(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    private static void k() {
        Method method;
        Class<?> cls;
        Method method2;
        if (f4278l) {
            return;
        }
        f4278l = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName(f4271e);
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod(f4272f, String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod(f4273g, Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            method = null;
            cls = null;
            method2 = null;
        }
        f4275i = constructor;
        f4274h = cls;
        f4276j = method2;
        f4277k = method;
    }

    private static Object l() {
        k();
        try {
            return f4275i.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i2) {
        FontResourcesParserCompat.FontFileResourceEntry[] entries;
        Object l4 = l();
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            File tempFile = TypefaceCompatUtil.getTempFile(context);
            if (tempFile == null) {
                return null;
            }
            try {
                if (!TypefaceCompatUtil.copyToFile(tempFile, resources, fontFileResourceEntry.getResourceId())) {
                    return null;
                }
                if (!h(l4, tempFile.getPath(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                    return null;
                }
                tempFile.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                tempFile.delete();
            }
        }
        return i(l4);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i2) {
        if (fontInfoArr.length < 1) {
            return null;
        }
        FontsContractCompat.FontInfo e4 = e(fontInfoArr, i2);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(e4.getUri(), e.f73017f0, cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            File j4 = j(openFileDescriptor);
            if (j4 != null && j4.canRead()) {
                Typeface createFromFile = Typeface.createFromFile(j4);
                openFileDescriptor.close();
                return createFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            Typeface b4 = super.b(context, fileInputStream);
            fileInputStream.close();
            openFileDescriptor.close();
            return b4;
        } catch (IOException unused) {
            return null;
        }
    }
}
