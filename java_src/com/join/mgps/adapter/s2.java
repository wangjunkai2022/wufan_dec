package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.GameInformationActivityV2_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.InformationListDataBean;
import com.papa.sim.statistic.ExtFrom;
import java.util.List;
/* compiled from: MGInformationAdapter.java */
/* loaded from: classes3.dex */
public class s2 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    ExtBean f43888a;

    /* renamed from: b  reason: collision with root package name */
    private Context f43889b;

    /* renamed from: c  reason: collision with root package name */
    private List<InformationListDataBean> f43890c;

    /* compiled from: MGInformationAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationListDataBean f43891a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43892b;

        a(InformationListDataBean informationListDataBean, int i2) {
            this.f43891a = informationListDataBean;
            this.f43892b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.M1(s2.this.f43889b).c(this.f43891a.getTag_id()).d(this.f43891a.getTitle()).start();
            s2.this.f43888a = new ExtBean();
            s2.this.f43888a.setFrom(ExtFrom.home.name());
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(s2.this.f43889b);
            String from = s2.this.f43888a.getFrom();
            String position = s2.this.f43888a.getPosition();
            l4.D2(from, position, "page" + (this.f43892b + 1), "article", AccountUtil_.getInstance_(s2.this.f43889b).getUid());
        }
    }

    /* compiled from: MGInformationAdapter.java */
    /* loaded from: classes3.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43894a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43895b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43896c;

        b() {
        }
    }

    public s2(Context context) {
        this.f43889b = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43890c.size();
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
        View view2;
        b bVar;
        if (view == null) {
            bVar = new b();
            view2 = LayoutInflater.from(this.f43889b).inflate(R.layout.information_content_item, (ViewGroup) null);
            bVar.f43894a = (SimpleDraweeView) view2.findViewById(R.id.imageAd);
            bVar.f43895b = (TextView) view2.findViewById(R.id.tvTitle);
            bVar.f43896c = (TextView) view2.findViewById(R.id.tvPraise);
            view2.setTag(bVar);
        } else {
            view2 = view;
            bVar = (b) view.getTag();
        }
        InformationListDataBean informationListDataBean = this.f43890c.get(i2);
        bVar.f43894a.setImageDrawable(this.f43889b.getResources().getDrawable(R.drawable.banner_normal_icon));
        MyImageLoader.f(bVar.f43894a, R.drawable.banner_normal_icon, informationListDataBean.getMaterial(), MyImageLoader.C(this.f43889b));
        bVar.f43895b.setText(informationListDataBean.getTitle());
        bVar.f43896c.setText(informationListDataBean.getPraise());
        bVar.f43894a.setOnClickListener(new a(informationListDataBean, i2));
        return view2;
    }

    public s2(Context context, List<InformationListDataBean> list, ExtBean extBean) {
        this.f43889b = context;
        this.f43890c = list;
        this.f43888a = extBean;
    }
}
