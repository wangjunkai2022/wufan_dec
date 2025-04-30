package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ServiceState;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DetialimoreServiceAdapter.java */
/* loaded from: classes3.dex */
public class m extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f42823a;

    /* renamed from: b  reason: collision with root package name */
    private List<ServiceState> f42824b;

    /* compiled from: DetialimoreServiceAdapter.java */
    /* loaded from: classes3.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42825a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42826b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42827c;

        /* renamed from: d  reason: collision with root package name */
        TextView f42828d;

        a() {
        }
    }

    public m(Context context) {
        this.f42823a = context;
    }

    public List<ServiceState> a() {
        if (this.f42824b == null) {
            this.f42824b = new ArrayList();
        }
        return this.f42824b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42824b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        ServiceState serviceState = this.f42824b.get(i2);
        if (view == null) {
            view = LayoutInflater.from(this.f42823a).inflate(R.layout.gamedetial_bt_serviceinfo_item, (ViewGroup) null);
            aVar = new a();
            aVar.f42825a = (TextView) view.findViewById(R.id.tag);
            aVar.f42826b = (TextView) view.findViewById(R.id.day);
            aVar.f42827c = (TextView) view.findViewById(R.id.time);
            aVar.f42828d = (TextView) view.findViewById(R.id.serverName);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        aVar.f42825a.setText(serviceState.getType() == 1 ? "开服" : "合服");
        aVar.f42826b.setText(com.join.mgps.Util.x.C(serviceState.getAdd_time()));
        aVar.f42827c.setText(com.join.mgps.Util.x.x(serviceState.getAdd_time(), "HH:mm"));
        aVar.f42828d.setText(serviceState.getTitle());
        return view;
    }
}
