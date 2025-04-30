package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GamedetialModleFourBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SimulatorExitPlayAdapter.java */
/* loaded from: classes3.dex */
public class r5 extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    Context f43858a;

    /* renamed from: b  reason: collision with root package name */
    private List<GamedetialModleFourBean> f43859b = new ArrayList();

    /* compiled from: SimulatorExitPlayAdapter.java */
    /* loaded from: classes3.dex */
    class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43860a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43861b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43862c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43863d;

        /* renamed from: e  reason: collision with root package name */
        TextView f43864e;

        /* renamed from: f  reason: collision with root package name */
        View f43865f;

        /* renamed from: g  reason: collision with root package name */
        View f43866g;

        /* renamed from: h  reason: collision with root package name */
        View f43867h;

        /* renamed from: i  reason: collision with root package name */
        View f43868i;

        /* renamed from: j  reason: collision with root package name */
        LinearLayout f43869j;

        public a(@NonNull View view) {
            super(view);
            this.f43860a = (SimpleDraweeView) view.findViewById(R.id.img);
            this.f43861b = (TextView) view.findViewById(R.id.count);
            this.f43862c = (TextView) view.findViewById(R.id.name);
            this.f43863d = (TextView) view.findViewById(R.id.desc);
            this.f43865f = view.findViewById(R.id.ml);
            this.f43866g = view.findViewById(R.id.mr);
            this.f43867h = view.findViewById(R.id.divider);
            this.f43868i = view.findViewById(R.id.rect);
            this.f43864e = (TextView) view.findViewById(R.id.score);
            this.f43869j = (LinearLayout) view.findViewById(R.id.tagLayout);
        }
    }

    public r5(Context context) {
        this.f43858a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(GamedetialModleFourBean gamedetialModleFourBean, View view) {
        IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gamedetialModleFourBean.getCrc_sign_id(), gamedetialModleFourBean.getGame_info_tpl_type(), gamedetialModleFourBean.getSp_tpl_two_position(), 13101);
    }

    public List<GamedetialModleFourBean> b() {
        return this.f43859b;
    }

    public void d(List<GamedetialModleFourBean> list) {
        this.f43859b = list;
    }

    View e(String str) {
        TextView textView = new TextView(this.f43858a);
        textView.setText(str);
        textView.setSingleLine(true);
        textView.setTextColor(Color.parseColor("#FFA8A8A8"));
        textView.setTextSize(0, this.f43858a.getResources().getDimensionPixelSize(R.dimen.wdp20));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, this.f43858a.getResources().getDimensionPixelOffset(R.dimen.wdp10), 0);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f43859b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder instanceof a) {
            a aVar = (a) viewHolder;
            final GamedetialModleFourBean gamedetialModleFourBean = this.f43859b.get(i2);
            if (!TextUtils.isEmpty(gamedetialModleFourBean.getRecommend_game_big_gif()) && i2 == 0) {
                MyImageLoader.n(aVar.f43860a, gamedetialModleFourBean.getRecommend_game_big_gif());
            } else if (!TextUtils.isEmpty(gamedetialModleFourBean.getRecommend_game_big_pic()) && (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3)) {
                MyImageLoader.e(aVar.f43860a, R.drawable.main_normal_icon, gamedetialModleFourBean.getRecommend_game_big_pic(), r.c.f12144g);
            } else if (gamedetialModleFourBean.getPic_info() != null && gamedetialModleFourBean.getPic_info().size() > 0 && gamedetialModleFourBean.getPic_info().get(0).getRemote() != null) {
                MyImageLoader.e(aVar.f43860a, R.drawable.main_normal_icon, gamedetialModleFourBean.getPic_info().get(0).getRemote().getPath(), r.c.f12144g);
            }
            aVar.f43862c.setText(gamedetialModleFourBean.getGame_name());
            aVar.f43864e.setText(gamedetialModleFourBean.getScore());
            aVar.f43868i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.q5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    r5.c(GamedetialModleFourBean.this, view);
                }
            });
            aVar.f43869j.removeAllViews();
            if (gamedetialModleFourBean.getTag_info() != null) {
                for (int i4 = 0; i4 < gamedetialModleFourBean.getTag_info().size() && i4 <= 2; i4++) {
                    aVar.f43869j.addView(e(gamedetialModleFourBean.getTag_info().get(i4).getName()));
                }
            }
            if (i2 == 0) {
                aVar.f43865f.setVisibility(0);
                aVar.f43867h.setVisibility(8);
                aVar.f43866g.setVisibility(8);
            } else if (i2 == getItemCount() - 1) {
                aVar.f43865f.setVisibility(8);
                aVar.f43867h.setVisibility(0);
                aVar.f43866g.setVisibility(0);
            } else {
                aVar.f43865f.setVisibility(8);
                aVar.f43867h.setVisibility(0);
                aVar.f43866g.setVisibility(8);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return new a(LayoutInflater.from(this.f43858a).inflate(R.layout.simulator_exit_item, viewGroup, false));
    }
}
