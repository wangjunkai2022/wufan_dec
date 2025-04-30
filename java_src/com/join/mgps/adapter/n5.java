package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SearchAutoDataBean;
import java.util.List;
/* compiled from: SearchSimpleAdapter.java */
/* loaded from: classes3.dex */
public class n5 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f43020a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f43021b;

    /* renamed from: c  reason: collision with root package name */
    private List<SearchAutoDataBean> f43022c;

    /* compiled from: SearchSimpleAdapter.java */
    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        ImageView f43023a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43024b;

        private b() {
        }

        public ImageView a() {
            return this.f43023a;
        }

        public TextView b() {
            return this.f43024b;
        }

        public void c(ImageView imageView) {
            this.f43023a = imageView;
        }

        public void d(TextView textView) {
            this.f43024b = textView;
        }
    }

    public n5(Context context) {
        this.f43020a = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43022c.size();
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
        SearchAutoDataBean searchAutoDataBean = this.f43022c.get(i2);
        if (view == null) {
            view = this.f43021b.inflate(R.layout.simple_listview_item, (ViewGroup) null);
            bVar = new b();
            bVar.f43024b = (TextView) view.findViewById(R.id.lv_tv_title);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f43024b.setText(searchAutoDataBean.getGame_name());
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public n5(Context context, List<SearchAutoDataBean> list) {
        this.f43020a = context;
        this.f43022c = list;
        this.f43021b = LayoutInflater.from(context);
    }
}
