package androidx.core.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.util.Preconditions;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class TextViewCompat {
    public static final int AUTO_SIZE_TEXT_TYPE_NONE = 0;
    public static final int AUTO_SIZE_TEXT_TYPE_UNIFORM = 1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f5127a = "TextViewCompat";

    /* renamed from: b  reason: collision with root package name */
    private static Field f5128b = null;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f5129c = false;

    /* renamed from: d  reason: collision with root package name */
    private static Field f5130d = null;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f5131e = false;

    /* renamed from: f  reason: collision with root package name */
    private static Field f5132f = null;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f5133g = false;

    /* renamed from: h  reason: collision with root package name */
    private static Field f5134h = null;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f5135i = false;

    /* renamed from: j  reason: collision with root package name */
    private static final int f5136j = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface AutoSizeTextType {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class OreoCallback implements ActionMode.Callback {

        /* renamed from: g  reason: collision with root package name */
        private static final int f5137g = 100;

        /* renamed from: a  reason: collision with root package name */
        private final ActionMode.Callback f5138a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f5139b;

        /* renamed from: c  reason: collision with root package name */
        private Class<?> f5140c;

        /* renamed from: d  reason: collision with root package name */
        private Method f5141d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f5142e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f5143f = false;

        OreoCallback(ActionMode.Callback callback, TextView textView) {
            this.f5138a = callback;
            this.f5139b = textView;
        }

        private Intent b() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType(HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE);
        }

        private Intent c(ResolveInfo resolveInfo, TextView textView) {
            Intent putExtra = b().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !f(textView));
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return putExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        private List<ResolveInfo> d(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (context instanceof Activity) {
                for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(b(), 0)) {
                    if (g(resolveInfo, context)) {
                        arrayList.add(resolveInfo);
                    }
                }
                return arrayList;
            }
            return arrayList;
        }

        private boolean f(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        private boolean g(ResolveInfo resolveInfo, Context context) {
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (activityInfo.exported) {
                String str = activityInfo.permission;
                return str == null || context.checkSelfPermission(str) == 0;
            }
            return false;
        }

        private void h(Menu menu) {
            Method declaredMethod;
            Context context = this.f5139b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f5143f) {
                this.f5143f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f5140c = cls;
                    this.f5141d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f5142e = true;
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    this.f5140c = null;
                    this.f5141d = null;
                    this.f5142e = false;
                }
            }
            try {
                if (this.f5142e && this.f5140c.isInstance(menu)) {
                    declaredMethod = this.f5141d;
                } else {
                    declaredMethod = menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
                }
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> d4 = d(context, packageManager);
                for (int i2 = 0; i2 < d4.size(); i2++) {
                    ResolveInfo resolveInfo = d4.get(i2);
                    menu.add(0, 0, i2 + 100, resolveInfo.loadLabel(packageManager)).setIntent(c(resolveInfo, this.f5139b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        @NonNull
        ActionMode.Callback e() {
            return this.f5138a;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f5138a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f5138a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f5138a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            h(menu);
            return this.f5138a.onPrepareActionMode(actionMode, menu);
        }
    }

    private TextViewCompat() {
    }

    @RequiresApi(18)
    private static int a(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        return textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL ? 7 : 1;
    }

    @RequiresApi(18)
    private static TextDirectionHeuristic b(@NonNull TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        if (Build.VERSION.SDK_INT >= 28 && (textView.getInputType() & 15) == 3) {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
            if (directionality != 1 && directionality != 2) {
                return TextDirectionHeuristics.LTR;
            }
            return TextDirectionHeuristics.RTL;
        }
        boolean z3 = textView.getLayoutDirection() == 1;
        switch (textView.getTextDirection()) {
            case 2:
                return TextDirectionHeuristics.ANYRTL_LTR;
            case 3:
                return TextDirectionHeuristics.LTR;
            case 4:
                return TextDirectionHeuristics.RTL;
            case 5:
                return TextDirectionHeuristics.LOCALE;
            case 6:
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
            case 7:
                return TextDirectionHeuristics.FIRSTSTRONG_RTL;
            default:
                if (z3) {
                    return TextDirectionHeuristics.FIRSTSTRONG_RTL;
                }
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
    }

    private static Field c(String str) {
        Field field = null;
        try {
            field = TextView.class.getDeclaredField(str);
            field.setAccessible(true);
            return field;
        } catch (NoSuchFieldException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not retrieve ");
            sb.append(str);
            sb.append(" field.");
            return field;
        }
    }

    private static int d(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not retrieve value of ");
            sb.append(field.getName());
            sb.append(" field.");
            return -1;
        }
    }

    public static int getAutoSizeMaxTextSize(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeMaxTextSize();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeMaxTextSize();
        }
        return -1;
    }

    public static int getAutoSizeMinTextSize(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeMinTextSize();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeMinTextSize();
        }
        return -1;
    }

    public static int getAutoSizeStepGranularity(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeStepGranularity();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeStepGranularity();
        }
        return -1;
    }

    @NonNull
    public static int[] getAutoSizeTextAvailableSizes(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeTextAvailableSizes();
        }
        return textView instanceof AutoSizeableTextView ? ((AutoSizeableTextView) textView).getAutoSizeTextAvailableSizes() : new int[0];
    }

    public static int getAutoSizeTextType(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeTextType();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeTextType();
        }
        return 0;
    }

    @Nullable
    public static ColorStateList getCompoundDrawableTintList(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            return textView.getCompoundDrawableTintList();
        }
        if (textView instanceof TintableCompoundDrawablesView) {
            return ((TintableCompoundDrawablesView) textView).getSupportCompoundDrawablesTintList();
        }
        return null;
    }

    @Nullable
    public static PorterDuff.Mode getCompoundDrawableTintMode(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            return textView.getCompoundDrawableTintMode();
        }
        if (textView instanceof TintableCompoundDrawablesView) {
            return ((TintableCompoundDrawablesView) textView).getSupportCompoundDrawablesTintMode();
        }
        return null;
    }

    @NonNull
    public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 18) {
            return textView.getCompoundDrawablesRelative();
        }
        if (i2 >= 17) {
            boolean z3 = textView.getLayoutDirection() == 1;
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (z3) {
                Drawable drawable = compoundDrawables[2];
                Drawable drawable2 = compoundDrawables[0];
                compoundDrawables[0] = drawable;
                compoundDrawables[2] = drawable2;
            }
            return compoundDrawables;
        }
        return textView.getCompoundDrawables();
    }

    public static int getFirstBaselineToTopHeight(@NonNull TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    public static int getLastBaselineToBottomHeight(@NonNull TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    public static int getMaxLines(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!f5131e) {
            f5130d = c("mMaxMode");
            f5131e = true;
        }
        Field field = f5130d;
        if (field == null || d(field, textView) != 1) {
            return -1;
        }
        if (!f5129c) {
            f5128b = c("mMaximum");
            f5129c = true;
        }
        Field field2 = f5128b;
        if (field2 != null) {
            return d(field2, textView);
        }
        return -1;
    }

    public static int getMinLines(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMinLines();
        }
        if (!f5135i) {
            f5134h = c("mMinMode");
            f5135i = true;
        }
        Field field = f5134h;
        if (field == null || d(field, textView) != 1) {
            return -1;
        }
        if (!f5133g) {
            f5132f = c("mMinimum");
            f5133g = true;
        }
        Field field2 = f5132f;
        if (field2 != null) {
            return d(field2, textView);
        }
        return -1;
    }

    @NonNull
    public static PrecomputedTextCompat.Params getTextMetricsParams(@NonNull TextView textView) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return new PrecomputedTextCompat.Params(textView.getTextMetricsParams());
        }
        PrecomputedTextCompat.Params.Builder builder = new PrecomputedTextCompat.Params.Builder(new TextPaint(textView.getPaint()));
        if (i2 >= 23) {
            builder.setBreakStrategy(textView.getBreakStrategy());
            builder.setHyphenationFrequency(textView.getHyphenationFrequency());
        }
        if (i2 >= 18) {
            builder.setTextDirection(b(textView));
        }
        return builder.build();
    }

    public static void setAutoSizeTextTypeUniformWithConfiguration(@NonNull TextView textView, int i2, int i4, int i5, int i6) throws IllegalArgumentException {
        if (Build.VERSION.SDK_INT >= 27) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i2, i4, i5, i6);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeUniformWithConfiguration(i2, i4, i5, i6);
        }
    }

    public static void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull TextView textView, @NonNull int[] iArr, int i2) throws IllegalArgumentException {
        if (Build.VERSION.SDK_INT >= 27) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
        }
    }

    public static void setAutoSizeTextTypeWithDefaults(@NonNull TextView textView, int i2) {
        if (Build.VERSION.SDK_INT >= 27) {
            textView.setAutoSizeTextTypeWithDefaults(i2);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeWithDefaults(i2);
        }
    }

    public static void setCompoundDrawableTintList(@NonNull TextView textView, @Nullable ColorStateList colorStateList) {
        Preconditions.checkNotNull(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (textView instanceof TintableCompoundDrawablesView) {
            ((TintableCompoundDrawablesView) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    public static void setCompoundDrawableTintMode(@NonNull TextView textView, @Nullable PorterDuff.Mode mode) {
        Preconditions.checkNotNull(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (textView instanceof TintableCompoundDrawablesView) {
            ((TintableCompoundDrawablesView) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else if (i2 >= 17) {
            boolean z3 = textView.getLayoutDirection() == 1;
            Drawable drawable5 = z3 ? drawable3 : drawable;
            if (!z3) {
                drawable = drawable3;
            }
            textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
        } else {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        }
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 18) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else if (i2 >= 17) {
            boolean z3 = textView.getLayoutDirection() == 1;
            Drawable drawable5 = z3 ? drawable3 : drawable;
            if (!z3) {
                drawable = drawable3;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable5, drawable2, drawable, drawable4);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }

    public static void setCustomSelectionActionModeCallback(@NonNull TextView textView, @NonNull ActionMode.Callback callback) {
        textView.setCustomSelectionActionModeCallback(wrapCustomSelectionActionModeCallback(textView, callback));
    }

    public static void setFirstBaselineToTopHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i2) {
        int i4;
        Preconditions.checkArgumentNonnegative(i2);
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 28) {
            textView.setFirstBaselineToTopHeight(i2);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (i5 >= 16 && !textView.getIncludeFontPadding()) {
            i4 = fontMetricsInt.ascent;
        } else {
            i4 = fontMetricsInt.top;
        }
        if (i2 > Math.abs(i4)) {
            textView.setPadding(textView.getPaddingLeft(), i2 + i4, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void setLastBaselineToBottomHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i2) {
        int i4;
        Preconditions.checkArgumentNonnegative(i2);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (Build.VERSION.SDK_INT >= 16 && !textView.getIncludeFontPadding()) {
            i4 = fontMetricsInt.descent;
        } else {
            i4 = fontMetricsInt.bottom;
        }
        if (i2 > Math.abs(i4)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i2 - i4);
        }
    }

    public static void setLineHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i2) {
        Preconditions.checkArgumentNonnegative(i2);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i2 != fontMetricsInt) {
            textView.setLineSpacing(i2 - fontMetricsInt, 1.0f);
        }
    }

    public static void setPrecomputedText(@NonNull TextView textView, @NonNull PrecomputedTextCompat precomputedTextCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(precomputedTextCompat.getPrecomputedText());
        } else if (getTextMetricsParams(textView).equalsWithoutTextDirection(precomputedTextCompat.getParams())) {
            textView.setText(precomputedTextCompat);
        } else {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
    }

    public static void setTextAppearance(@NonNull TextView textView, @StyleRes int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i2);
        } else {
            textView.setTextAppearance(textView.getContext(), i2);
        }
    }

    public static void setTextMetricsParams(@NonNull TextView textView, @NonNull PrecomputedTextCompat.Params params) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 18) {
            textView.setTextDirection(a(params.getTextDirection()));
        }
        if (i2 < 23) {
            float textScaleX = params.getTextPaint().getTextScaleX();
            textView.getPaint().set(params.getTextPaint());
            if (textScaleX == textView.getTextScaleX()) {
                textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            textView.setTextScaleX(textScaleX);
            return;
        }
        textView.getPaint().set(params.getTextPaint());
        textView.setBreakStrategy(params.getBreakStrategy());
        textView.setHyphenationFrequency(params.getHyphenationFrequency());
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ActionMode.Callback unwrapCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        return (!(callback instanceof OreoCallback) || Build.VERSION.SDK_INT < 26) ? callback : ((OreoCallback) callback).e();
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ActionMode.Callback wrapCustomSelectionActionModeCallback(@NonNull TextView textView, @Nullable ActionMode.Callback callback) {
        int i2 = Build.VERSION.SDK_INT;
        return (i2 < 26 || i2 > 27 || (callback instanceof OreoCallback) || callback == null) ? callback : new OreoCallback(callback, textView);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @DrawableRes int i2, @DrawableRes int i4, @DrawableRes int i5, @DrawableRes int i6) {
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 18) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i4, i5, i6);
        } else if (i7 >= 17) {
            boolean z3 = textView.getLayoutDirection() == 1;
            int i8 = z3 ? i5 : i2;
            if (!z3) {
                i2 = i5;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(i8, i4, i2, i6);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(i2, i4, i5, i6);
        }
    }
}
