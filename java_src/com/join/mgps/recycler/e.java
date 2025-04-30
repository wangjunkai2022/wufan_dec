package com.join.mgps.recycler;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.mgps.Util.u0;
/* compiled from: RecyclerViewItemPositionGetter.java */
/* loaded from: classes4.dex */
public class e implements c {

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f51488c = true;

    /* renamed from: d  reason: collision with root package name */
    private static final String f51489d = "e";

    /* renamed from: a  reason: collision with root package name */
    private LinearLayoutManager f51490a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f51491b;

    /* compiled from: RecyclerViewItemPositionGetter.java */
    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: b  reason: collision with root package name */
        public static final boolean f51492b = true;

        public a() {
        }
    }

    public e(LinearLayoutManager linearLayoutManager, RecyclerView recyclerView) {
        this.f51490a = linearLayoutManager;
        this.f51491b = recyclerView;
    }

    @Override // com.join.mgps.recycler.c
    public int a() {
        String str = f51489d;
        u0.f(str, "getFirstVisiblePosition, findFirstVisibleItemPosition " + this.f51490a.findFirstVisibleItemPosition());
        return this.f51490a.findFirstVisibleItemPosition();
    }

    @Override // com.join.mgps.recycler.c
    public int b() {
        return this.f51490a.findLastVisibleItemPosition();
    }

    @Override // com.join.mgps.recycler.c
    public View getChildAt(int i2) {
        String str = f51489d;
        u0.f(str, "getChildAt, mRecyclerView.getChildCount " + this.f51491b.getChildCount());
        u0.f(str, "getChildAt, mLayoutManager.getChildCount " + this.f51490a.getChildCount());
        View childAt = this.f51490a.getChildAt(i2);
        u0.f(str, "mRecyclerView getChildAt, position " + i2 + ", view " + childAt);
        u0.f(str, "mLayoutManager getChildAt, position " + i2 + ", view " + this.f51490a.getChildAt(i2));
        return childAt;
    }

    @Override // com.join.mgps.recycler.c
    public int getChildCount() {
        int childCount = this.f51491b.getChildCount();
        String str = f51489d;
        u0.f(str, "getChildCount, mRecyclerView " + childCount);
        u0.f(str, "getChildCount, mLayoutManager " + this.f51490a.getChildCount());
        return childCount;
    }

    @Override // com.join.mgps.recycler.c
    public int indexOfChild(View view) {
        int indexOfChild = this.f51491b.indexOfChild(view);
        String str = f51489d;
        u0.f(str, "indexOfChild, " + indexOfChild);
        return indexOfChild;
    }
}
