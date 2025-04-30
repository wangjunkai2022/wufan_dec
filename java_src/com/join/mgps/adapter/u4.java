package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.PapayHistoryInfo;
import java.util.ArrayList;
import java.util.List;
/* compiled from: PapayHistoryAdapter.java */
/* loaded from: classes3.dex */
public class u4 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    Context f44326a;

    /* renamed from: b  reason: collision with root package name */
    List<PapayHistoryInfo> f44327b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    LayoutInflater f44328c;

    public u4(Context context) {
        this.f44326a = context;
        this.f44328c = LayoutInflater.from(context);
    }

    public List<PapayHistoryInfo> a() {
        return this.f44327b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44327b.size();
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
        if (view == null) {
            view = this.f44328c.inflate(R.layout.papay_history_item_layout, (ViewGroup) null);
        }
        PapayHistoryInfo papayHistoryInfo = this.f44327b.get(i2);
        ((TextView) com.join.mgps.Util.o2.a(view, R.id.payType)).setText(papayHistoryInfo.getTitle());
        ((TextView) com.join.mgps.Util.o2.a(view, R.id.payNumber)).setText(papayHistoryInfo.getMoney());
        ((TextView) com.join.mgps.Util.o2.a(view, R.id.paySuccess)).setText(papayHistoryInfo.getStatus());
        ((TextView) com.join.mgps.Util.o2.a(view, R.id.payTime)).setText(papayHistoryInfo.getPay_time());
        return view;
    }
}
