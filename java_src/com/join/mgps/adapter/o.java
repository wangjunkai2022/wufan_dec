package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DiscoveryMainDataBean;
import java.util.List;
/* compiled from: DiscoveryTopAdapter.java */
/* loaded from: classes3.dex */
public class o extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f43026a;

    /* renamed from: b  reason: collision with root package name */
    private List<DiscoveryMainDataBean.BattleGameBean> f43027b;

    /* renamed from: c  reason: collision with root package name */
    private RoundingParams f43028c;

    /* renamed from: d  reason: collision with root package name */
    private String f43029d;

    /* compiled from: DiscoveryTopAdapter.java */
    /* loaded from: classes3.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f43030a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f43031b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f43032c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f43033d;

        a() {
        }
    }

    public o(Context context, List<DiscoveryMainDataBean.BattleGameBean> list, String str) {
        this.f43026a = context;
        this.f43027b = list;
        this.f43029d = str;
        this.f43028c = MyImageLoader.D(context, context.getResources().getDimension(R.dimen.live_item_radius));
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public DiscoveryMainDataBean.BattleGameBean getItem(int i2) {
        return this.f43027b.get(i2);
    }

    public void b(String str) {
        this.f43029d = str;
        for (int i2 = 0; i2 < this.f43027b.size(); i2++) {
            if (this.f43029d.contains(this.f43027b.get(i2).getGame_id())) {
                this.f43027b.get(i2).setIs_local_battle(true);
            } else {
                this.f43027b.get(i2).setIs_local_battle(false);
            }
        }
        notifyDataSetChanged();
    }

    public void c(List<DiscoveryMainDataBean.BattleGameBean> list) {
        this.f43027b = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f43027b.size() >= 4) {
            return 4;
        }
        return this.f43027b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        a aVar;
        DiscoveryMainDataBean.BattleGameBean battleGameBean = this.f43027b.get(i2);
        if (view == null) {
            aVar = new a();
            view2 = LayoutInflater.from(this.f43026a).inflate(R.layout.item_discovery_top_view, (ViewGroup) null);
            aVar.f43030a = (SimpleDraweeView) view2.findViewById(R.id.ItemIcon);
            aVar.f43031b = (TextView) view2.findViewById(R.id.ItemName);
            aVar.f43032c = (TextView) view2.findViewById(R.id.ItemNum);
            aVar.f43033d = (ImageView) view2.findViewById(R.id.ItemMy);
            view2.setTag(aVar);
        } else {
            view2 = view;
            aVar = (a) view.getTag();
        }
        MyImageLoader.j(aVar.f43030a, battleGameBean.getGame_ico(), this.f43028c);
        aVar.f43031b.setText(battleGameBean.getGame_name());
        TextView textView = aVar.f43032c;
        textView.setText(battleGameBean.getRoom_count() + "");
        if (battleGameBean.isIs_local_battle()) {
            aVar.f43033d.setVisibility(0);
        } else {
            aVar.f43033d.setVisibility(8);
        }
        return view2;
    }
}
