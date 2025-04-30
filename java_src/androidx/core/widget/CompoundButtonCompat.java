package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public final class CompoundButtonCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5081a = "CompoundButtonCompat";

    /* renamed from: b  reason: collision with root package name */
    private static Field f5082b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f5083c;

    private CompoundButtonCompat() {
    }

    @Nullable
    public static Drawable getButtonDrawable(@NonNull CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f5083c) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f5082b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f5083c = true;
        }
        Field field = f5082b;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException unused2) {
                f5082b = null;
            }
        }
        return null;
    }

    @Nullable
    public static ColorStateList getButtonTintList(@NonNull CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (compoundButton instanceof TintableCompoundButton) {
            return ((TintableCompoundButton) compoundButton).getSupportButtonTintList();
        }
        return null;
    }

    @Nullable
    public static PorterDuff.Mode getButtonTintMode(@NonNull CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintMode();
        }
        if (compoundButton instanceof TintableCompoundButton) {
            return ((TintableCompoundButton) compoundButton).getSupportButtonTintMode();
        }
        return null;
    }

    public static void setButtonTintList(@NonNull CompoundButton compoundButton, @Nullable ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof TintableCompoundButton) {
            ((TintableCompoundButton) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    public static void setButtonTintMode(@NonNull CompoundButton compoundButton, @Nullable PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof TintableCompoundButton) {
            ((TintableCompoundButton) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
