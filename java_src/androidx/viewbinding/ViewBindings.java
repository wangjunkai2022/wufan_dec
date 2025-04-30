package androidx.viewbinding;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class ViewBindings {
    private ViewBindings() {
    }

    @Nullable
    public static <T extends View> T findChildViewById(View view, @IdRes int i2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                T t3 = (T) viewGroup.getChildAt(i4).findViewById(i2);
                if (t3 != null) {
                    return t3;
                }
            }
            return null;
        }
        return null;
    }
}
