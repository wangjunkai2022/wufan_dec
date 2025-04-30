package com.join.mgps.adapter;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GameMainV3DataBean;
import com.papa.sim.statistic.Event;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: GameRecommendAdapter.java */
/* loaded from: classes3.dex */
public class b2 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private Context f41284b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f41285c;

    /* renamed from: d  reason: collision with root package name */
    private Map<Integer, Integer> f41286d = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private List<GameMainV3DataBean.GameRecommendInfoBean> f41283a = new ArrayList();

    /* compiled from: GameRecommendAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41287a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f41288b;

        a(String str, int i2) {
            this.f41287a = str;
            this.f41288b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(b2.this.f41284b);
            Event event = Event.clickIndexAdEvent;
            String uid = AccountUtil_.getInstance_(b2.this.f41284b).getUid();
            String str = this.f41287a;
            l4.W0(event, uid, str, "1-" + (this.f41288b + 1), 0);
            IntentUtil.getInstance().goGameDetialActivity(b2.this.f41284b, this.f41287a, "0", 1, 122);
        }
    }

    /* compiled from: GameRecommendAdapter.java */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41290a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41291b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f41292c;

        public b(View view) {
            super(view);
            this.f41290a = (SimpleDraweeView) view.findViewById(R.id.itemGameRecommendIv);
            this.f41291b = (TextView) view.findViewById(R.id.itemGameRecommendTx);
            this.f41292c = (LinearLayout) view.findViewById(R.id.itemGameRecommendRootLl);
        }
    }

    public b2(Context context) {
        this.f41284b = context;
        this.f41285c = LayoutInflater.from(this.f41284b);
    }

    public void b(List<GameMainV3DataBean.GameRecommendInfoBean> list) {
        this.f41283a = list;
        notifyDataSetChanged();
    }

    public void c() {
        this.f41286d.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f41283a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        try {
            GameMainV3DataBean.GameRecommendInfoBean gameRecommendInfoBean = this.f41283a.get(i2);
            if (!(viewHolder instanceof b) || gameRecommendInfoBean == null) {
                return;
            }
            String valueOf = String.valueOf(gameRecommendInfoBean.getGame_id());
            if (!this.f41286d.containsKey(Integer.valueOf(i2))) {
                this.f41286d.put(Integer.valueOf(i2), Integer.valueOf(i2));
                StringBuilder sb = new StringBuilder();
                sb.append("dot:");
                sb.append(i2);
                com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.f41284b);
                Event event = Event.visitIndexAdEvent;
                String uid = AccountUtil_.getInstance_(this.f41284b).getUid();
                l4.W0(event, uid, valueOf, "1-" + (i2 + 1), 0);
            }
            b bVar = (b) viewHolder;
            String game_pic = gameRecommendInfoBean.getGame_pic();
            if (!com.join.mgps.Util.d2.h(game_pic)) {
                bVar.f41290a.setController(Fresco.newDraweeControllerBuilder().a(Uri.parse(game_pic)).E(true).build());
            }
            bVar.f41291b.setText(gameRecommendInfoBean.getGame_title());
            bVar.f41292c.setOnClickListener(new a(valueOf, i2));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this.f41285c.inflate(R.layout.item_game_recommend_view, viewGroup, false));
    }
}
