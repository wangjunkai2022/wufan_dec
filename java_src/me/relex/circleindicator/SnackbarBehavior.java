package me.relex.circleindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.Snackbar;
import java.util.List;
/* loaded from: classes5.dex */
public class SnackbarBehavior extends CoordinatorLayout.Behavior<BaseCircleIndicator> {
    public SnackbarBehavior() {
    }

    private float a(CoordinatorLayout coordinatorLayout, BaseCircleIndicator baseCircleIndicator) {
        List<View> dependencies = coordinatorLayout.getDependencies(baseCircleIndicator);
        int size = dependencies.size();
        float f4 = 0.0f;
        for (int i2 = 0; i2 < size; i2++) {
            View view = dependencies.get(i2);
            if ((view instanceof Snackbar.SnackbarLayout) && coordinatorLayout.doViewsOverlap(baseCircleIndicator, view)) {
                f4 = Math.min(f4, view.getTranslationY() - view.getHeight());
            }
        }
        return f4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BaseCircleIndicator baseCircleIndicator, @NonNull View view) {
        return view instanceof Snackbar.SnackbarLayout;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: c */
    public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BaseCircleIndicator baseCircleIndicator, @NonNull View view) {
        baseCircleIndicator.setTranslationY(a(coordinatorLayout, baseCircleIndicator));
        return true;
    }

    public SnackbarBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
