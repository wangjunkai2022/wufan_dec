package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SimulatorFastEntryBean;
import java.util.List;
/* compiled from: SimulatorFastEntryViewpagerAdapter.java */
/* loaded from: classes3.dex */
public class h6 extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f42228a;

    /* renamed from: b  reason: collision with root package name */
    private List<List<SimulatorFastEntryBean.FastEntryBean>> f42229b;

    /* compiled from: SimulatorFastEntryViewpagerAdapter.java */
    /* loaded from: classes3.dex */
    class a extends GridLayoutManager {
        a(Context context, int i2) {
            super(context, i2);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    public h6(Context context, List<List<SimulatorFastEntryBean.FastEntryBean>> list) {
        this.f42228a = context;
        this.f42229b = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f42229b.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i2) {
        Context context = viewGroup.getContext();
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_simulator_viewpgaer_item, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerview);
        a aVar = new a(context, 5);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(aVar);
        recyclerView.setAdapter(new x5(this.f42229b.get(i2)));
        viewGroup.addView(inflate);
        return inflate;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
