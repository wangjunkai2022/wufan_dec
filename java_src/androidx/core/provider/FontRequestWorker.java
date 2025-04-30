package androidx.core.provider;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Consumer;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FontRequestWorker {

    /* renamed from: a  reason: collision with root package name */
    static final LruCache<String, Typeface> f4535a = new LruCache<>(16);

    /* renamed from: b  reason: collision with root package name */
    private static final ExecutorService f4536b = RequestExecutor.a("fonts-androidx", 10, 10000);

    /* renamed from: c  reason: collision with root package name */
    static final Object f4537c = new Object();
    @GuardedBy("LOCK")

    /* renamed from: d  reason: collision with root package name */
    static final SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> f4538d = new SimpleArrayMap<>();

    private FontRequestWorker() {
    }

    private static String a(@NonNull FontRequest fontRequest, int i2) {
        return fontRequest.b() + "-" + i2;
    }

    @SuppressLint({"WrongConstant"})
    private static int b(@NonNull FontsContractCompat.FontFamilyResult fontFamilyResult) {
        int i2 = 1;
        if (fontFamilyResult.getStatusCode() != 0) {
            return fontFamilyResult.getStatusCode() != 1 ? -3 : -2;
        }
        FontsContractCompat.FontInfo[] fonts = fontFamilyResult.getFonts();
        if (fonts != null && fonts.length != 0) {
            i2 = 0;
            for (FontsContractCompat.FontInfo fontInfo : fonts) {
                int resultCode = fontInfo.getResultCode();
                if (resultCode != 0) {
                    if (resultCode < 0) {
                        return -3;
                    }
                    return resultCode;
                }
            }
        }
        return i2;
    }

    @NonNull
    static TypefaceResult c(@NonNull String str, @NonNull Context context, @NonNull FontRequest fontRequest, int i2) {
        LruCache<String, Typeface> lruCache = f4535a;
        Typeface typeface = lruCache.get(str);
        if (typeface != null) {
            return new TypefaceResult(typeface);
        }
        try {
            FontsContractCompat.FontFamilyResult d4 = FontProvider.d(context, fontRequest, null);
            int b4 = b(d4);
            if (b4 != 0) {
                return new TypefaceResult(b4);
            }
            Typeface createFromFontInfo = TypefaceCompat.createFromFontInfo(context, null, d4.getFonts(), i2);
            if (createFromFontInfo != null) {
                lruCache.put(str, createFromFontInfo);
                return new TypefaceResult(createFromFontInfo);
            }
            return new TypefaceResult(-3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new TypefaceResult(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Typeface d(@NonNull final Context context, @NonNull final FontRequest fontRequest, final int i2, @Nullable Executor executor, @NonNull final CallbackWithHandler callbackWithHandler) {
        final String a4 = a(fontRequest, i2);
        Typeface typeface = f4535a.get(a4);
        if (typeface != null) {
            callbackWithHandler.b(new TypefaceResult(typeface));
            return typeface;
        }
        Consumer<TypefaceResult> consumer = new Consumer<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.2
            @Override // androidx.core.util.Consumer
            public void accept(TypefaceResult typefaceResult) {
                if (typefaceResult == null) {
                    typefaceResult = new TypefaceResult(-3);
                }
                CallbackWithHandler.this.b(typefaceResult);
            }
        };
        synchronized (f4537c) {
            SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap = f4538d;
            ArrayList<Consumer<TypefaceResult>> arrayList = simpleArrayMap.get(a4);
            if (arrayList != null) {
                arrayList.add(consumer);
                return null;
            }
            ArrayList<Consumer<TypefaceResult>> arrayList2 = new ArrayList<>();
            arrayList2.add(consumer);
            simpleArrayMap.put(a4, arrayList2);
            Callable<TypefaceResult> callable = new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public TypefaceResult call() {
                    try {
                        return FontRequestWorker.c(a4, context, fontRequest, i2);
                    } catch (Throwable unused) {
                        return new TypefaceResult(-3);
                    }
                }
            };
            if (executor == null) {
                executor = f4536b;
            }
            RequestExecutor.c(executor, callable, new Consumer<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.4
                @Override // androidx.core.util.Consumer
                public void accept(TypefaceResult typefaceResult) {
                    synchronized (FontRequestWorker.f4537c) {
                        SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap2 = FontRequestWorker.f4538d;
                        ArrayList<Consumer<TypefaceResult>> arrayList3 = simpleArrayMap2.get(a4);
                        if (arrayList3 == null) {
                            return;
                        }
                        simpleArrayMap2.remove(a4);
                        for (int i4 = 0; i4 < arrayList3.size(); i4++) {
                            arrayList3.get(i4).accept(typefaceResult);
                        }
                    }
                }
            });
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Typeface e(@NonNull final Context context, @NonNull final FontRequest fontRequest, @NonNull CallbackWithHandler callbackWithHandler, final int i2, int i4) {
        final String a4 = a(fontRequest, i2);
        Typeface typeface = f4535a.get(a4);
        if (typeface != null) {
            callbackWithHandler.b(new TypefaceResult(typeface));
            return typeface;
        } else if (i4 == -1) {
            TypefaceResult c4 = c(a4, context, fontRequest, i2);
            callbackWithHandler.b(c4);
            return c4.f4549a;
        } else {
            try {
                TypefaceResult typefaceResult = (TypefaceResult) RequestExecutor.d(f4536b, new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.concurrent.Callable
                    public TypefaceResult call() {
                        return FontRequestWorker.c(a4, context, fontRequest, i2);
                    }
                }, i4);
                callbackWithHandler.b(typefaceResult);
                return typefaceResult.f4549a;
            } catch (InterruptedException unused) {
                callbackWithHandler.b(new TypefaceResult(-3));
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f() {
        f4535a.evictAll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class TypefaceResult {

        /* renamed from: a  reason: collision with root package name */
        final Typeface f4549a;

        /* renamed from: b  reason: collision with root package name */
        final int f4550b;

        TypefaceResult(int i2) {
            this.f4549a = null;
            this.f4550b = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @SuppressLint({"WrongConstant"})
        public boolean a() {
            return this.f4550b == 0;
        }

        @SuppressLint({"WrongConstant"})
        TypefaceResult(@NonNull Typeface typeface) {
            this.f4549a = typeface;
            this.f4550b = 0;
        }
    }
}
