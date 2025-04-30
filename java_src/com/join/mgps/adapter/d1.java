package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.RecommendGameBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameDetailRecomAdapter.java */
/* loaded from: classes3.dex */
public class d1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f41519a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f41520b;

    /* renamed from: c  reason: collision with root package name */
    private List<RecommendGameBean> f41521c;

    /* renamed from: d  reason: collision with root package name */
    private int f41522d;

    /* compiled from: GameDetailRecomAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41523a;

        a(int i2) {
            this.f41523a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RecommendGameBean recommendGameBean = (RecommendGameBean) d1.this.f41521c.get(this.f41523a);
            IntentUtil.getInstance().goGameDetialActivity(d1.this.f41519a, recommendGameBean.getId(), recommendGameBean.getTpl_type(), recommendGameBean.getSp_tpl_two_position(), d1.this.f41522d);
        }
    }

    /* compiled from: GameDetailRecomAdapter.java */
    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41525a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41526b;

        private b() {
        }

        /* synthetic */ b(d1 d1Var, a aVar) {
            this();
        }
    }

    public d1(Context context) {
        this.f41521c = new ArrayList();
        this.f41519a = context;
        this.f41520b = LayoutInflater.from(context);
    }

    public List<RecommendGameBean> d() {
        return null;
    }

    public int e() {
        return this.f41522d;
    }

    public void f(int i2) {
        this.f41522d = i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41521c.size();
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
            view = this.f41520b.inflate(R.layout.gamedetail_recom_item, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.f41525a = (SimpleDraweeView) view.findViewById(R.id.recomGameImage);
            bVar.f41526b = (TextView) view.findViewById(R.id.recomGameTv);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f41525a.setImageURI(this.f41521c.get(i2).getIco_remote());
        bVar.f41526b.setText(this.f41521c.get(i2).getTitle());
        bVar.f41525a.getHeight();
        bVar.f41525a.setOnClickListener(new a(i2));
        return view;
    }

    public d1(Context context, List<RecommendGameBean> list) {
        this.f41521c = new ArrayList();
        this.f41519a = context;
        this.f41520b = LayoutInflater.from(context);
        this.f41521c = list;
    }
}
