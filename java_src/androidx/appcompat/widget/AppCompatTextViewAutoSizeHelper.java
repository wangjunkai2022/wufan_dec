package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatTextViewAutoSizeHelper {

    /* renamed from: l  reason: collision with root package name */
    private static final String f1114l = "ACTVAutoSizeHelper";

    /* renamed from: n  reason: collision with root package name */
    private static final int f1116n = 12;

    /* renamed from: o  reason: collision with root package name */
    private static final int f1117o = 112;

    /* renamed from: p  reason: collision with root package name */
    private static final int f1118p = 1;

    /* renamed from: s  reason: collision with root package name */
    static final float f1121s = -1.0f;

    /* renamed from: t  reason: collision with root package name */
    private static final int f1122t = 1048576;

    /* renamed from: a  reason: collision with root package name */
    private int f1123a = 0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1124b = false;

    /* renamed from: c  reason: collision with root package name */
    private float f1125c = f1121s;

    /* renamed from: d  reason: collision with root package name */
    private float f1126d = f1121s;

    /* renamed from: e  reason: collision with root package name */
    private float f1127e = f1121s;

    /* renamed from: f  reason: collision with root package name */
    private int[] f1128f = new int[0];

    /* renamed from: g  reason: collision with root package name */
    private boolean f1129g = false;

    /* renamed from: h  reason: collision with root package name */
    private TextPaint f1130h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final TextView f1131i;

    /* renamed from: j  reason: collision with root package name */
    private final Context f1132j;

    /* renamed from: k  reason: collision with root package name */
    private final Impl f1133k;

    /* renamed from: m  reason: collision with root package name */
    private static final RectF f1115m = new RectF();
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: q  reason: collision with root package name */
    private static ConcurrentHashMap<String, Method> f1119q = new ConcurrentHashMap<>();
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: r  reason: collision with root package name */
    private static ConcurrentHashMap<String, Field> f1120r = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Impl {
        Impl() {
        }

        void a(StaticLayout.Builder builder, TextView textView) {
        }

        boolean b(TextView textView) {
            return ((Boolean) AppCompatTextViewAutoSizeHelper.r(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    private static class Impl23 extends Impl {
        Impl23() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) AppCompatTextViewAutoSizeHelper.r(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static class Impl29 extends Impl23 {
        Impl29() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl23, androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        boolean b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextViewAutoSizeHelper(@NonNull TextView textView) {
        this.f1131i = textView;
        this.f1132j = textView.getContext();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            this.f1133k = new Impl29();
        } else if (i2 >= 23) {
            this.f1133k = new Impl23();
        } else {
            this.f1133k = new Impl();
        }
    }

    private void A(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = typedArray.getDimensionPixelSize(i2, -1);
            }
            this.f1128f = c(iArr);
            B();
        }
    }

    private boolean B() {
        int[] iArr = this.f1128f;
        int length = iArr.length;
        boolean z3 = length > 0;
        this.f1129g = z3;
        if (z3) {
            this.f1123a = 1;
            this.f1126d = iArr[0];
            this.f1127e = iArr[length - 1];
            this.f1125c = f1121s;
        }
        return z3;
    }

    private boolean C(int i2, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f1131i.getText();
        TransformationMethod transformationMethod = this.f1131i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f1131i)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1131i.getMaxLines() : -1;
        q(i2);
        StaticLayout e4 = e(text, (Layout.Alignment) r(this.f1131i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (e4.getLineCount() <= maxLines && e4.getLineEnd(e4.getLineCount() - 1) == text.length())) && ((float) e4.getHeight()) <= rectF.bottom;
    }

    private boolean D() {
        return !(this.f1131i instanceof AppCompatEditText);
    }

    private void E(float f4, float f5, float f6) throws IllegalArgumentException {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f4 + "px) is less or equal to (0px)");
        } else if (f5 <= f4) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f5 + "px) is less or equal to minimum auto-size text size (" + f4 + "px)");
        } else if (f6 > 0.0f) {
            this.f1123a = 1;
            this.f1126d = f4;
            this.f1127e = f5;
            this.f1125c = f6;
            this.f1129g = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f6 + "px) is less or equal to (0px)");
        }
    }

    private static <T> T a(@NonNull Object obj, @NonNull String str, @NonNull T t3) {
        try {
            Field o3 = o(str);
            return o3 == null ? t3 : (T) o3.get(obj);
        } catch (IllegalAccessException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to access TextView#");
            sb.append(str);
            sb.append(" member");
            return t3;
        }
    }

    private int[] c(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr2[i4] = ((Integer) arrayList.get(i4)).intValue();
        }
        return iArr2;
    }

    private void d() {
        this.f1123a = 0;
        this.f1126d = f1121s;
        this.f1127e = f1121s;
        this.f1125c = f1121s;
        this.f1128f = new int[0];
        this.f1124b = false;
    }

    @RequiresApi(23)
    private StaticLayout f(CharSequence charSequence, Layout.Alignment alignment, int i2, int i4) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1130h, i2);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f1131i.getLineSpacingExtra(), this.f1131i.getLineSpacingMultiplier()).setIncludePad(this.f1131i.getIncludeFontPadding()).setBreakStrategy(this.f1131i.getBreakStrategy()).setHyphenationFrequency(this.f1131i.getHyphenationFrequency());
        if (i4 == -1) {
            i4 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i4);
        try {
            this.f1133k.a(obtain, this.f1131i);
        } catch (ClassCastException unused) {
        }
        return obtain.build();
    }

    private StaticLayout g(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        return new StaticLayout(charSequence, this.f1130h, i2, alignment, ((Float) a(this.f1131i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) a(this.f1131i, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) a(this.f1131i, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    @RequiresApi(16)
    private StaticLayout h(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        return new StaticLayout(charSequence, this.f1130h, i2, alignment, this.f1131i.getLineSpacingMultiplier(), this.f1131i.getLineSpacingExtra(), this.f1131i.getIncludeFontPadding());
    }

    private int i(RectF rectF) {
        int length = this.f1128f.length;
        if (length != 0) {
            int i2 = length - 1;
            int i4 = 1;
            int i5 = 0;
            while (i4 <= i2) {
                int i6 = (i4 + i2) / 2;
                if (C(this.f1128f[i6], rectF)) {
                    int i7 = i6 + 1;
                    i5 = i4;
                    i4 = i7;
                } else {
                    i5 = i6 - 1;
                    i2 = i5;
                }
            }
            return this.f1128f[i5];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    @Nullable
    private static Field o(@NonNull String str) {
        try {
            Field field = f1120r.get(str);
            if (field == null && (field = TextView.class.getDeclaredField(str)) != null) {
                field.setAccessible(true);
                f1120r.put(str, field);
            }
            return field;
        } catch (NoSuchFieldException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to access TextView#");
            sb.append(str);
            sb.append(" member");
            return null;
        }
    }

    @Nullable
    private static Method p(@NonNull String str) {
        try {
            Method method = f1119q.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                f1119q.put(str, method);
            }
            return method;
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to retrieve TextView#");
            sb.append(str);
            sb.append("() method");
            return null;
        }
    }

    static <T> T r(@NonNull Object obj, @NonNull String str, @NonNull T t3) {
        try {
            return (T) p(str).invoke(obj, new Object[0]);
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to invoke TextView#");
            sb.append(str);
            sb.append("() method");
            return t3;
        }
    }

    private void x(float f4) {
        if (f4 != this.f1131i.getPaint().getTextSize()) {
            this.f1131i.getPaint().setTextSize(f4);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1131i.isInLayout() : false;
            if (this.f1131i.getLayout() != null) {
                this.f1124b = false;
                try {
                    Method p3 = p("nullLayouts");
                    if (p3 != null) {
                        p3.invoke(this.f1131i, new Object[0]);
                    }
                } catch (Exception unused) {
                }
                if (!isInLayout) {
                    this.f1131i.requestLayout();
                } else {
                    this.f1131i.forceLayout();
                }
                this.f1131i.invalidate();
            }
        }
    }

    private boolean z() {
        if (D() && this.f1123a == 1) {
            if (!this.f1129g || this.f1128f.length == 0) {
                int floor = ((int) Math.floor((this.f1127e - this.f1126d) / this.f1125c)) + 1;
                int[] iArr = new int[floor];
                for (int i2 = 0; i2 < floor; i2++) {
                    iArr[i2] = Math.round(this.f1126d + (i2 * this.f1125c));
                }
                this.f1128f = c(iArr);
            }
            this.f1124b = true;
        } else {
            this.f1124b = false;
        }
        return this.f1124b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void b() {
        if (s()) {
            if (this.f1124b) {
                if (this.f1131i.getMeasuredHeight() <= 0 || this.f1131i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f1133k.b(this.f1131i) ? 1048576 : (this.f1131i.getMeasuredWidth() - this.f1131i.getTotalPaddingLeft()) - this.f1131i.getTotalPaddingRight();
                int height = (this.f1131i.getHeight() - this.f1131i.getCompoundPaddingBottom()) - this.f1131i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f1115m;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float i2 = i(rectF);
                    if (i2 != this.f1131i.getTextSize()) {
                        y(0, i2);
                    }
                }
            }
            this.f1124b = true;
        }
    }

    @VisibleForTesting
    StaticLayout e(CharSequence charSequence, Layout.Alignment alignment, int i2, int i4) {
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 23) {
            return f(charSequence, alignment, i2, i4);
        }
        if (i5 >= 16) {
            return h(charSequence, alignment, i2);
        }
        return g(charSequence, alignment, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int j() {
        return Math.round(this.f1127e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int k() {
        return Math.round(this.f1126d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int l() {
        return Math.round(this.f1125c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int[] m() {
        return this.f1128f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int n() {
        return this.f1123a;
    }

    @VisibleForTesting
    void q(int i2) {
        TextPaint textPaint = this.f1130h;
        if (textPaint == null) {
            this.f1130h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1130h.set(this.f1131i.getPaint());
        this.f1130h.setTextSize(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean s() {
        return D() && this.f1123a != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(@Nullable AttributeSet attributeSet, int i2) {
        int resourceId;
        Context context = this.f1132j;
        int[] iArr = R.styleable.AppCompatTextView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        TextView textView = this.f1131i;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), iArr, attributeSet, obtainStyledAttributes, i2, 0);
        int i4 = R.styleable.AppCompatTextView_autoSizeTextType;
        if (obtainStyledAttributes.hasValue(i4)) {
            this.f1123a = obtainStyledAttributes.getInt(i4, 0);
        }
        int i5 = R.styleable.AppCompatTextView_autoSizeStepGranularity;
        float dimension = obtainStyledAttributes.hasValue(i5) ? obtainStyledAttributes.getDimension(i5, f1121s) : f1121s;
        int i6 = R.styleable.AppCompatTextView_autoSizeMinTextSize;
        float dimension2 = obtainStyledAttributes.hasValue(i6) ? obtainStyledAttributes.getDimension(i6, f1121s) : f1121s;
        int i7 = R.styleable.AppCompatTextView_autoSizeMaxTextSize;
        float dimension3 = obtainStyledAttributes.hasValue(i7) ? obtainStyledAttributes.getDimension(i7, f1121s) : f1121s;
        int i8 = R.styleable.AppCompatTextView_autoSizePresetSizes;
        if (obtainStyledAttributes.hasValue(i8) && (resourceId = obtainStyledAttributes.getResourceId(i8, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            A(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (D()) {
            if (this.f1123a == 1) {
                if (!this.f1129g) {
                    DisplayMetrics displayMetrics = this.f1132j.getResources().getDisplayMetrics();
                    if (dimension2 == f1121s) {
                        dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (dimension3 == f1121s) {
                        dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (dimension == f1121s) {
                        dimension = 1.0f;
                    }
                    E(dimension2, dimension3, dimension);
                }
                z();
                return;
            }
            return;
        }
        this.f1123a = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void u(int i2, int i4, int i5, int i6) throws IllegalArgumentException {
        if (D()) {
            DisplayMetrics displayMetrics = this.f1132j.getResources().getDisplayMetrics();
            E(TypedValue.applyDimension(i6, i2, displayMetrics), TypedValue.applyDimension(i6, i4, displayMetrics), TypedValue.applyDimension(i6, i5, displayMetrics));
            if (z()) {
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void v(@NonNull int[] iArr, int i2) throws IllegalArgumentException {
        if (D()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i2 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f1132j.getResources().getDisplayMetrics();
                    for (int i4 = 0; i4 < length; i4++) {
                        iArr2[i4] = Math.round(TypedValue.applyDimension(i2, iArr[i4], displayMetrics));
                    }
                }
                this.f1128f = c(iArr2);
                if (!B()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1129g = false;
            }
            if (z()) {
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void w(int i2) {
        if (D()) {
            if (i2 == 0) {
                d();
            } else if (i2 == 1) {
                DisplayMetrics displayMetrics = this.f1132j.getResources().getDisplayMetrics();
                E(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (z()) {
                    b();
                }
            } else {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void y(int i2, float f4) {
        Resources resources;
        Context context = this.f1132j;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        x(TypedValue.applyDimension(i2, f4, resources.getDisplayMetrics()));
    }
}
