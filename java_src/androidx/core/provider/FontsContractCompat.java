package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.Map;
/* loaded from: classes.dex */
public class FontsContractCompat {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static final String PARCEL_FONT_RESULTS = "font_results";
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    static final int f4551a = -1;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    static final int f4552b = -2;

    /* loaded from: classes.dex */
    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";
    }

    /* loaded from: classes.dex */
    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;

        /* renamed from: a  reason: collision with root package name */
        private final int f4553a;

        /* renamed from: b  reason: collision with root package name */
        private final FontInfo[] f4554b;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @Deprecated
        public FontFamilyResult(int i2, @Nullable FontInfo[] fontInfoArr) {
            this.f4553a = i2;
            this.f4554b = fontInfoArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static FontFamilyResult a(int i2, @Nullable FontInfo[] fontInfoArr) {
            return new FontFamilyResult(i2, fontInfoArr);
        }

        public FontInfo[] getFonts() {
            return this.f4554b;
        }

        public int getStatusCode() {
            return this.f4553a;
        }
    }

    /* loaded from: classes.dex */
    public static class FontInfo {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f4555a;

        /* renamed from: b  reason: collision with root package name */
        private final int f4556b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4557c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f4558d;

        /* renamed from: e  reason: collision with root package name */
        private final int f4559e;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @Deprecated
        public FontInfo(@NonNull Uri uri, @IntRange(from = 0) int i2, @IntRange(from = 1, to = 1000) int i4, boolean z3, int i5) {
            this.f4555a = (Uri) Preconditions.checkNotNull(uri);
            this.f4556b = i2;
            this.f4557c = i4;
            this.f4558d = z3;
            this.f4559e = i5;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static FontInfo a(@NonNull Uri uri, @IntRange(from = 0) int i2, @IntRange(from = 1, to = 1000) int i4, boolean z3, int i5) {
            return new FontInfo(uri, i2, i4, z3, i5);
        }

        public int getResultCode() {
            return this.f4559e;
        }

        @IntRange(from = 0)
        public int getTtcIndex() {
            return this.f4556b;
        }

        @NonNull
        public Uri getUri() {
            return this.f4555a;
        }

        @IntRange(from = 1, to = 1000)
        public int getWeight() {
            return this.f4557c;
        }

        public boolean isItalic() {
            return this.f4558d;
        }
    }

    /* loaded from: classes.dex */
    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @Deprecated
        public static final int RESULT_OK = 0;

        /* renamed from: a  reason: collision with root package name */
        static final int f4560a = 0;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /* loaded from: classes.dex */
        public @interface FontRequestFailReason {
        }

        public void onTypefaceRequestFailed(int i2) {
        }

        public void onTypefaceRetrieved(Typeface typeface) {
        }
    }

    private FontsContractCompat() {
    }

    @Nullable
    public static Typeface buildTypeface(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontInfo[] fontInfoArr) {
        return TypefaceCompat.createFromFontInfo(context, cancellationSignal, fontInfoArr, 0);
    }

    @NonNull
    public static FontFamilyResult fetchFonts(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        return FontProvider.d(context, fontRequest, cancellationSignal);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static Typeface getFontSync(Context context, FontRequest fontRequest, @Nullable ResourcesCompat.FontCallback fontCallback, @Nullable Handler handler, boolean z3, int i2, int i4) {
        return requestFont(context, fontRequest, i4, z3, i2, ResourcesCompat.FontCallback.getHandler(handler), new TypefaceCompat.ResourcesCallbackAdapter(fontCallback));
    }

    @VisibleForTesting
    @Deprecated
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ProviderInfo getProvider(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager.NameNotFoundException {
        return FontProvider.e(packageManager, fontRequest, resources);
    }

    @RequiresApi(19)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static Map<Uri, ByteBuffer> prepareFontData(Context context, FontInfo[] fontInfoArr, CancellationSignal cancellationSignal) {
        return TypefaceCompatUtil.readFontInfoIntoByteBuffer(context, fontInfoArr, cancellationSignal);
    }

    public static void requestFont(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontRequestCallback fontRequestCallback, @NonNull Handler handler) {
        CallbackWithHandler callbackWithHandler = new CallbackWithHandler(fontRequestCallback);
        FontRequestWorker.d(context.getApplicationContext(), fontRequest, 0, RequestExecutor.b(handler), callbackWithHandler);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static void resetCache() {
        FontRequestWorker.f();
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public static void resetTypefaceCache() {
        FontRequestWorker.f();
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Typeface requestFont(@NonNull Context context, @NonNull FontRequest fontRequest, int i2, boolean z3, @IntRange(from = 0) int i4, @NonNull Handler handler, @NonNull FontRequestCallback fontRequestCallback) {
        CallbackWithHandler callbackWithHandler = new CallbackWithHandler(fontRequestCallback, handler);
        if (z3) {
            return FontRequestWorker.e(context, fontRequest, callbackWithHandler, i2, i4);
        }
        return FontRequestWorker.d(context, fontRequest, i2, null, callbackWithHandler);
    }
}
