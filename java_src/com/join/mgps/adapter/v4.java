package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.util.List;
/* compiled from: RankSelectRoloAdapter.java */
/* loaded from: classes3.dex */
public class v4 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    List<PaiWeiDataBean.RolesBean> f44389a;

    /* renamed from: b  reason: collision with root package name */
    private Context f44390b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f44391c;

    /* renamed from: d  reason: collision with root package name */
    private a f44392d;

    /* renamed from: e  reason: collision with root package name */
    private int f44393e = 0;

    /* compiled from: RankSelectRoloAdapter.java */
    /* loaded from: classes3.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f44394a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f44395b;

        /* renamed from: c  reason: collision with root package name */
        TextView f44396c;

        a() {
        }
    }

    public v4(Context context, List<PaiWeiDataBean.RolesBean> list) {
        this.f44390b = context;
        this.f44389a = list;
        this.f44391c = LayoutInflater.from(context);
    }

    public void a(int i2) {
        this.f44393e = i2;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44389a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f44389a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            this.f44392d = new a();
            view = this.f44391c.inflate(R.layout.item_roles_listview, (ViewGroup) null);
            this.f44392d.f44394a = (LinearLayout) view.findViewById(R.id.item_roles_ll);
            this.f44392d.f44395b = (ImageView) view.findViewById(R.id.item_select_iv);
            this.f44392d.f44396c = (TextView) view.findViewById(R.id.item_name_tx);
            view.setTag(this.f44392d);
        } else {
            this.f44392d = (a) view.getTag();
        }
        PaiWeiDataBean.RolesBean rolesBean = this.f44389a.get(i2);
        if (i2 == this.f44393e) {
            this.f44392d.f44395b.setVisibility(0);
            this.f44392d.f44396c.setTextColor(Color.parseColor("#6ee6fe"));
        } else {
            this.f44392d.f44395b.setVisibility(8);
            this.f44392d.f44396c.setTextColor(Color.parseColor("#156d84"));
        }
        this.f44392d.f44396c.setText(rolesBean.getRole());
        return view;
    }
}
