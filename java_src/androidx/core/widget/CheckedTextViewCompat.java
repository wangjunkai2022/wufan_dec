package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CheckedTextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public final class CheckedTextViewCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5078a = "CheckedTextViewCompat";

    /* loaded from: classes.dex */
    private static class Api14Impl {

        /* renamed from: a  reason: collision with root package name */
        private static Field f5079a;

        /* renamed from: b  reason: collision with root package name */
        private static boolean f5080b;

        private Api14Impl() {
        }

        @Nullable
        static Drawable a(@NonNull CheckedTextView checkedTextView) {
            if (!f5080b) {
                try {
                    Field declaredField = CheckedTextView.class.getDeclaredField("mCheckMarkDrawable");
                    f5079a = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                f5080b = true;
            }
            Field field = f5079a;
            if (field != null) {
                try {
                    return (Drawable) field.get(checkedTextView);
                } catch (IllegalAccessException unused2) {
                    f5079a = null;
                }
            }
            return null;
        }
    }

    @RequiresApi(16)
    /* loaded from: classes.dex */
    private static class Api16Impl {
        private Api16Impl() {
        }

        @Nullable
        static Drawable a(@NonNull CheckedTextView checkedTextView) {
            return checkedTextView.getCheckMarkDrawable();
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    private static class Api21Impl {
        private Api21Impl() {
        }

        @Nullable
        static ColorStateList a(@NonNull CheckedTextView checkedTextView) {
            return checkedTextView.getCheckMarkTintList();
        }

        @Nullable
        static PorterDuff.Mode b(@NonNull CheckedTextView checkedTextView) {
            return checkedTextView.getCheckMarkTintMode();
        }

        static void c(@NonNull CheckedTextView checkedTextView, @Nullable ColorStateList colorStateList) {
            checkedTextView.setCheckMarkTintList(colorStateList);
        }

        static void d(@NonNull CheckedTextView checkedTextView, @Nullable PorterDuff.Mode mode) {
            checkedTextView.setCheckMarkTintMode(mode);
        }
    }

    private CheckedTextViewCompat() {
    }

    @Nullable
    public static Drawable getCheckMarkDrawable(@NonNull CheckedTextView checkedTextView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.a(checkedTextView);
        }
        return Api14Impl.a(checkedTextView);
    }

    @Nullable
    public static ColorStateList getCheckMarkTintList(@NonNull CheckedTextView checkedTextView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.a(checkedTextView);
        }
        if (checkedTextView instanceof TintableCheckedTextView) {
            return ((TintableCheckedTextView) checkedTextView).getSupportCheckMarkTintList();
        }
        return null;
    }

    @Nullable
    public static PorterDuff.Mode getCheckMarkTintMode(@NonNull CheckedTextView checkedTextView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.b(checkedTextView);
        }
        if (checkedTextView instanceof TintableCheckedTextView) {
            return ((TintableCheckedTextView) checkedTextView).getSupportCheckMarkTintMode();
        }
        return null;
    }

    public static void setCheckMarkTintList(@NonNull CheckedTextView checkedTextView, @Nullable ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.c(checkedTextView, colorStateList);
        } else if (checkedTextView instanceof TintableCheckedTextView) {
            ((TintableCheckedTextView) checkedTextView).setSupportCheckMarkTintList(colorStateList);
        }
    }

    public static void setCheckMarkTintMode(@NonNull CheckedTextView checkedTextView, @Nullable PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.d(checkedTextView, mode);
        } else if (checkedTextView instanceof TintableCheckedTextView) {
            ((TintableCheckedTextView) checkedTextView).setSupportCheckMarkTintMode(mode);
        }
    }
}
