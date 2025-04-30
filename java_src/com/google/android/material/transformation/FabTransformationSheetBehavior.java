package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.h;
import com.google.android.material.animation.j;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes2.dex */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Map<View, Integer> f16347l;

    public FabTransformationSheetBehavior() {
    }

    private void D(@NonNull View view, boolean z3) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z3) {
                this.f16347l = new HashMap(childCount);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                boolean z4 = (childAt.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z4) {
                    if (!z3) {
                        Map<View, Integer> map = this.f16347l;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.setImportantForAccessibility(childAt, this.f16347l.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f16347l.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        ViewCompat.setImportantForAccessibility(childAt, 4);
                    }
                }
            }
            if (z3) {
                return;
            }
            this.f16347l = null;
        }
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    @NonNull
    protected FabTransformationBehavior.e B(Context context, boolean z3) {
        int i2;
        if (z3) {
            i2 = R.animator.mtrl_fab_transformation_sheet_expand_spec;
        } else {
            i2 = R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        }
        FabTransformationBehavior.e eVar = new FabTransformationBehavior.e();
        eVar.f16336a = h.d(context, i2);
        eVar.f16337b = new j(17, 0.0f, 0.0f);
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    public boolean e(@NonNull View view, @NonNull View view2, boolean z3, boolean z4) {
        D(view2, z3);
        return super.e(view, view2, z3, z4);
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
