package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DynamicEntranceBean;
import java.util.List;
/* compiled from: GameMainNewDynamicEntranceAdapter.java */
/* loaded from: classes3.dex */
public class w1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44438a;

    /* renamed from: b  reason: collision with root package name */
    private List<DynamicEntranceBean> f44439b;

    /* renamed from: c  reason: collision with root package name */
    private a f44440c;

    /* compiled from: GameMainNewDynamicEntranceAdapter.java */
    /* loaded from: classes3.dex */
    public interface a {
        void f0(DynamicEntranceBean dynamicEntranceBean);
    }

    /* compiled from: GameMainNewDynamicEntranceAdapter.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private View f44441a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f44442b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44443c;

        public b() {
        }
    }

    public w1(Context context, List<DynamicEntranceBean> list, a aVar) {
        this.f44438a = context;
        this.f44439b = list;
        this.f44440c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(int i2, View view) {
        this.f44440c.f0(this.f44439b.get(i2));
    }

    public void b() {
        this.f44439b.clear();
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public DynamicEntranceBean getItem(int i2) {
        return this.f44439b.get(i2);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44439b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(final int i2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f44438a).inflate(R.layout.item_game_main_new_view, (ViewGroup) null);
            bVar = new b();
            bVar.f44441a = view.findViewById(R.id.itemGameMainNewRootRl);
            bVar.f44442b = (TextView) view.findViewById(R.id.itemGameMainNameTx);
            bVar.f44443c = (TextView) view.findViewById(R.id.itemGameMainTipTv);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f44442b.setText(this.f44439b.get(i2).getName());
        String tips = this.f44439b.get(i2).getTips();
        if (com.join.mgps.Util.d2.h(tips) || "0".equals(tips)) {
            bVar.f44443c.setVisibility(8);
        } else {
            bVar.f44443c.setVisibility(0);
            bVar.f44443c.setText(tips);
        }
        bVar.f44441a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.v1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                w1.this.d(i2, view2);
            }
        });
        return view;
    }
}
