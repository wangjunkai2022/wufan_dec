package androidx.core.graphics;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
/* loaded from: classes.dex */
public final class PaintCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4257a = "\udfffd";

    /* renamed from: b  reason: collision with root package name */
    private static final String f4258b = "m";

    /* renamed from: c  reason: collision with root package name */
    private static final ThreadLocal<Pair<Rect, Rect>> f4259c = new ThreadLocal<>();

    private PaintCompat() {
    }

    private static Pair<Rect, Rect> a() {
        ThreadLocal<Pair<Rect, Rect>> threadLocal = f4259c;
        Pair<Rect, Rect> pair = threadLocal.get();
        if (pair == null) {
            Pair<Rect, Rect> pair2 = new Pair<>(new Rect(), new Rect());
            threadLocal.set(pair2);
            return pair2;
        }
        pair.first.setEmpty();
        pair.second.setEmpty();
        return pair;
    }

    public static boolean hasGlyph(@NonNull Paint paint, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return paint.hasGlyph(str);
        }
        int length = str.length();
        if (length == 1 && Character.isWhitespace(str.charAt(0))) {
            return true;
        }
        float measureText = paint.measureText(f4257a);
        float measureText2 = paint.measureText(f4258b);
        float measureText3 = paint.measureText(str);
        float f4 = 0.0f;
        if (measureText3 == 0.0f) {
            return false;
        }
        if (str.codePointCount(0, str.length()) > 1) {
            if (measureText3 > measureText2 * 2.0f) {
                return false;
            }
            int i2 = 0;
            while (i2 < length) {
                int charCount = Character.charCount(str.codePointAt(i2)) + i2;
                f4 += paint.measureText(str, i2, charCount);
                i2 = charCount;
            }
            if (measureText3 >= f4) {
                return false;
            }
        }
        if (measureText3 != measureText) {
            return true;
        }
        Pair<Rect, Rect> a4 = a();
        paint.getTextBounds(f4257a, 0, 2, a4.first);
        paint.getTextBounds(str, 0, length, a4.second);
        return !a4.first.equals(a4.second);
    }

    public static boolean setBlendMode(@NonNull Paint paint, @Nullable BlendModeCompat blendModeCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            paint.setBlendMode(blendModeCompat != null ? BlendModeUtils.a(blendModeCompat) : null);
            return true;
        } else if (blendModeCompat != null) {
            PorterDuff.Mode b4 = BlendModeUtils.b(blendModeCompat);
            paint.setXfermode(b4 != null ? new PorterDuffXfermode(b4) : null);
            return b4 != null;
        } else {
            paint.setXfermode(null);
            return true;
        }
    }
}
