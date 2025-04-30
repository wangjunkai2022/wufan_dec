package z0;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* compiled from: CanvasCompat.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class a {
    private a() {
    }

    public static int a(@NonNull Canvas canvas, float f4, float f5, float f6, float f7, int i2) {
        if (Build.VERSION.SDK_INT > 21) {
            return canvas.saveLayerAlpha(f4, f5, f6, f7, i2);
        }
        return canvas.saveLayerAlpha(f4, f5, f6, f7, i2, 31);
    }

    public static int b(@NonNull Canvas canvas, @Nullable RectF rectF, int i2) {
        if (Build.VERSION.SDK_INT > 21) {
            return canvas.saveLayerAlpha(rectF, i2);
        }
        return canvas.saveLayerAlpha(rectF, i2, 31);
    }
}
