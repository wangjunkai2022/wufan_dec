package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
class ImageViewUtils {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f7661a = true;

    /* renamed from: b  reason: collision with root package name */
    private static Field f7662b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f7663c;

    private ImageViewUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull ImageView imageView, @Nullable Matrix matrix) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            imageView.animateTransform(matrix);
        } else if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
                imageView.invalidate();
            }
        } else if (i2 >= 21) {
            c(imageView, matrix);
        } else {
            Drawable drawable2 = imageView.getDrawable();
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
                Matrix matrix2 = null;
                b();
                Field field = f7662b;
                if (field != null) {
                    try {
                        Matrix matrix3 = (Matrix) field.get(imageView);
                        if (matrix3 == null) {
                            try {
                                matrix2 = new Matrix();
                                f7662b.set(imageView, matrix2);
                            } catch (IllegalAccessException unused) {
                            }
                        }
                        matrix2 = matrix3;
                    } catch (IllegalAccessException unused2) {
                    }
                }
                if (matrix2 != null) {
                    matrix2.set(matrix);
                }
                imageView.invalidate();
            }
        }
    }

    private static void b() {
        if (f7663c) {
            return;
        }
        try {
            Field declaredField = ImageView.class.getDeclaredField("mDrawMatrix");
            f7662b = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
        f7663c = true;
    }

    @RequiresApi(21)
    @SuppressLint({"NewApi"})
    private static void c(@NonNull ImageView imageView, @Nullable Matrix matrix) {
        if (f7661a) {
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError unused) {
                f7661a = false;
            }
        }
    }
}
