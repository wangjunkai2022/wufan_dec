package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import com.facebook.common.statfs.StatFsHelper;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TypefaceCompatBaseImpl {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4301b = "TypefaceCompatBaseImpl";

    /* renamed from: c  reason: collision with root package name */
    private static final int f4302c = 0;
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<Long, FontResourcesParserCompat.FontFamilyFilesResourceEntry> f4303a = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface StyleExtractor<T> {
        int getWeight(T t3);

        boolean isItalic(T t3);
    }

    private void a(Typeface typeface, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry) {
        long g4 = g(typeface);
        if (g4 != 0) {
            this.f4303a.put(Long.valueOf(g4), fontFamilyFilesResourceEntry);
        }
    }

    private FontResourcesParserCompat.FontFileResourceEntry c(FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, int i2) {
        return (FontResourcesParserCompat.FontFileResourceEntry) d(fontFamilyFilesResourceEntry.getEntries(), i2, new StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry>() { // from class: androidx.core.graphics.TypefaceCompatBaseImpl.2
            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public int getWeight(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.getWeight();
            }

            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public boolean isItalic(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.isItalic();
            }
        });
    }

    private static <T> T d(T[] tArr, int i2, StyleExtractor<T> styleExtractor) {
        int i4 = (i2 & 1) == 0 ? StatFsHelper.f11741h : 700;
        boolean z3 = (i2 & 2) != 0;
        T t3 = null;
        int i5 = Integer.MAX_VALUE;
        for (T t4 : tArr) {
            int abs = (Math.abs(styleExtractor.getWeight(t4) - i4) * 2) + (styleExtractor.isItalic(t4) == z3 ? 0 : 1);
            if (t3 == null || i5 > abs) {
                t3 = t4;
                i5 = abs;
            }
        }
        return t3;
    }

    private static long g(@Nullable Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Typeface b(Context context, InputStream inputStream) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i2) {
        FontResourcesParserCompat.FontFileResourceEntry c4 = c(fontFamilyFilesResourceEntry, i2);
        if (c4 == null) {
            return null;
        }
        Typeface createFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, c4.getResourceId(), c4.getFileName(), i2);
        a(createFromResourcesFontFile, fontFamilyFilesResourceEntry);
        return createFromResourcesFontFile;
    }

    @Nullable
    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i2) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (fontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(e(fontInfoArr, i2).getUri());
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface b4 = b(context, inputStream);
            TypefaceCompatUtil.closeQuietly(inputStream);
            return b4;
        } catch (IOException unused2) {
            TypefaceCompatUtil.closeQuietly(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            TypefaceCompatUtil.closeQuietly(inputStream2);
            throw th;
        }
    }

    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i2, String str, int i4) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, resources, i2)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FontsContractCompat.FontInfo e(FontsContractCompat.FontInfo[] fontInfoArr, int i2) {
        return (FontsContractCompat.FontInfo) d(fontInfoArr, i2, new StyleExtractor<FontsContractCompat.FontInfo>() { // from class: androidx.core.graphics.TypefaceCompatBaseImpl.1
            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public int getWeight(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.getWeight();
            }

            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public boolean isItalic(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.isItalic();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public FontResourcesParserCompat.FontFamilyFilesResourceEntry f(Typeface typeface) {
        long g4 = g(typeface);
        if (g4 == 0) {
            return null;
        }
        return this.f4303a.get(Long.valueOf(g4));
    }
}
