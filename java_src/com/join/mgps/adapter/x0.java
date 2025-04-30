package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameDetailAdapter1.java */
/* loaded from: classes3.dex */
public class x0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44494a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f44495b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f44496c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f44497d;

    /* renamed from: e  reason: collision with root package name */
    private int f44498e;

    /* compiled from: GameDetailAdapter1.java */
    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f44499a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f44500b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f44501c;

        private b() {
        }
    }

    public x0(Context context) {
        this.f44496c = new ArrayList();
        this.f44494a = context;
        this.f44495b = LayoutInflater.from(context);
    }

    public List<String> a() {
        return this.f44496c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44496c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return Integer.valueOf(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = this.f44495b.inflate(R.layout.game_detail_item1, (ViewGroup) null);
            bVar = new b();
            bVar.f44499a = (SimpleDraweeView) view.findViewById(R.id.imageViewVPic);
            bVar.f44500b = (SimpleDraweeView) view.findViewById(R.id.imageViewHPic);
            bVar.f44501c = (ImageView) view.findViewById(R.id.imageViewPlay);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        if (this.f44498e == 1) {
            bVar.f44499a.setVisibility(0);
            bVar.f44500b.setVisibility(8);
            MyImageLoader.h(bVar.f44499a, this.f44496c.get(i2));
        } else {
            bVar.f44500b.setVisibility(0);
            bVar.f44499a.setVisibility(8);
            MyImageLoader.h(bVar.f44500b, this.f44496c.get(i2));
        }
        if (i2 == 0 && this.f44497d) {
            bVar.f44501c.setVisibility(0);
        } else {
            bVar.f44501c.setVisibility(8);
        }
        return view;
    }

    public x0(Context context, int i2, List<String> list, boolean z3) {
        this.f44496c = new ArrayList();
        this.f44494a = context;
        this.f44495b = LayoutInflater.from(context);
        this.f44496c = list;
        this.f44498e = i2;
        this.f44497d = z3;
    }
}
