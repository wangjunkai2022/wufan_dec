package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class DrawableCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4308a = "DrawableCompat";

    /* renamed from: b  reason: collision with root package name */
    private static Method f4309b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f4310c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f4311d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f4312e;

    private DrawableCompat() {
    }

    public static void applyTheme(@NonNull Drawable drawable, @NonNull Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    public static boolean canApplyTheme(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    public static void clearColorFilter(@NonNull Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            drawable.clearColorFilter();
        } else if (i2 >= 21) {
            drawable.clearColorFilter();
            if (drawable instanceof InsetDrawable) {
                clearColorFilter(((InsetDrawable) drawable).getDrawable());
            } else if (drawable instanceof WrappedDrawable) {
                clearColorFilter(((WrappedDrawable) drawable).getWrappedDrawable());
            } else if ((drawable instanceof DrawableContainer) && (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) != null) {
                int childCount = drawableContainerState.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    Drawable child = drawableContainerState.getChild(i4);
                    if (child != null) {
                        clearColorFilter(child);
                    }
                }
            }
        } else {
            drawable.clearColorFilter();
        }
    }

    public static int getAlpha(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    public static ColorFilter getColorFilter(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    public static int getLayoutDirection(@NonNull Drawable drawable) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return drawable.getLayoutDirection();
        }
        if (i2 >= 17) {
            if (!f4312e) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                    f4311d = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f4312e = true;
            }
            Method method = f4311d;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(drawable, new Object[0])).intValue();
                } catch (Exception unused2) {
                    f4311d = null;
                }
            }
        }
        return 0;
    }

    public static void inflate(@NonNull Drawable drawable, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    public static boolean isAutoMirrored(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    @Deprecated
    public static void jumpToCurrentState(@NonNull Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void setAutoMirrored(@NonNull Drawable drawable, boolean z3) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z3);
        }
    }

    public static void setHotspot(@NonNull Drawable drawable, float f4, float f5) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f4, f5);
        }
    }

    public static void setHotspotBounds(@NonNull Drawable drawable, int i2, int i4, int i5, int i6) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i2, i4, i5, i6);
        }
    }

    public static boolean setLayoutDirection(@NonNull Drawable drawable, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23) {
            return drawable.setLayoutDirection(i2);
        }
        if (i4 >= 17) {
            if (!f4310c) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                    f4309b = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f4310c = true;
            }
            Method method = f4309b;
            if (method != null) {
                try {
                    method.invoke(drawable, Integer.valueOf(i2));
                    return true;
                } catch (Exception unused2) {
                    f4309b = null;
                }
            }
        }
        return false;
    }

    public static void setTint(@NonNull Drawable drawable, @ColorInt int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i2);
        } else if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTint(i2);
        }
    }

    public static void setTintList(@NonNull Drawable drawable, @Nullable ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTintList(colorStateList);
        }
    }

    public static void setTintMode(@NonNull Drawable drawable, @NonNull PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTintMode(mode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T unwrap(@NonNull Drawable drawable) {
        return drawable instanceof WrappedDrawable ? (T) ((WrappedDrawable) drawable).getWrappedDrawable() : drawable;
    }

    public static Drawable wrap(@NonNull Drawable drawable) {
        int i2 = Build.VERSION.SDK_INT;
        return i2 >= 23 ? drawable : i2 >= 21 ? !(drawable instanceof TintAwareDrawable) ? new WrappedDrawableApi21(drawable) : drawable : !(drawable instanceof TintAwareDrawable) ? new WrappedDrawableApi14(drawable) : drawable;
    }
}
