package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class ResourcesCompat {
    @AnyRes
    public static final int ID_NULL = 0;

    /* renamed from: a  reason: collision with root package name */
    private static final String f4221a = "ResourcesCompat";

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f4222b = new ThreadLocal<>();

    /* renamed from: c  reason: collision with root package name */
    private static final WeakHashMap<ColorStateListCacheKey, SparseArray<ColorStateListCacheEntry>> f4223c = new WeakHashMap<>(0);

    /* renamed from: d  reason: collision with root package name */
    private static final Object f4224d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        @NonNull
        static ColorStateList a(@NonNull Resources resources, @ColorRes int i2, @Nullable Resources.Theme theme) {
            return resources.getColorStateList(i2, theme);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ColorStateListCacheEntry {

        /* renamed from: a  reason: collision with root package name */
        final ColorStateList f4225a;

        /* renamed from: b  reason: collision with root package name */
        final Configuration f4226b;

        ColorStateListCacheEntry(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration) {
            this.f4225a = colorStateList;
            this.f4226b = configuration;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class ColorStateListCacheKey {

        /* renamed from: a  reason: collision with root package name */
        final Resources f4227a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        final Resources.Theme f4228b;

        ColorStateListCacheKey(@NonNull Resources resources, @Nullable Resources.Theme theme) {
            this.f4227a = resources;
            this.f4228b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ColorStateListCacheKey.class != obj.getClass()) {
                return false;
            }
            ColorStateListCacheKey colorStateListCacheKey = (ColorStateListCacheKey) obj;
            return this.f4227a.equals(colorStateListCacheKey.f4227a) && ObjectsCompat.equals(this.f4228b, colorStateListCacheKey.f4228b);
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.f4227a, this.f4228b);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class FontCallback {
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public static Handler getHandler(@Nullable Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public final void callbackFailAsync(final int i2, @Nullable Handler handler) {
            getHandler(handler).post(new Runnable() { // from class: androidx.core.content.res.ResourcesCompat.FontCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    FontCallback.this.onFontRetrievalFailed(i2);
                }
            });
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public final void callbackSuccessAsync(final Typeface typeface, @Nullable Handler handler) {
            getHandler(handler).post(new Runnable() { // from class: androidx.core.content.res.ResourcesCompat.FontCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    FontCallback.this.onFontRetrieved(typeface);
                }
            });
        }

        public abstract void onFontRetrievalFailed(int i2);

        public abstract void onFontRetrieved(@NonNull Typeface typeface);
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    static class ImplApi29 {
        private ImplApi29() {
        }

        static float a(@NonNull Resources resources, @DimenRes int i2) {
            return resources.getFloat(i2);
        }
    }

    /* loaded from: classes.dex */
    public static final class ThemeCompat {

        @RequiresApi(23)
        /* loaded from: classes.dex */
        static class ImplApi23 {

            /* renamed from: a  reason: collision with root package name */
            private static final Object f4233a = new Object();

            /* renamed from: b  reason: collision with root package name */
            private static Method f4234b;

            /* renamed from: c  reason: collision with root package name */
            private static boolean f4235c;

            private ImplApi23() {
            }

            static void a(@NonNull Resources.Theme theme) {
                synchronized (f4233a) {
                    if (!f4235c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f4234b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                        }
                        f4235c = true;
                    }
                    Method method = f4234b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            f4234b = null;
                        }
                    }
                }
            }
        }

        @RequiresApi(29)
        /* loaded from: classes.dex */
        static class ImplApi29 {
            private ImplApi29() {
            }

            static void a(@NonNull Resources.Theme theme) {
                theme.rebase();
            }
        }

        private ThemeCompat() {
        }

        public static void rebase(@NonNull Resources.Theme theme) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                ImplApi29.a(theme);
            } else if (i2 >= 23) {
                ImplApi23.a(theme);
            }
        }
    }

    private ResourcesCompat() {
    }

    private static void a(@NonNull ColorStateListCacheKey colorStateListCacheKey, @ColorRes int i2, @NonNull ColorStateList colorStateList) {
        synchronized (f4224d) {
            WeakHashMap<ColorStateListCacheKey, SparseArray<ColorStateListCacheEntry>> weakHashMap = f4223c;
            SparseArray<ColorStateListCacheEntry> sparseArray = weakHashMap.get(colorStateListCacheKey);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(colorStateListCacheKey, sparseArray);
            }
            sparseArray.append(i2, new ColorStateListCacheEntry(colorStateList, colorStateListCacheKey.f4227a.getConfiguration()));
        }
    }

    @Nullable
    private static ColorStateList b(@NonNull ColorStateListCacheKey colorStateListCacheKey, @ColorRes int i2) {
        ColorStateListCacheEntry colorStateListCacheEntry;
        synchronized (f4224d) {
            SparseArray<ColorStateListCacheEntry> sparseArray = f4223c.get(colorStateListCacheKey);
            if (sparseArray != null && sparseArray.size() > 0 && (colorStateListCacheEntry = sparseArray.get(i2)) != null) {
                if (colorStateListCacheEntry.f4226b.equals(colorStateListCacheKey.f4227a.getConfiguration())) {
                    return colorStateListCacheEntry.f4225a;
                }
                sparseArray.remove(i2);
            }
            return null;
        }
    }

    @NonNull
    private static TypedValue c() {
        ThreadLocal<TypedValue> threadLocal = f4222b;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    @Nullable
    private static ColorStateList d(Resources resources, int i2, @Nullable Resources.Theme theme) {
        if (e(resources, i2)) {
            return null;
        }
        try {
            return ColorStateListInflaterCompat.createFromXml(resources, resources.getXml(i2), theme);
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean e(@NonNull Resources resources, @ColorRes int i2) {
        TypedValue c4 = c();
        resources.getValue(i2, c4, true);
        int i4 = c4.type;
        return i4 >= 28 && i4 <= 31;
    }

    private static Typeface f(@NonNull Context context, int i2, TypedValue typedValue, int i4, @Nullable FontCallback fontCallback, @Nullable Handler handler, boolean z3, boolean z4) {
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        Typeface g4 = g(context, resources, typedValue, i2, i4, fontCallback, handler, z3, z4);
        if (g4 == null && fontCallback == null && !z4) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i2) + " could not be retrieved.");
        }
        return g4;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface g(@androidx.annotation.NonNull android.content.Context r13, android.content.res.Resources r14, android.util.TypedValue r15, int r16, int r17, @androidx.annotation.Nullable androidx.core.content.res.ResourcesCompat.FontCallback r18, @androidx.annotation.Nullable android.os.Handler r19, boolean r20, boolean r21) {
        /*
            r2 = r14
            r0 = r15
            r3 = r16
            r4 = r17
            r8 = r18
            r9 = r19
            java.lang.CharSequence r1 = r0.string
            if (r1 == 0) goto L90
            java.lang.String r10 = r1.toString()
            java.lang.String r0 = "res/"
            boolean r0 = r10.startsWith(r0)
            r11 = -3
            r12 = 0
            if (r0 != 0) goto L22
            if (r8 == 0) goto L21
            r8.callbackFailAsync(r11, r9)
        L21:
            return r12
        L22:
            android.graphics.Typeface r0 = androidx.core.graphics.TypefaceCompat.findFromCache(r14, r3, r4)
            if (r0 == 0) goto L2e
            if (r8 == 0) goto L2d
            r8.callbackSuccessAsync(r0, r9)
        L2d:
            return r0
        L2e:
            if (r21 == 0) goto L31
            return r12
        L31:
            java.lang.String r0 = r10.toLowerCase()     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
            java.lang.String r1 = ".xml"
            boolean r0 = r0.endsWith(r1)     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
            if (r0 == 0) goto L5e
            android.content.res.XmlResourceParser r0 = r14.getXml(r3)     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
            androidx.core.content.res.FontResourcesParserCompat$FamilyResourceEntry r1 = androidx.core.content.res.FontResourcesParserCompat.parse(r0, r14)     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
            if (r1 != 0) goto L4d
            if (r8 == 0) goto L4c
            r8.callbackFailAsync(r11, r9)     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
        L4c:
            return r12
        L4d:
            r0 = r13
            r2 = r14
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r19
            r7 = r20
            android.graphics.Typeface r0 = androidx.core.graphics.TypefaceCompat.createFromResourcesFamilyXml(r0, r1, r2, r3, r4, r5, r6, r7)     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
            return r0
        L5e:
            r0 = r13
            android.graphics.Typeface r0 = androidx.core.graphics.TypefaceCompat.createFromResourcesFontFile(r13, r14, r3, r10, r4)     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
            if (r8 == 0) goto L6e
            if (r0 == 0) goto L6b
            r8.callbackSuccessAsync(r0, r9)     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
            goto L6e
        L6b:
            r8.callbackFailAsync(r11, r9)     // Catch: java.io.IOException -> L6f org.xmlpull.v1.XmlPullParserException -> L7d
        L6e:
            return r0
        L6f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Failed to read xml resource "
            r0.append(r1)
            r0.append(r10)
            goto L8a
        L7d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Failed to parse xml resource "
            r0.append(r1)
            r0.append(r10)
        L8a:
            if (r8 == 0) goto L8f
            r8.callbackFailAsync(r11, r9)
        L8f:
            return r12
        L90:
            android.content.res.Resources$NotFoundException r1 = new android.content.res.Resources$NotFoundException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Resource \""
            r4.append(r5)
            java.lang.String r2 = r14.getResourceName(r3)
            r4.append(r2)
            java.lang.String r2 = "\" ("
            r4.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r16)
            r4.append(r2)
            java.lang.String r2 = ") is not a Font: "
            r4.append(r2)
            r4.append(r15)
            java.lang.String r0 = r4.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ResourcesCompat.g(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.res.ResourcesCompat$FontCallback, android.os.Handler, boolean, boolean):android.graphics.Typeface");
    }

    @Nullable
    public static Typeface getCachedFont(@NonNull Context context, @FontRes int i2) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return f(context, i2, new TypedValue(), 0, null, null, false, true);
    }

    @ColorInt
    public static int getColor(@NonNull Resources resources, @ColorRes int i2, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 23) {
            return resources.getColor(i2, theme);
        }
        return resources.getColor(i2);
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Resources resources, @ColorRes int i2, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        ColorStateListCacheKey colorStateListCacheKey = new ColorStateListCacheKey(resources, theme);
        ColorStateList b4 = b(colorStateListCacheKey, i2);
        if (b4 != null) {
            return b4;
        }
        ColorStateList d4 = d(resources, i2, theme);
        if (d4 != null) {
            a(colorStateListCacheKey, i2, d4);
            return d4;
        } else if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.a(resources, i2, theme);
        } else {
            return resources.getColorStateList(i2);
        }
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Resources resources, @DrawableRes int i2, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i2, theme);
        }
        return resources.getDrawable(i2);
    }

    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources resources, @DrawableRes int i2, int i4, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 21) {
            return resources.getDrawableForDensity(i2, i4, theme);
        }
        if (i5 >= 15) {
            return resources.getDrawableForDensity(i2, i4);
        }
        return resources.getDrawable(i2);
    }

    public static float getFloat(@NonNull Resources resources, @DimenRes int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            return ImplApi29.a(resources, i2);
        }
        TypedValue c4 = c();
        resources.getValue(i2, c4, true);
        if (c4.type == 4) {
            return c4.getFloat();
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(c4.type) + " is not valid");
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int i2) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return f(context, i2, new TypedValue(), 0, null, null, false, false);
    }

    public static void getFont(@NonNull Context context, @FontRes int i2, @NonNull FontCallback fontCallback, @Nullable Handler handler) throws Resources.NotFoundException {
        Preconditions.checkNotNull(fontCallback);
        if (context.isRestricted()) {
            fontCallback.callbackFailAsync(-4, handler);
        } else {
            f(context, i2, new TypedValue(), 0, fontCallback, handler, false, false);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface getFont(@NonNull Context context, @FontRes int i2, TypedValue typedValue, int i4, @Nullable FontCallback fontCallback) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return f(context, i2, typedValue, i4, fontCallback, null, true, false);
    }
}
