package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.os.Build;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ItemTouchUIUtilImpl implements ItemTouchUIUtil {

    /* renamed from: a  reason: collision with root package name */
    static final ItemTouchUIUtil f6986a = new ItemTouchUIUtilImpl();

    ItemTouchUIUtilImpl() {
    }

    private static float a(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f4 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            if (childAt != view) {
                float elevation = ViewCompat.getElevation(childAt);
                if (elevation > f4) {
                    f4 = elevation;
                }
            }
        }
        return f4;
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void clearView(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            int i2 = R.id.item_touch_helper_previous_elevation;
            Object tag = view.getTag(i2);
            if (tag instanceof Float) {
                ViewCompat.setElevation(view, ((Float) tag).floatValue());
            }
            view.setTag(i2, null);
        }
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f4, float f5, int i2, boolean z3) {
        if (Build.VERSION.SDK_INT >= 21 && z3) {
            int i4 = R.id.item_touch_helper_previous_elevation;
            if (view.getTag(i4) == null) {
                Float valueOf = Float.valueOf(ViewCompat.getElevation(view));
                ViewCompat.setElevation(view, a(recyclerView, view) + 1.0f);
                view.setTag(i4, valueOf);
            }
        }
        view.setTranslationX(f4);
        view.setTranslationY(f5);
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f4, float f5, int i2, boolean z3) {
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onSelected(View view) {
    }
}
