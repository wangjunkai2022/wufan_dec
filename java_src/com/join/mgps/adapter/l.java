package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.List;
/* compiled from: DetialFavoritesAdapter.java */
/* loaded from: classes3.dex */
public class l extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f42341a;

    /* renamed from: b  reason: collision with root package name */
    Context f42342b;

    /* renamed from: c  reason: collision with root package name */
    int f42343c;

    /* compiled from: DetialFavoritesAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean.DataBean f42344a;

        a(GameFromPopoWinBean.DataBean dataBean) {
            this.f42344a = dataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(view.getContext(), GameDetailActivity_.class);
            intent.putExtra("fromid", this.f42344a.getId());
            intent.putExtra("groupuid", this.f42344a.getUid());
            intent.putExtra(DownloadMethodPromptDialog_.F, 11103);
            intent.putExtra("gameid", "0");
            intent.putExtra("company_id", "0");
            view.getContext().startActivity(intent);
            Ext ext = new Ext();
            ext.setPosition("fromGameDetailP1");
            ext.setArticleId(this.f42344a.getId());
            com.papa.sim.statistic.p.l(l.this.f42342b).K1(Event.enterUserGameList, ext);
        }
    }

    public l(Context context, List<GameFromPopoWinBean.DataBean> list, int i2) {
        this.f42341a = list;
        this.f42342b = context;
        this.f42343c = i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42341a.size();
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
            view = LayoutInflater.from(this.f42342b).inflate(R.layout.gamedetial_favorties_item_layoutv2, (ViewGroup) null);
        }
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.main);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.iconLayout);
        GameFromPopoWinBean.DataBean dataBean = this.f42341a.get(i2);
        relativeLayout.setOnClickListener(new a(dataBean));
        ((TextView) view.findViewById(R.id.title)).setText(dataBean.getTitle());
        ((TextView) view.findViewById(R.id.name)).setText(dataBean.getNick_name());
        ((TextView) view.findViewById(R.id.follow)).setText(dataBean.getBook_count() + "订阅");
        ((TextView) view.findViewById(R.id.number)).setText(dataBean.getGame_count() + "款");
        linearLayout.removeAllViews();
        for (GameFromPopoWinBean.DataBean.GameListBean gameListBean : dataBean.getGame_list()) {
            View inflate = LayoutInflater.from(this.f42342b).inflate(R.layout.gamelist_listitem_gameicon_layout, (ViewGroup) null);
            MyImageLoader.d((SimpleDraweeView) inflate.findViewById(R.id.icon), R.drawable.main_normal_icon, gameListBean.getGame_ico());
            linearLayout.addView(inflate);
        }
        int i4 = i2 % 5;
        if (i4 == 0) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_1);
        } else if (i4 == 1) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_2);
        } else if (i4 == 2) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_3);
        } else if (i4 == 3) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_4);
        } else if (i4 == 4) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_5);
        }
        return view;
    }
}
