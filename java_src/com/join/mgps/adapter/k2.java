package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.List;
/* compiled from: HomeGameListAdapter.java */
/* loaded from: classes3.dex */
public class k2 extends RecyclerView.Adapter<b> {

    /* renamed from: a  reason: collision with root package name */
    List<GameFromPopoWinBeanV2.DataBean> f42320a;

    /* renamed from: b  reason: collision with root package name */
    Context f42321b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HomeGameListAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBeanV2.DataBean f42322a;

        a(GameFromPopoWinBeanV2.DataBean dataBean) {
            this.f42322a = dataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2 k2Var = k2.this;
            k2Var.a(this.f42322a.getId() + "", this.f42322a.getUid());
            Ext ext = new Ext();
            ext.setPosition("fromGameDetailP2");
            ext.setArticleId(this.f42322a.getId() + "");
            com.papa.sim.statistic.p.l(k2.this.f42321b).K1(Event.enterUserGameList, ext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HomeGameListAdapter.java */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f42324a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42325b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f42326c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f42327d;

        /* renamed from: e  reason: collision with root package name */
        TextView f42328e;

        /* renamed from: f  reason: collision with root package name */
        TextView f42329f;

        /* renamed from: g  reason: collision with root package name */
        TextView f42330g;

        public b(@NonNull View view) {
            super(view);
            this.f42324a = view.findViewById(R.id.main);
            this.f42325b = (TextView) view.findViewById(R.id.title);
            this.f42326c = (LinearLayout) view.findViewById(R.id.iconLayout);
            this.f42327d = (LinearLayout) view.findViewById(R.id.iconLayout2);
            this.f42328e = (TextView) view.findViewById(R.id.name);
            this.f42329f = (TextView) view.findViewById(R.id.number);
            this.f42330g = (TextView) view.findViewById(R.id.follow);
        }
    }

    public k2(Context context, List<GameFromPopoWinBeanV2.DataBean> list) {
        this.f42320a = list;
        this.f42321b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2) {
        Intent intent = new Intent(this.f42321b, GameDetailActivity_.class);
        intent.putExtra("fromid", str);
        intent.putExtra(DownloadMethodPromptDialog_.F, 11105);
        intent.putExtra("groupuid", i2);
        this.f42321b.startActivity(intent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: c */
    public void onBindViewHolder(@NonNull b bVar, int i2) {
        getItemViewType(i2);
        GameFromPopoWinBeanV2.DataBean dataBean = this.f42320a.get(i2);
        bVar.f42324a.setOnClickListener(new a(dataBean));
        bVar.f42325b.setText(dataBean.getTitle());
        TextView textView = bVar.f42328e;
        textView.setText("by  " + dataBean.getNick_name());
        bVar.f42326c.removeAllViews();
        for (int i4 = 0; i4 < dataBean.getGame_list().size(); i4++) {
            String game_ico = dataBean.getGame_list().get(i4).getGame_ico();
            View inflate = LayoutInflater.from(this.f42321b).inflate(R.layout.gamelist_listitembig_gameicon_layout, (ViewGroup) null);
            MyImageLoader.d((SimpleDraweeView) inflate.findViewById(R.id.icon), R.drawable.main_normal_icon, game_ico);
            if (i4 < 2) {
                bVar.f42326c.addView(inflate);
            } else if (i4 < 4) {
                bVar.f42327d.addView(inflate);
            }
        }
        int i5 = i2 % 5;
        if (i5 == 0) {
            bVar.f42324a.setBackgroundResource(R.drawable.gamelist_itemback_1);
        } else if (i5 == 1) {
            bVar.f42324a.setBackgroundResource(R.drawable.gamelist_itemback_2);
        } else if (i5 == 2) {
            bVar.f42324a.setBackgroundResource(R.drawable.gamelist_itemback_3);
        } else if (i5 == 3) {
            bVar.f42324a.setBackgroundResource(R.drawable.gamelist_itemback_4);
        } else if (i5 == 4) {
            bVar.f42324a.setBackgroundResource(R.drawable.gamelist_itemback_5);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: d */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return new b(LayoutInflater.from(this.f42321b).inflate(R.layout.gamelist_list_itemhome, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f42320a.size();
    }
}
