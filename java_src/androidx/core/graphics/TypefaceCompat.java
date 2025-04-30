package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontsContractCompat;
/* loaded from: classes.dex */
public class TypefaceCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final TypefaceCompatBaseImpl f4267a;

    /* renamed from: b  reason: collision with root package name */
    private static final LruCache<String, Typeface> f4268b;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class ResourcesCallbackAdapter extends FontsContractCompat.FontRequestCallback {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private ResourcesCompat.FontCallback f4269b;

        public ResourcesCallbackAdapter(@Nullable ResourcesCompat.FontCallback fontCallback) {
            this.f4269b = fontCallback;
        }

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public void onTypefaceRequestFailed(int i2) {
            ResourcesCompat.FontCallback fontCallback = this.f4269b;
            if (fontCallback != null) {
                fontCallback.onFontRetrievalFailed(i2);
            }
        }

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public void onTypefaceRetrieved(@NonNull Typeface typeface) {
            ResourcesCompat.FontCallback fontCallback = this.f4269b;
            if (fontCallback != null) {
                fontCallback.onFontRetrieved(typeface);
            }
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            f4267a = new TypefaceCompatApi29Impl();
        } else if (i2 >= 28) {
            f4267a = new TypefaceCompatApi28Impl();
        } else if (i2 >= 26) {
            f4267a = new TypefaceCompatApi26Impl();
        } else if (i2 >= 24 && TypefaceCompatApi24Impl.isUsable()) {
            f4267a = new TypefaceCompatApi24Impl();
        } else if (i2 >= 21) {
            f4267a = new TypefaceCompatApi21Impl();
        } else {
            f4267a = new TypefaceCompatBaseImpl();
        }
        f4268b = new LruCache<>(16);
    }

    private TypefaceCompat() {
    }

    private static String a(Resources resources, int i2, int i4) {
        return resources.getResourcePackageName(i2) + "-" + i2 + "-" + i4;
    }

    @Nullable
    private static Typeface b(Context context, Typeface typeface, int i2) {
        TypefaceCompatBaseImpl typefaceCompatBaseImpl = f4267a;
        FontResourcesParserCompat.FontFamilyFilesResourceEntry f4 = typefaceCompatBaseImpl.f(typeface);
        if (f4 == null) {
            return null;
        }
        return typefaceCompatBaseImpl.createFromFontFamilyFilesResourceEntry(context, f4, context.getResources(), i2);
    }

    private static Typeface c(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface create = Typeface.create(str, 0);
        Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
        if (create == null || create.equals(create2)) {
            return null;
        }
        return create;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    public static void clearCache() {
        f4268b.evictAll();
    }

    @NonNull
    public static Typeface create(@NonNull Context context, @Nullable Typeface typeface, int i2) {
        Typeface b4;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (b4 = b(context, typeface, i2)) == null) ? Typeface.create(typeface, i2) : b4;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface createFromFontInfo(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i2) {
        return f4267a.createFromFontInfo(context, cancellationSignal, fontInfoArr, i2);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface createFromResourcesFamilyXml(@NonNull Context context, @NonNull FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry, @NonNull Resources resources, int i2, int i4, @Nullable ResourcesCompat.FontCallback fontCallback, @Nullable Handler handler, boolean z3) {
        Typeface createFromFontFamilyFilesResourceEntry;
        if (familyResourceEntry instanceof FontResourcesParserCompat.ProviderResourceEntry) {
            FontResourcesParserCompat.ProviderResourceEntry providerResourceEntry = (FontResourcesParserCompat.ProviderResourceEntry) familyResourceEntry;
            Typeface c4 = c(providerResourceEntry.getSystemFontFamilyName());
            if (c4 != null) {
                if (fontCallback != null) {
                    fontCallback.callbackSuccessAsync(c4, handler);
                }
                return c4;
            }
            createFromFontFamilyFilesResourceEntry = FontsContractCompat.requestFont(context, providerResourceEntry.getRequest(), i4, !z3 ? fontCallback != null : providerResourceEntry.getFetchStrategy() != 0, z3 ? providerResourceEntry.getTimeout() : -1, ResourcesCompat.FontCallback.getHandler(handler), new ResourcesCallbackAdapter(fontCallback));
        } else {
            createFromFontFamilyFilesResourceEntry = f4267a.createFromFontFamilyFilesResourceEntry(context, (FontResourcesParserCompat.FontFamilyFilesResourceEntry) familyResourceEntry, resources, i4);
            if (fontCallback != null) {
                if (createFromFontFamilyFilesResourceEntry != null) {
                    fontCallback.callbackSuccessAsync(createFromFontFamilyFilesResourceEntry, handler);
                } else {
                    fontCallback.callbackFailAsync(-3, handler);
                }
            }
        }
        if (createFromFontFamilyFilesResourceEntry != null) {
            f4268b.put(a(resources, i2, i4), createFromFontFamilyFilesResourceEntry);
        }
        return createFromFontFamilyFilesResourceEntry;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface createFromResourcesFontFile(@NonNull Context context, @NonNull Resources resources, int i2, String str, int i4) {
        Typeface createFromResourcesFontFile = f4267a.createFromResourcesFontFile(context, resources, i2, str, i4);
        if (createFromResourcesFontFile != null) {
            f4268b.put(a(resources, i2, i4), createFromResourcesFontFile);
        }
        return createFromResourcesFontFile;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface findFromCache(@NonNull Resources resources, int i2, int i4) {
        return f4268b.get(a(resources, i2, i4));
    }
}
