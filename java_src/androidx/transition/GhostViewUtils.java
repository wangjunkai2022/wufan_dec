package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
class GhostViewUtils {
    private GhostViewUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static GhostView a(@NonNull View view, @NonNull ViewGroup viewGroup, @Nullable Matrix matrix) {
        if (Build.VERSION.SDK_INT == 28) {
            return GhostViewPlatform.a(view, viewGroup, matrix);
        }
        return GhostViewPort.a(view, viewGroup, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(View view) {
        if (Build.VERSION.SDK_INT == 28) {
            GhostViewPlatform.e(view);
        } else {
            GhostViewPort.e(view);
        }
    }
}
