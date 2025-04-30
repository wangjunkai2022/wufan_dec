package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.FriendBackGameRspBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SimulatorExitPlayFriendAdapter.java */
/* loaded from: classes3.dex */
public class v5 extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    Context f44398a;

    /* renamed from: b  reason: collision with root package name */
    private List<GamedetialModleFourBean> f44399b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private List<FriendBackGameRspBean.FriendInfo> f44400c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private a f44401d;

    /* compiled from: SimulatorExitPlayFriendAdapter.java */
    /* loaded from: classes3.dex */
    public interface a {
        void b(int i2);

        void c(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimulatorExitPlayFriendAdapter.java */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f44402a;

        /* renamed from: b  reason: collision with root package name */
        TextView f44403b;

        /* renamed from: c  reason: collision with root package name */
        TextView f44404c;

        /* renamed from: d  reason: collision with root package name */
        TextView f44405d;

        /* renamed from: e  reason: collision with root package name */
        TextView f44406e;

        /* renamed from: f  reason: collision with root package name */
        View f44407f;

        /* renamed from: g  reason: collision with root package name */
        View f44408g;

        /* renamed from: h  reason: collision with root package name */
        View f44409h;

        /* renamed from: i  reason: collision with root package name */
        View f44410i;

        /* renamed from: j  reason: collision with root package name */
        LinearLayout f44411j;

        public b(@NonNull View view) {
            super(view);
            this.f44402a = (SimpleDraweeView) view.findViewById(R.id.img);
            this.f44403b = (TextView) view.findViewById(R.id.count);
            this.f44404c = (TextView) view.findViewById(R.id.name);
            this.f44405d = (TextView) view.findViewById(R.id.desc);
            this.f44407f = view.findViewById(R.id.ml);
            this.f44408g = view.findViewById(R.id.mr);
            this.f44409h = view.findViewById(R.id.divider);
            this.f44410i = view.findViewById(R.id.rect);
            this.f44406e = (TextView) view.findViewById(R.id.score);
            this.f44411j = (LinearLayout) view.findViewById(R.id.tagLayout);
        }
    }

    /* compiled from: SimulatorExitPlayFriendAdapter.java */
    /* loaded from: classes3.dex */
    class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f44413a;

        /* renamed from: b  reason: collision with root package name */
        TextView f44414b;

        /* renamed from: c  reason: collision with root package name */
        TextView f44415c;

        /* renamed from: d  reason: collision with root package name */
        View f44416d;

        /* renamed from: e  reason: collision with root package name */
        View f44417e;

        /* renamed from: f  reason: collision with root package name */
        View f44418f;

        /* renamed from: g  reason: collision with root package name */
        View f44419g;

        /* renamed from: h  reason: collision with root package name */
        SimpleDraweeView f44420h;

        /* renamed from: i  reason: collision with root package name */
        ImageView f44421i;

        /* renamed from: j  reason: collision with root package name */
        ImageView f44422j;

        /* renamed from: k  reason: collision with root package name */
        ImageView f44423k;

        /* renamed from: l  reason: collision with root package name */
        View f44424l;

        public c(@NonNull View view) {
            super(view);
            this.f44414b = (TextView) view.findViewById(R.id.label);
            this.f44415c = (TextView) view.findViewById(R.id.btn);
            this.f44413a = (TextView) view.findViewById(R.id.name);
            this.f44420h = (SimpleDraweeView) view.findViewById(R.id.avatar);
            this.f44416d = view.findViewById(R.id.ml);
            this.f44417e = view.findViewById(R.id.mr);
            this.f44418f = view.findViewById(R.id.divider);
            this.f44419g = view.findViewById(R.id.rect);
            this.f44421i = (ImageView) view.findViewById(R.id.like);
            this.f44422j = (ImageView) view.findViewById(R.id.icLevel1);
            this.f44423k = (ImageView) view.findViewById(R.id.icLevel1Bg);
            this.f44424l = view.findViewById(R.id.vip);
        }
    }

    public v5(Context context) {
        this.f44398a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(FriendBackGameRspBean.FriendInfo friendInfo, View view) {
        a aVar = this.f44401d;
        if (aVar != null) {
            aVar.b(friendInfo.getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(FriendBackGameRspBean.FriendInfo friendInfo, View view) {
        a aVar = this.f44401d;
        if (aVar != null) {
            aVar.c(friendInfo.getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(GamedetialModleFourBean gamedetialModleFourBean, View view) {
        IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gamedetialModleFourBean.getCrc_sign_id(), gamedetialModleFourBean.getGame_info_tpl_type(), gamedetialModleFourBean.getSp_tpl_two_position(), 13101);
    }

    public List<FriendBackGameRspBean.FriendInfo> d() {
        return this.f44400c;
    }

    public List<GamedetialModleFourBean> e() {
        return this.f44399b;
    }

    public a f() {
        return this.f44401d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f44400c.size() == 0 ? this.f44399b.size() : this.f44400c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        List<FriendBackGameRspBean.FriendInfo> list = this.f44400c;
        if (list == null || list.size() == 0) {
            return 1;
        }
        return super.getItemViewType(i2);
    }

    public void j(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder instanceof b) {
            b bVar = (b) viewHolder;
            final GamedetialModleFourBean gamedetialModleFourBean = this.f44399b.get(i2);
            if (!TextUtils.isEmpty(gamedetialModleFourBean.getRecommend_game_big_gif()) && i2 == 0) {
                MyImageLoader.n(bVar.f44402a, gamedetialModleFourBean.getRecommend_game_big_gif());
            } else if (!TextUtils.isEmpty(gamedetialModleFourBean.getRecommend_game_big_pic()) && (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3)) {
                MyImageLoader.e(bVar.f44402a, R.drawable.main_normal_icon, gamedetialModleFourBean.getRecommend_game_big_pic(), r.c.f12144g);
            } else if (gamedetialModleFourBean.getPic_info() != null && gamedetialModleFourBean.getPic_info().size() > 0 && gamedetialModleFourBean.getPic_info().get(0).getRemote() != null) {
                MyImageLoader.e(bVar.f44402a, R.drawable.main_normal_icon, gamedetialModleFourBean.getPic_info().get(0).getRemote().getPath(), r.c.f12144g);
            }
            bVar.f44404c.setText(gamedetialModleFourBean.getGame_name());
            bVar.f44406e.setText(gamedetialModleFourBean.getScore());
            bVar.f44410i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.u5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    v5.i(GamedetialModleFourBean.this, view);
                }
            });
            bVar.f44411j.removeAllViews();
            if (gamedetialModleFourBean.getTag_info() != null) {
                for (int i4 = 0; i4 < gamedetialModleFourBean.getTag_info().size() && i4 <= 2; i4++) {
                    bVar.f44411j.addView(o(gamedetialModleFourBean.getTag_info().get(i4).getName()));
                }
            }
            if (i2 == 0) {
                bVar.f44407f.setVisibility(0);
                bVar.f44409h.setVisibility(8);
                bVar.f44408g.setVisibility(8);
            } else if (i2 == getItemCount() - 1) {
                bVar.f44407f.setVisibility(8);
                bVar.f44409h.setVisibility(0);
                bVar.f44408g.setVisibility(0);
            } else {
                bVar.f44407f.setVisibility(8);
                bVar.f44409h.setVisibility(0);
                bVar.f44408g.setVisibility(8);
            }
        }
    }

    public void k(List<FriendBackGameRspBean.FriendInfo> list) {
        this.f44400c = list;
    }

    public void l(List<GamedetialModleFourBean> list) {
        this.f44399b = list;
    }

    void m(View view, ImageView imageView, int i2) {
        if (i2 > 0 && i2 < 7) {
            imageView.setVisibility(0);
            view.setVisibility(0);
        } else {
            imageView.setVisibility(8);
            view.setVisibility(8);
        }
        switch (i2) {
            case 1:
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_trainee);
                view.setBackgroundResource(R.drawable.bg_border_yellow);
                return;
            case 2:
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_senior);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_senior_bg);
                return;
            case 3:
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_elite);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_elite_bg);
                return;
            case 4:
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_master);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_master_bg);
                return;
            case 5:
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_legend);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_legend_bg);
                return;
            case 6:
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest_bg);
                return;
            default:
                imageView.setVisibility(8);
                view.setVisibility(8);
                return;
        }
    }

    public void n(a aVar) {
        this.f44401d = aVar;
    }

    View o(String str) {
        TextView textView = new TextView(this.f44398a);
        textView.setText(str);
        textView.setSingleLine(true);
        textView.setTextColor(Color.parseColor("#FFA8A8A8"));
        textView.setTextSize(0, this.f44398a.getResources().getDimensionPixelSize(R.dimen.wdp20));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, this.f44398a.getResources().getDimensionPixelOffset(R.dimen.wdp10), 0);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder instanceof c) {
            c cVar = (c) viewHolder;
            final FriendBackGameRspBean.FriendInfo friendInfo = this.f44400c.get(i2);
            if (i2 == 0) {
                cVar.f44416d.setVisibility(0);
                cVar.f44418f.setVisibility(8);
                cVar.f44417e.setVisibility(8);
            } else if (i2 == getItemCount() - 1) {
                cVar.f44416d.setVisibility(8);
                cVar.f44418f.setVisibility(0);
                cVar.f44417e.setVisibility(0);
            } else {
                cVar.f44416d.setVisibility(8);
                cVar.f44418f.setVisibility(0);
                cVar.f44417e.setVisibility(8);
            }
            m(cVar.f44423k, cVar.f44422j, friendInfo.getLevel());
            MyImageLoader.w(cVar.f44420h, friendInfo.getAvatar());
            cVar.f44413a.setText(friendInfo.getNickName());
            cVar.f44414b.setText(friendInfo.getLevelName());
            cVar.f44424l.setVisibility(friendInfo.isVip() ? 0 : 8);
            if (friendInfo.getMemberTitle() != null) {
                try {
                    if (!TextUtils.isEmpty(friendInfo.getMemberTitle().getBattleColor())) {
                        cVar.f44414b.setTextColor(Color.parseColor(friendInfo.getMemberTitle().getBattleColor()));
                    } else {
                        cVar.f44414b.setTextColor(Color.parseColor("#FFFFB543"));
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                cVar.f44414b.setText(friendInfo.getMemberTitle().getBattleTitle());
            }
            if (!friendInfo.isAddFriendStatus() && !friendInfo.isSendFriendRequestStatus()) {
                cVar.f44415c.setVisibility(4);
                cVar.f44415c.setOnClickListener(null);
            } else {
                cVar.f44415c.setSelected(friendInfo.isSendFriendRequestStatus());
                if (friendInfo.isSendFriendRequestStatus()) {
                    cVar.f44415c.setText("已发送");
                    cVar.f44415c.setOnClickListener(null);
                } else {
                    cVar.f44415c.setText("添加好友");
                    cVar.f44415c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.t5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            v5.this.g(friendInfo, view);
                        }
                    });
                }
            }
            if (friendInfo.isLikeStatus()) {
                cVar.f44421i.setBackgroundResource(R.drawable.like_eixt_gray);
                cVar.f44421i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.s5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        v5.this.h(friendInfo, view);
                    }
                });
                return;
            }
            cVar.f44421i.setBackgroundResource(R.drawable.like_eixt_yellow);
            cVar.f44421i.setOnClickListener(null);
        } else if (viewHolder instanceof b) {
            j(viewHolder, i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        if (i2 == 1) {
            return new b(LayoutInflater.from(this.f44398a).inflate(R.layout.simulator_exit_item, viewGroup, false));
        }
        return new c(LayoutInflater.from(this.f44398a).inflate(R.layout.simulator_exit_friend_item, viewGroup, false));
    }
}
