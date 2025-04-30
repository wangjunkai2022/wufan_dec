package com.join.mgps.control;

import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameDiscoverBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RhythmAdapter.java */
/* loaded from: classes3.dex */
public class b extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private float f44826a;

    /* renamed from: b  reason: collision with root package name */
    private List<GameDiscoverBean> f44827b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f44828c;

    /* renamed from: d  reason: collision with root package name */
    private Context f44829d;

    /* renamed from: e  reason: collision with root package name */
    private RhythmLayout f44830e;

    /* renamed from: f  reason: collision with root package name */
    int f44831f;

    /* renamed from: g  reason: collision with root package name */
    int f44832g;

    /* renamed from: h  reason: collision with root package name */
    int f44833h;

    public b(Context context, RhythmLayout rhythmLayout, List<GameDiscoverBean> list) {
        this.f44829d = context;
        this.f44830e = rhythmLayout;
        ArrayList arrayList = new ArrayList();
        this.f44827b = arrayList;
        arrayList.addAll(list);
        this.f44831f = this.f44829d.getResources().getDimensionPixelSize(R.dimen.rhythm_item_height);
        this.f44832g = this.f44829d.getResources().getDimensionPixelSize(R.dimen.rhythm_icon_margin);
        this.f44833h = (int) TypedValue.applyDimension(1, 8.0f, this.f44829d.getResources().getDisplayMetrics());
        if (context != null) {
            this.f44828c = LayoutInflater.from(context);
        }
    }

    public void a(List<GameDiscoverBean> list) {
        this.f44827b.addAll(list);
    }

    public List<GameDiscoverBean> b() {
        return this.f44827b;
    }

    public void c(List<GameDiscoverBean> list) {
        this.f44827b = list;
    }

    public void d(float f4) {
        this.f44826a = f4;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44827b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f44827b.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        RelativeLayout relativeLayout = (RelativeLayout) this.f44828c.inflate(R.layout.adapter_rhythm_icon, (ViewGroup) null);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams((int) this.f44826a, this.f44831f));
        relativeLayout.setTranslationY(this.f44826a);
        relativeLayout.setPadding(0, this.f44833h, 0, 0);
        int i4 = ((int) this.f44826a) - this.f44832g;
        ((RelativeLayout) relativeLayout.getChildAt(0)).setLayoutParams(new RelativeLayout.LayoutParams(i4, this.f44831f - this.f44832g));
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) relativeLayout.findViewById(R.id.image_icon);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i4, i4);
        int i5 = this.f44832g;
        layoutParams.setMargins(i5 * 2, i5 * 2, i5 * 2, 0);
        layoutParams.addRule(14);
        simpleDraweeView.setLayoutParams(layoutParams);
        if (this.f44829d != null) {
            this.f44827b.get(i2).getIco_remote();
            MyImageLoader.f(simpleDraweeView, R.drawable.main_normal_icon, this.f44827b.get(i2).getIco_remote(), MyImageLoader.D(this.f44829d, 2.0f));
        }
        return relativeLayout;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.f44830e.q();
    }
}
