package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.graphics.ColorUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class ThemeUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1450a = "ThemeUtils";

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f1451b = new ThreadLocal<>();

    /* renamed from: c  reason: collision with root package name */
    static final int[] f1452c = {-16842910};

    /* renamed from: d  reason: collision with root package name */
    static final int[] f1453d = {16842908};

    /* renamed from: e  reason: collision with root package name */
    static final int[] f1454e = {16843518};

    /* renamed from: f  reason: collision with root package name */
    static final int[] f1455f = {16842919};

    /* renamed from: g  reason: collision with root package name */
    static final int[] f1456g = {16842912};

    /* renamed from: h  reason: collision with root package name */
    static final int[] f1457h = {16842913};

    /* renamed from: i  reason: collision with root package name */
    static final int[] f1458i = {-16842919, -16842908};

    /* renamed from: j  reason: collision with root package name */
    static final int[] f1459j = new int[0];

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f1460k = new int[1];

    private ThemeUtils() {
    }

    static int a(@NonNull Context context, int i2, float f4) {
        int themeAttrColor = getThemeAttrColor(context, i2);
        return ColorUtils.setAlphaComponent(themeAttrColor, Math.round(Color.alpha(themeAttrColor) * f4));
    }

    private static TypedValue b() {
        ThreadLocal<TypedValue> threadLocal = f1451b;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    public static void checkAppCompatTheme(@NonNull View view, @NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowActionBar)) {
                StringBuilder sb = new StringBuilder();
                sb.append("View ");
                sb.append(view.getClass());
                sb.append(" is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public static ColorStateList createDisabledStateList(int i2, int i4) {
        return new ColorStateList(new int[][]{f1452c, f1459j}, new int[]{i4, i2});
    }

    public static int getDisabledThemeAttrColor(@NonNull Context context, int i2) {
        ColorStateList themeAttrColorStateList = getThemeAttrColorStateList(context, i2);
        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
            return themeAttrColorStateList.getColorForState(f1452c, themeAttrColorStateList.getDefaultColor());
        }
        TypedValue b4 = b();
        context.getTheme().resolveAttribute(16842803, b4, true);
        return a(context, i2, b4.getFloat());
    }

    public static int getThemeAttrColor(@NonNull Context context, int i2) {
        int[] iArr = f1460k;
        iArr[0] = i2;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Nullable
    public static ColorStateList getThemeAttrColorStateList(@NonNull Context context, int i2) {
        int[] iArr = f1460k;
        iArr[0] = i2;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColorStateList(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
