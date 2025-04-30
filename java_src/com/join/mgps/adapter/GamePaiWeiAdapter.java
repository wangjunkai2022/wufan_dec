package com.join.mgps.adapter;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.util.List;
/* loaded from: classes3.dex */
public class GamePaiWeiAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f40709a;

    /* renamed from: b  reason: collision with root package name */
    private List<d> f40710b;

    /* renamed from: c  reason: collision with root package name */
    private b f40711c;

    /* renamed from: d  reason: collision with root package name */
    private String f40712d;

    /* renamed from: e  reason: collision with root package name */
    private int f40713e;

    /* renamed from: f  reason: collision with root package name */
    private int f40714f;

    /* loaded from: classes3.dex */
    public enum ViewType {
        RANK
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40715a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PaiWeiDataBean.RankListBean f40716b;

        a(int i2, PaiWeiDataBean.RankListBean rankListBean) {
            this.f40715a = i2;
            this.f40716b = rankListBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamePaiWeiAdapter.this.f40711c.a(this.f40715a, this.f40716b.getVideo());
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(int i2, String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends e {

        /* renamed from: b  reason: collision with root package name */
        private RelativeLayout f40718b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f40719c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f40720d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f40721e;

        /* renamed from: f  reason: collision with root package name */
        private ImageView f40722f;

        /* renamed from: g  reason: collision with root package name */
        private SimpleDraweeView f40723g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f40724h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f40725i;

        /* renamed from: j  reason: collision with root package name */
        private TextView f40726j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f40727k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f40728l;

        /* renamed from: m  reason: collision with root package name */
        private ImageButton f40729m;

        c() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40731a;

        /* renamed from: b  reason: collision with root package name */
        Object f40732b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public PaiWeiDataBean.RankListBean f40733a;

            public a(PaiWeiDataBean.RankListBean rankListBean) {
                this.f40733a = rankListBean;
            }
        }

        public d() {
        }

        public Object a() {
            return this.f40732b;
        }

        public ViewType b() {
            return this.f40731a;
        }

        public void c(Object obj) {
            this.f40732b = obj;
        }

        public void d(ViewType viewType) {
            this.f40731a = viewType;
        }

        public d(ViewType viewType, Object obj) {
            this.f40731a = viewType;
            this.f40732b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class e {
        e() {
        }
    }

    public GamePaiWeiAdapter(Context context, List<d> list, b bVar) {
        this.f40709a = context;
        this.f40710b = list;
        this.f40711c = bVar;
        int width = ((Activity) context).getWindowManager().getDefaultDisplay().getWidth();
        this.f40713e = width;
        int i2 = (width * 42) / 100;
        this.f40713e = i2;
        int a4 = i2 - com.join.mgps.Util.b0.a(context, 20.0f);
        this.f40713e = a4;
        this.f40714f = (a4 * 625) / 2490;
    }

    private View b(int i2, View view, ViewGroup viewGroup) {
        View view2;
        c cVar;
        d.a aVar = (d.a) getItem(i2);
        if (view == null) {
            cVar = new c();
            view2 = LayoutInflater.from(this.f40709a).inflate(R.layout.item_paiwei_view, (ViewGroup) null);
            cVar.f40718b = (RelativeLayout) view2.findViewById(R.id.item_root_rl);
            cVar.f40719c = (ImageView) view2.findViewById(R.id.item_rank_bg_iv);
            cVar.f40720d = (ImageView) view2.findViewById(R.id.item_rank_iv);
            cVar.f40721e = (TextView) view2.findViewById(R.id.item_rank_tv);
            cVar.f40728l = (TextView) view2.findViewById(R.id.item_rank_cion_tv);
            cVar.f40722f = (ImageView) view2.findViewById(R.id.item_hander_bg_iv);
            cVar.f40723g = (SimpleDraweeView) view2.findViewById(R.id.item_hander_iv);
            cVar.f40724h = (TextView) view2.findViewById(R.id.item_rank_name_tv);
            cVar.f40725i = (TextView) view2.findViewById(R.id.item_rank_bf_tv);
            cVar.f40726j = (TextView) view2.findViewById(R.id.item_rank_role_tv);
            cVar.f40727k = (TextView) view2.findViewById(R.id.item_rank_time_tv);
            cVar.f40729m = (ImageButton) view2.findViewById(R.id.item_rank_play_ib);
            view2.setTag(cVar);
        } else {
            view2 = view;
            cVar = (c) view.getTag();
        }
        PaiWeiDataBean.RankListBean rankListBean = aVar.f40733a;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f40713e, this.f40714f);
        layoutParams.topMargin = com.join.mgps.Util.b0.a(this.f40709a, 5.0f);
        layoutParams.leftMargin = com.join.mgps.Util.b0.a(this.f40709a, 10.0f);
        layoutParams.rightMargin = com.join.mgps.Util.b0.a(this.f40709a, 10.0f);
        cVar.f40718b.setLayoutParams(layoutParams);
        if (i2 == 0) {
            cVar.f40720d.setVisibility(0);
            cVar.f40721e.setVisibility(8);
            cVar.f40720d.setImageResource(R.drawable.paiwei_list_one);
            cVar.f40719c.setImageResource(R.drawable.paiwei_list_top_bg);
            cVar.f40722f.setImageResource(R.drawable.paiwei_list_top_header_bg);
            cVar.f40727k.setTextColor(Color.parseColor("#AB8E55"));
        } else if (i2 == 1) {
            cVar.f40720d.setVisibility(0);
            cVar.f40721e.setVisibility(8);
            cVar.f40720d.setImageResource(R.drawable.paiwei_list_two);
            cVar.f40719c.setImageResource(R.drawable.paiwei_list_other_bg);
            cVar.f40722f.setImageResource(R.drawable.paiwei_list_header_bg);
            cVar.f40727k.setTextColor(Color.parseColor("#339CBB"));
        } else if (i2 == 2) {
            cVar.f40720d.setVisibility(0);
            cVar.f40721e.setVisibility(8);
            cVar.f40720d.setImageResource(R.drawable.paiwei_list_three);
            cVar.f40719c.setImageResource(R.drawable.paiwei_list_other_bg);
            cVar.f40722f.setImageResource(R.drawable.paiwei_list_header_bg);
            cVar.f40727k.setTextColor(Color.parseColor("#339CBB"));
        } else {
            cVar.f40720d.setVisibility(8);
            cVar.f40721e.setVisibility(0);
            StringBuilder sb = new StringBuilder();
            sb.append("");
            int i4 = i2 + 1;
            sb.append(i4);
            if (sb.toString().length() <= 2) {
                cVar.f40721e.setTextSize(2, 25.0f);
            } else {
                cVar.f40721e.setTextSize(2, 16.0f);
            }
            TextView textView = cVar.f40721e;
            textView.setText("" + i4);
            cVar.f40719c.setImageResource(R.drawable.paiwei_list_other_bg);
            cVar.f40722f.setImageResource(R.drawable.paiwei_list_header_bg);
            cVar.f40727k.setTextColor(Color.parseColor("#339CBB"));
        }
        cVar.f40724h.setText(rankListBean.getNickname());
        cVar.f40727k.setText(rankListBean.getUse_time());
        cVar.f40726j.setText(rankListBean.getRole());
        if (rankListBean.getRole_rank() == null || rankListBean.getRole_rank().isEmpty()) {
            cVar.f40725i.setVisibility(8);
        } else {
            cVar.f40725i.setVisibility(0);
            TextView textView2 = cVar.f40725i;
            textView2.setText("第" + com.join.mgps.Util.h1.a(Integer.valueOf(rankListBean.getRole_rank()).intValue()));
        }
        if (com.join.mgps.Util.d2.i(rankListBean.getAvatar())) {
            UtilsMy.H2(this.f40709a, rankListBean.getAvatar(), cVar.f40723g);
        }
        if (rankListBean.getCost_coin() != null && !rankListBean.getCost_coin().isEmpty()) {
            TextView textView3 = cVar.f40728l;
            textView3.setText(rankListBean.getCost_coin() + this.f40712d);
        }
        cVar.f40729m.setOnClickListener(new a(i2, rankListBean));
        return view2;
    }

    public void c(List<d> list) {
        this.f40710b = list;
        notifyDataSetChanged();
    }

    public void d(String str) {
        this.f40712d = str;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<d> list = this.f40710b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<d> list = this.f40710b;
        if (list != null) {
            return list.get(i2).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        List<d> list = this.f40710b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        return getItemViewType(i2) == ViewType.RANK.ordinal() ? b(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }
}
