package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameDetailCheckPoint;
import java.util.List;
/* compiled from: DetailCheckPointAdapter.java */
/* loaded from: classes3.dex */
public class k extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    List<GameDetailCheckPoint> f42311a;

    /* renamed from: b  reason: collision with root package name */
    Context f42312b;

    /* renamed from: c  reason: collision with root package name */
    int f42313c;

    /* compiled from: DetailCheckPointAdapter.java */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f42314a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42315b;

        public a() {
        }
    }

    public k(Context context, List<GameDetailCheckPoint> list, int i2) {
        this.f42311a = list;
        this.f42312b = context;
        this.f42313c = i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42311a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f42311a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = LayoutInflater.from(this.f42312b).inflate(R.layout.gamedetial_check_point_item_layoutv2, viewGroup, false);
            aVar = new a();
            aVar.f42314a = (SimpleDraweeView) view.findViewById(R.id.icon);
            aVar.f42315b = (TextView) view.findViewById(R.id.name);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        try {
            GameDetailCheckPoint gameDetailCheckPoint = (GameDetailCheckPoint) getItem(i2);
            MyImageLoader.h(aVar.f42314a, gameDetailCheckPoint.getPic());
            RoundingParams o3 = aVar.f42314a.getHierarchy().o();
            if (o3 == null) {
                o3 = new RoundingParams();
            }
            float dimensionPixelOffset = this.f42312b.getResources().getDimensionPixelOffset(R.dimen.wdp6);
            o3.q(dimensionPixelOffset, dimensionPixelOffset, 0.0f, 0.0f);
            aVar.f42314a.getHierarchy().V(o3);
            aVar.f42315b.setText(gameDetailCheckPoint.getName());
        } catch (Resources.NotFoundException e4) {
            e4.printStackTrace();
        }
        return view;
    }
}
