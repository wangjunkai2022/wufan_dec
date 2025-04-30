package d1;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.TypedValue;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PathParser;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.resources.b;
/* compiled from: MotionUtils.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f65134a = "cubic-bezier";

    /* renamed from: b  reason: collision with root package name */
    private static final String f65135b = "path";

    /* renamed from: c  reason: collision with root package name */
    private static final String f65136c = "(";

    /* renamed from: d  reason: collision with root package name */
    private static final String f65137d = ")";

    private a() {
    }

    private static float a(String[] strArr, int i2) {
        float parseFloat = Float.parseFloat(strArr[i2]);
        if (parseFloat < 0.0f || parseFloat > 1.0f) {
            throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
        }
        return parseFloat;
    }

    private static String b(String str, String str2) {
        return str.substring(str2.length() + 1, str.length() - 1);
    }

    private static boolean c(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(f65136c);
        return str.startsWith(sb.toString()) && str.endsWith(f65137d);
    }

    public static int d(@NonNull Context context, @AttrRes int i2, int i4) {
        return b.e(context, i2, i4);
    }

    @NonNull
    public static TimeInterpolator e(@NonNull Context context, @AttrRes int i2, @NonNull TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i2, typedValue, true)) {
            if (typedValue.type == 3) {
                String valueOf = String.valueOf(typedValue.string);
                if (c(valueOf, f65134a)) {
                    String[] split = b(valueOf, f65134a).split(",");
                    if (split.length == 4) {
                        return PathInterpolatorCompat.create(a(split, 0), a(split, 1), a(split, 2), a(split, 3));
                    }
                    throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
                } else if (c(valueOf, f65135b)) {
                    return PathInterpolatorCompat.create(PathParser.createPathFromPathData(b(valueOf, f65135b)));
                } else {
                    throw new IllegalArgumentException("Invalid motion easing type: " + valueOf);
                }
            }
            throw new IllegalArgumentException("Motion easing theme attribute must be a string");
        }
        return timeInterpolator;
    }
}
