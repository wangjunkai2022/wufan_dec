package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Preconditions;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public final class EditorInfoCompat {
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5008a = new String[0];

    /* renamed from: b  reason: collision with root package name */
    private static final String f5009b = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";

    /* renamed from: c  reason: collision with root package name */
    private static final String f5010c = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";

    /* renamed from: d  reason: collision with root package name */
    private static final String f5011d = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT";

    /* renamed from: e  reason: collision with root package name */
    private static final String f5012e = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD";

    /* renamed from: f  reason: collision with root package name */
    private static final String f5013f = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END";
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    static final int f5014g = 2048;
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    static final int f5015h = 1024;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        static CharSequence a(@NonNull EditorInfo editorInfo, int i2) {
            return editorInfo.getInitialSelectedText(i2);
        }

        static CharSequence b(@NonNull EditorInfo editorInfo, int i2, int i4) {
            return editorInfo.getInitialTextAfterCursor(i2, i4);
        }

        static CharSequence c(@NonNull EditorInfo editorInfo, int i2, int i4) {
            return editorInfo.getInitialTextBeforeCursor(i2, i4);
        }

        static void d(@NonNull EditorInfo editorInfo, CharSequence charSequence, int i2) {
            editorInfo.setInitialSurroundingSubText(charSequence, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            return 1;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return 0;
        }
        boolean containsKey = bundle.containsKey(f5009b);
        boolean containsKey2 = editorInfo.extras.containsKey(f5010c);
        if (containsKey && containsKey2) {
            return 4;
        }
        if (containsKey) {
            return 3;
        }
        return containsKey2 ? 2 : 0;
    }

    private static boolean b(CharSequence charSequence, int i2, int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                return false;
            }
            return Character.isHighSurrogate(charSequence.charAt(i2));
        }
        return Character.isLowSurrogate(charSequence.charAt(i2));
    }

    private static boolean c(int i2) {
        int i4 = i2 & 4095;
        return i4 == 129 || i4 == 225 || i4 == 18;
    }

    private static void d(EditorInfo editorInfo, CharSequence charSequence, int i2, int i4) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence(f5011d, charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt(f5012e, i2);
        editorInfo.extras.putInt(f5013f, i4);
    }

    private static void e(EditorInfo editorInfo, CharSequence charSequence, int i2, int i4) {
        CharSequence subSequence;
        int i5 = i4 - i2;
        int i6 = i5 > 1024 ? 0 : i5;
        int i7 = 2048 - i6;
        double d4 = i7;
        Double.isNaN(d4);
        int min = Math.min(charSequence.length() - i4, i7 - Math.min(i2, (int) (d4 * 0.8d)));
        int min2 = Math.min(i2, i7 - min);
        int i8 = i2 - min2;
        if (b(charSequence, i8, 0)) {
            i8++;
            min2--;
        }
        if (b(charSequence, (i4 + min) - 1, 1)) {
            min--;
        }
        int i9 = min2 + i6 + min;
        if (i6 != i5) {
            subSequence = TextUtils.concat(charSequence.subSequence(i8, i8 + min2), charSequence.subSequence(i4, min + i4));
        } else {
            subSequence = charSequence.subSequence(i8, i9 + i8);
        }
        int i10 = min2 + 0;
        d(editorInfo, subSequence, i10, i6 + i10);
    }

    @NonNull
    public static String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : f5008a;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return f5008a;
        }
        String[] stringArray = bundle.getStringArray(f5009b);
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray(f5010c);
        }
        return stringArray != null ? stringArray : f5008a;
    }

    @Nullable
    public static CharSequence getInitialSelectedText(@NonNull EditorInfo editorInfo, int i2) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.a(editorInfo, i2);
        }
        if (editorInfo.extras == null) {
            return null;
        }
        int min = Math.min(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int max = Math.max(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int i4 = editorInfo.extras.getInt(f5012e);
        int i5 = editorInfo.extras.getInt(f5013f);
        int i6 = max - min;
        if (editorInfo.initialSelStart < 0 || editorInfo.initialSelEnd < 0 || i5 - i4 != i6 || (charSequence = editorInfo.extras.getCharSequence(f5011d)) == null) {
            return null;
        }
        if ((i2 & 1) != 0) {
            return charSequence.subSequence(i4, i5);
        }
        return TextUtils.substring(charSequence, i4, i5);
    }

    @Nullable
    public static CharSequence getInitialTextAfterCursor(@NonNull EditorInfo editorInfo, int i2, int i4) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.b(editorInfo, i2, i4);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(f5011d)) == null) {
            return null;
        }
        int i5 = editorInfo.extras.getInt(f5013f);
        int min = Math.min(i2, charSequence.length() - i5);
        if ((i4 & 1) != 0) {
            return charSequence.subSequence(i5, min + i5);
        }
        return TextUtils.substring(charSequence, i5, min + i5);
    }

    @Nullable
    public static CharSequence getInitialTextBeforeCursor(@NonNull EditorInfo editorInfo, int i2, int i4) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.c(editorInfo, i2, i4);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(f5011d)) == null) {
            return null;
        }
        int i5 = editorInfo.extras.getInt(f5012e);
        int min = Math.min(i2, i5);
        if ((i4 & 1) != 0) {
            return charSequence.subSequence(i5 - min, i5);
        }
        return TextUtils.substring(charSequence, i5 - min, i5);
    }

    public static void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray(f5009b, strArr);
        editorInfo.extras.putStringArray(f5010c, strArr);
    }

    public static void setInitialSurroundingSubText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence, int i2) {
        Preconditions.checkNotNull(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.d(editorInfo, charSequence, i2);
            return;
        }
        int i4 = editorInfo.initialSelStart;
        int i5 = editorInfo.initialSelEnd;
        int i6 = i4 > i5 ? i5 - i2 : i4 - i2;
        int i7 = i4 > i5 ? i4 - i2 : i5 - i2;
        int length = charSequence.length();
        if (i2 >= 0 && i6 >= 0 && i7 <= length) {
            if (c(editorInfo.inputType)) {
                d(editorInfo, null, 0, 0);
                return;
            } else if (length <= 2048) {
                d(editorInfo, charSequence, i6, i7);
                return;
            } else {
                e(editorInfo, charSequence, i6, i7);
                return;
            }
        }
        d(editorInfo, null, 0, 0);
    }

    public static void setInitialSurroundingText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.d(editorInfo, charSequence, 0);
        } else {
            setInitialSurroundingSubText(editorInfo, charSequence, 0);
        }
    }
}
