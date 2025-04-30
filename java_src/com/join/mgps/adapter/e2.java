package com.join.mgps.adapter;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.RecommendAd;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameRecommendAdapter1.java */
/* loaded from: classes3.dex */
public class e2 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private Context f41558b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f41559c;

    /* renamed from: d  reason: collision with root package name */
    String f41560d;

    /* renamed from: e  reason: collision with root package name */
    GameMainV4DataBean.MemberInfoBean f41561e;

    /* renamed from: g  reason: collision with root package name */
    private y2 f41563g;

    /* renamed from: f  reason: collision with root package name */
    List<GameMainV4DataBean.MemberFunBean> f41562f = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    private List<RecommendAd> f41557a = new ArrayList();

    /* compiled from: GameRecommendAdapter1.java */
    /* loaded from: classes3.dex */
    class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41564a;

        public a(View view) {
            super(view);
            this.f41564a = (SimpleDraweeView) view.findViewById(R.id.bg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameRecommendAdapter1.java */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f41566a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41567b;

        /* renamed from: c  reason: collision with root package name */
        GridView f41568c;

        /* renamed from: d  reason: collision with root package name */
        SimpleDraweeView f41569d;

        /* renamed from: e  reason: collision with root package name */
        View f41570e;

        public b(View view) {
            super(view);
            this.f41566a = (TextView) view.findViewById(R.id.vipTitle);
            this.f41567b = (TextView) view.findViewById(R.id.vipDesc);
            this.f41568c = (GridView) view.findViewById(R.id.vipFunc);
            this.f41569d = (SimpleDraweeView) view.findViewById(R.id.vipIcon);
            this.f41570e = view.findViewById(R.id.buyVip);
            e2.this.f41563g = new y2(e2.this.f41558b, e2.this.f41560d);
            this.f41568c.setAdapter((ListAdapter) e2.this.f41563g);
        }
    }

    public e2(Context context) {
        this.f41558b = context;
        this.f41559c = LayoutInflater.from(this.f41558b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(IntentDateBean intentDateBean, int i2, View view) {
        IntentUtil.getInstance().intentActivity(view.getContext(), intentDateBean);
        Ext ext = new Ext();
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(i2 - 1);
        ext.setPosition(sb.toString());
        com.papa.sim.statistic.p.l(view.getContext()).K1(Event.indexGame_ad, ext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(GameMainV4DataBean.MemberInfoBean memberInfoBean, View view) {
        f(memberInfoBean);
    }

    private void l(b bVar, int i2) {
        final GameMainV4DataBean.MemberInfoBean memberInfoBean = this.f41561e;
        if (memberInfoBean != null) {
            if (!com.join.mgps.Util.d2.h(memberInfoBean.getPic_remote())) {
                bVar.f41569d.setImageURI(memberInfoBean.getPic_remote());
            }
            bVar.f41566a.setText(memberInfoBean.getTitle());
        }
        List<GameMainV4DataBean.MemberFunBean> list = this.f41562f;
        if (this.f41563g == null) {
            this.f41563g = new y2(this.f41558b, this.f41560d);
        }
        bVar.f41568c.setAdapter((ListAdapter) this.f41563g);
        if (list != null && list.size() > 0) {
            this.f41563g.d(list);
            this.f41563g.notifyDataSetChanged();
        }
        bVar.f41570e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.d2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e2.this.k(memberInfoBean, view);
            }
        });
    }

    void f(GameMainV4DataBean.MemberInfoBean memberInfoBean) {
        String str;
        if (memberInfoBean != null) {
            try {
                if (Integer.parseInt(memberInfoBean.getLink_type()) == 4 && memberInfoBean.getLink_type_val() != null && memberInfoBean.getLink_type_val().startsWith(com.facebook.common.util.f.f11765a)) {
                    String link_type_val = memberInfoBean.getLink_type_val();
                    if (link_type_val.contains("?")) {
                        str = link_type_val + "&game_id=" + this.f41560d;
                    } else {
                        str = link_type_val + "?game_id=" + this.f41560d;
                    }
                    memberInfoBean.setLink_type_val(str);
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(Integer.valueOf(memberInfoBean.getLink_type()).intValue());
                intentDateBean.setJump_type(Integer.valueOf(memberInfoBean.getJump_type()).intValue());
                intentDateBean.setLink_type_val(memberInfoBean.getLink_type_val());
                IntentUtil.getInstance().intentActivity(this.f41558b, intentDateBean);
            } catch (NumberFormatException e4) {
                e4.printStackTrace();
            }
        }
    }

    public String g() {
        return this.f41560d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<RecommendAd> list = this.f41557a;
        if (list != null) {
            return list.size() + 1;
        }
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        if (i2 == 0) {
            return 1;
        }
        return super.getItemViewType(i2);
    }

    public List<GameMainV4DataBean.MemberFunBean> h() {
        return this.f41562f;
    }

    public GameMainV4DataBean.MemberInfoBean i() {
        return this.f41561e;
    }

    public void m(List<GameMainV4DataBean.MemberFunBean> list) {
        this.f41562f = list;
    }

    public void n(GameMainV4DataBean.MemberInfoBean memberInfoBean) {
        this.f41561e = memberInfoBean;
    }

    public void o(List<RecommendAd> list) {
        this.f41557a = list;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i2) {
        if (viewHolder instanceof a) {
            RecommendAd recommendAd = this.f41557a.get(i2 - 1);
            if (recommendAd == null) {
                return;
            }
            recommendAd.getCrc_link_type_val();
            a aVar = (a) viewHolder;
            String pic_remote = recommendAd.getPic_remote();
            if (!com.join.mgps.Util.d2.h(pic_remote)) {
                Uri parse = Uri.parse(pic_remote);
                String str = (String) aVar.f41564a.getTag();
                if (TextUtils.isEmpty(str) || !pic_remote.equals(str)) {
                    aVar.f41564a.setController(Fresco.newDraweeControllerBuilder().a(parse).E(true).c(aVar.f41564a.getController()).build());
                    aVar.f41564a.setTag(pic_remote);
                }
            }
            final IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(recommendAd.getLink_type());
            intentDateBean.setJump_type(recommendAd.getJump_type());
            intentDateBean.setLink_type_val(recommendAd.getLink_type_val());
            intentDateBean.setCrc_link_type_val(recommendAd.getCrc_link_type_val());
            intentDateBean.setTpl_type(recommendAd.getTpl_type() + "");
            intentDateBean.setExtBean(new ExtBean().set_from_type(13102));
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e2.j(IntentDateBean.this, i2, view);
                }
            });
        } else if (viewHolder instanceof b) {
            l((b) viewHolder, i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        if (i2 == 1) {
            return new b(this.f41559c.inflate(R.layout.layout_game_main_vip, viewGroup, false));
        }
        return new a(this.f41559c.inflate(R.layout.item_game_recommend_view1, viewGroup, false));
    }

    public void setGameId(String str) {
        this.f41560d = str;
    }
}
