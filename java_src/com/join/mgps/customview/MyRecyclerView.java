package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.join.mgps.Util.t0;
import com.join.mgps.ptr.PtrFrameLayout;
/* loaded from: classes3.dex */
public class MyRecyclerView extends RecyclerView {
    private com.join.mgps.ptr.a A1;
    private j B1;

    /* loaded from: classes3.dex */
    class a extends com.join.mgps.ptr.a {
        a() {
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            return com.join.mgps.ptr.a.d(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            t0.g("onRefreshBegin----------");
            if (MyRecyclerView.this.B1 != null) {
                MyRecyclerView.this.B1.onRefresh();
            }
        }
    }

    public MyRecyclerView(Context context) {
        super(context);
        this.A1 = new a();
    }

    public void S0() {
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).C();
    }

    public void setPullRefreshEnable(j jVar) {
        this.B1 = jVar;
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).setPtrHandler(this.A1);
    }

    public MyRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A1 = new a();
    }

    public MyRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.A1 = new a();
    }
}
