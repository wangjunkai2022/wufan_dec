package com.join.mgps.activity.login;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class ScollLinearLayoutManager extends LinearLayoutManager {
    private float MILLISECONDS_PER_INCH;
    private Context contxt;

    public ScollLinearLayoutManager(Context context) {
        super(context);
        this.MILLISECONDS_PER_INCH = 25.0f;
        this.contxt = context;
    }

    public void setSpeedSlow(float f4) {
        this.MILLISECONDS_PER_INCH = (this.contxt.getResources().getDisplayMetrics().density * 0.3f) + f4;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.join.mgps.activity.login.ScollLinearLayoutManager.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return ScollLinearLayoutManager.this.MILLISECONDS_PER_INCH / displayMetrics.density;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public PointF computeScrollVectorForPosition(int i4) {
                return ScollLinearLayoutManager.this.computeScrollVectorForPosition(i4);
            }
        };
        linearSmoothScroller.setTargetPosition(i2);
        startSmoothScroll(linearSmoothScroller);
    }
}
