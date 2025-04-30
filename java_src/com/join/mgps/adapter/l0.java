package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.location.LocationManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.FriendBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: FriendListAdapter.java */
/* loaded from: classes3.dex */
public class l0 extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f42346a;

    /* renamed from: b  reason: collision with root package name */
    private int f42347b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f42348c = false;

    /* renamed from: d  reason: collision with root package name */
    private List<FriendBean> f42349d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private List<FriendBean> f42350e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private List<FriendBean> f42351f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private e f42352g;

    /* compiled from: FriendListAdapter.java */
    /* loaded from: classes3.dex */
    class a extends RecyclerView.ViewHolder {
        a(View view) {
            super(view);
        }
    }

    /* compiled from: FriendListAdapter.java */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f42354a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f42355b;

        /* renamed from: c  reason: collision with root package name */
        private View f42356c;

        public b(@NonNull View view) {
            super(view);
            this.f42354a = (ImageView) view.findViewById(R.id.icCollapse);
            this.f42355b = (TextView) view.findViewById(R.id.onlineNum);
            this.f42356c = view.findViewById(R.id.add);
        }
    }

    /* compiled from: FriendListAdapter.java */
    /* loaded from: classes3.dex */
    public class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public View f42358a;

        /* renamed from: b  reason: collision with root package name */
        public View f42359b;

        public c(@NonNull View view) {
            super(view);
            this.f42359b = view.findViewById(R.id.label);
            this.f42358a = view.findViewById(R.id.reqPermission);
        }
    }

    /* compiled from: FriendListAdapter.java */
    /* loaded from: classes3.dex */
    public class d extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f42361a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f42362b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42363c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42364d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f42365e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f42366f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f42367g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f42368h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f42369i;

        /* renamed from: j  reason: collision with root package name */
        public ImageView f42370j;

        /* renamed from: k  reason: collision with root package name */
        public View f42371k;

        public d(@NonNull View view) {
            super(view);
            this.f42361a = (SimpleDraweeView) view.findViewById(R.id.avatar);
            this.f42362b = (TextView) view.findViewById(R.id.name);
            this.f42364d = (TextView) view.findViewById(R.id.locTxt);
            this.f42365e = (TextView) view.findViewById(R.id.levelTxt);
            this.f42366f = (TextView) view.findViewById(R.id.button);
            this.f42367g = (ImageView) view.findViewById(R.id.icLoc);
            this.f42368h = (ImageView) view.findViewById(R.id.icLevel);
            this.f42369i = (ImageView) view.findViewById(R.id.icLevel1);
            this.f42370j = (ImageView) view.findViewById(R.id.icLevel1Bg);
            this.f42363c = (TextView) view.findViewById(R.id.recommend);
            this.f42371k = view.findViewById(R.id.offlineOver);
        }
    }

    /* compiled from: FriendListAdapter.java */
    /* loaded from: classes3.dex */
    public interface e {
        void B();

        void g0(String str);

        void m0(FriendBean friendBean);

        void o(FriendBean friendBean);
    }

    public l0(Context context) {
        this.f42346a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(View view) {
        this.f42346a.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int B(FriendBean friendBean, FriendBean friendBean2) {
        if (friendBean == null || friendBean2 == null) {
            if (friendBean != friendBean2) {
                if (friendBean == null) {
                    return 1;
                }
                if (friendBean2 == null) {
                    return -1;
                }
            }
            return 0;
        }
        if (friendBean.getState() != friendBean2.getState()) {
            if (friendBean.getState() == 0) {
                return -1;
            }
            if (friendBean2.getState() == 0) {
                return 1;
            }
        }
        if (friendBean.isRecommend() != friendBean2.isRecommend()) {
            if (friendBean.isRecommend()) {
                return 1;
            }
            if (friendBean2.isRecommend()) {
                return -1;
            }
        }
        return 0;
    }

    private boolean l() {
        return ((LocationManager) this.f42346a.getSystemService("location")).isProviderEnabled("gps");
    }

    private int m(int i2) {
        if (i2 == 0) {
            return i2;
        }
        int i4 = i2 - 1;
        if (i4 < this.f42349d.size()) {
            return i4;
        }
        int size = i4 - this.f42349d.size();
        if (this.f42351f.size() <= 0 || size == 0) {
            return size;
        }
        int i5 = size - 1;
        return i5 < this.f42351f.size() ? i5 : i5 - this.f42351f.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(FriendBean friendBean, View view) {
        if (IntentUtil.getInstance().goLoginBattle(view.getContext())) {
            return;
        }
        if (com.wufan.friend.chat.c.u().D()) {
            k("您的对战功能已被封禁！");
            return;
        }
        e eVar = this.f42352g;
        if (eVar != null) {
            eVar.m0(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(FriendBean friendBean, View view) {
        AccountBean accountData = AccountUtil_.getInstance_(view.getContext()).getAccountData();
        Ext ext = new Ext();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setPosition(friendBean.isRecommend() ? "1" : "0");
        com.papa.sim.statistic.p.l(view.getContext()).K1(Event.LobbyInvite, ext);
        if (IntentUtil.getInstance().goLoginBattle(view.getContext())) {
            return;
        }
        if (com.wufan.friend.chat.c.u().D()) {
            k("您的对战功能已被封禁！");
        } else if (friendBean.isBanned()) {
            k("邀请失败：好友已被封禁！");
        } else if (friendBean.getState() != 0) {
            com.join.mgps.Util.i2.a(view.getContext()).b("对方已离线，无法约战！");
        } else {
            if ((accountData != null ? AccountUtil_.getInstance_(view.getContext()).getAccountData().getPapaMoney() : 0L) < 10) {
                k("铜板数不足，对战至少需要10铜板");
                return;
            }
            e eVar = this.f42352g;
            if (eVar != null) {
                eVar.o(friendBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(FriendBean friendBean, View view) {
        AccountBean accountData = AccountUtil_.getInstance_(view.getContext()).getAccountData();
        Ext ext = new Ext();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setPosition(friendBean.isRecommend() ? "1" : "0");
        com.papa.sim.statistic.p.l(view.getContext()).K1(Event.LobbyInvite, ext);
        if (IntentUtil.getInstance().goLoginBattle(view.getContext())) {
            return;
        }
        if (com.wufan.friend.chat.c.u().D()) {
            k("您的对战功能已被封禁！");
        } else if (friendBean.isBanned()) {
            k("邀请失败：好友已被封禁！");
        } else {
            if ((accountData != null ? AccountUtil_.getInstance_(view.getContext()).getAccountData().getPapaMoney() : 0L) < 10) {
                k("铜板数不足，对战至少需要10铜板");
                return;
            }
            e eVar = this.f42352g;
            if (eVar != null) {
                eVar.o(friendBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(FriendBean friendBean, View view) {
        e eVar = this.f42352g;
        if (eVar != null) {
            eVar.g0(friendBean.getUid() + "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(FriendBean friendBean, View view) {
        e eVar = this.f42352g;
        if (eVar != null) {
            eVar.g0(friendBean.getUid() + "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(FriendBean friendBean, View view) {
        e eVar = this.f42352g;
        if (eVar != null) {
            eVar.o(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(View view) {
        e eVar = this.f42352g;
        if (eVar != null) {
            eVar.B();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(View view) {
        if (this.f42348c) {
            if (this.f42350e.size() != 0) {
                this.f42349d.addAll(this.f42350e);
                this.f42350e.clear();
                notifyItemRangeInserted(1, this.f42349d.size());
            }
        } else if (this.f42349d.size() != 0) {
            this.f42350e.addAll(this.f42349d);
            this.f42349d.clear();
            notifyItemRangeRemoved(1, this.f42350e.size());
        }
        this.f42348c = !this.f42348c;
        notifyItemChanged(0);
    }

    void C(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        try {
            if (viewHolder instanceof d) {
                d dVar = (d) viewHolder;
                final FriendBean friendBean = this.f42349d.get(i2);
                if (friendBean == null) {
                    return;
                }
                RoundingParams roundingParams = new RoundingParams();
                roundingParams.s(this.f42346a.getResources().getDimensionPixelOffset(R.dimen.wdp47));
                roundingParams.v(true);
                MyImageLoader.u(((d) viewHolder).f42361a, R.drawable.main_normal_icon, friendBean.getAvatar(), roundingParams);
                dVar.f42362b.setText(friendBean.getNickName());
                dVar.f42368h.setVisibility(8);
                dVar.f42367g.setVisibility(8);
                dVar.f42365e.setVisibility(4);
                TextView textView = dVar.f42364d;
                TextView textView2 = dVar.f42366f;
                if (friendBean.getState() == 0) {
                    if (!TextUtils.isEmpty(friendBean.getGameName())) {
                        textView.setText(friendBean.getGameName());
                        textView.setTextColor(Color.parseColor("#FFFFA841"));
                    } else {
                        textView.setTextColor(Color.parseColor("#FF16DB16"));
                        textView.setText("在线");
                    }
                } else {
                    textView.setTextColor(Color.parseColor("#FF6E6E6E"));
                    textView.setText("离线");
                }
                if (!TextUtils.isEmpty(friendBean.getGameId()) && !"0".equals(friendBean.getGameId())) {
                    textView2.setVisibility(0);
                    if (friendBean.getRoomId() != 0) {
                        textView2.setText("加入");
                        if (friendBean.getState() == 0) {
                            textView.setTextColor(Color.parseColor("#FFFFA841"));
                        }
                        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.g0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                l0.this.s(friendBean, view);
                            }
                        });
                    } else {
                        if (friendBean.getState() == 0) {
                            textView.setTextColor(Color.parseColor("#FF16DB16"));
                        }
                        textView2.setText("约战");
                        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                l0.this.t(friendBean, view);
                            }
                        });
                    }
                } else if (friendBean.getState() == 0) {
                    textView2.setVisibility(0);
                    textView2.setText("约战");
                    textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.h0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            l0.this.u(friendBean, view);
                        }
                    });
                }
                com.wufan.friend.chat.c u3 = com.wufan.friend.chat.c.u();
                if (u3.E(friendBean.getUid() + "")) {
                    textView2.setSelected(true);
                    textView2.setEnabled(false);
                } else {
                    textView2.setSelected(false);
                    textView2.setEnabled(true);
                }
                H(dVar.f42368h, dVar.f42365e, friendBean.getLevel());
                I(dVar.f42370j, dVar.f42369i, friendBean.getLevel());
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.j0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        l0.this.v(friendBean, view);
                    }
                };
                dVar.f42361a.setOnClickListener(onClickListener);
                dVar.f42362b.setOnClickListener(onClickListener);
                if (friendBean.isRecommend()) {
                    dVar.f42369i.setVisibility(0);
                    dVar.f42363c.setVisibility(0);
                    dVar.f42366f.setVisibility(0);
                    dVar.f42371k.setVisibility(8);
                    dVar.f42362b.setTextColor(Color.parseColor("#ffffff"));
                } else if (friendBean.getState() == 0) {
                    dVar.f42363c.setVisibility(8);
                    if (!TextUtils.isEmpty(friendBean.getGameId()) && !"0".equals(friendBean.getGameId())) {
                        if (friendBean.getRoomType() != 31 && friendBean.getRoomType() != 35) {
                            if (friendBean.getRoomType() != 0) {
                                dVar.f42366f.setVisibility(4);
                            }
                        }
                        dVar.f42366f.setVisibility(0);
                    } else {
                        dVar.f42366f.setVisibility(0);
                    }
                    dVar.f42369i.setVisibility(0);
                    dVar.f42371k.setVisibility(8);
                    dVar.f42362b.setTextColor(Color.parseColor("#ffffff"));
                } else {
                    dVar.f42369i.setVisibility(4);
                    dVar.f42363c.setVisibility(8);
                    dVar.f42366f.setVisibility(4);
                    dVar.f42371k.setVisibility(0);
                    dVar.f42362b.setTextColor(Color.parseColor("#FFA0A0A0"));
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void D(boolean z3) {
        this.f42348c = z3;
    }

    public void E(int i2) {
        this.f42347b = i2;
    }

    public void F(List<FriendBean> list) {
        this.f42349d = list;
    }

    public void G(List<FriendBean> list) {
        this.f42351f = list;
    }

    void H(ImageView imageView, TextView textView, int i2) {
        String str;
        if (i2 == 1) {
            imageView.setBackgroundResource(R.drawable.gameleve1);
            str = "见习";
        } else if (i2 == 2) {
            imageView.setBackgroundResource(R.drawable.gameleve3);
            str = "资深";
        } else if (i2 == 3) {
            imageView.setBackgroundResource(R.drawable.gameleve2);
            str = "精英";
        } else if (i2 == 4) {
            imageView.setBackgroundResource(R.drawable.gameleve4);
            str = "宗师";
        } else if (i2 != 5) {
            str = "";
        } else {
            imageView.setBackgroundResource(R.drawable.gameleve5);
            str = "传说";
        }
        if (textView != null) {
            textView.setText(str);
        }
    }

    void I(View view, ImageView imageView, int i2) {
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

    public void J(e eVar) {
        this.f42352g = eVar;
    }

    public void K() {
        List<FriendBean> list = this.f42349d;
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            Collections.sort(this.f42349d, new Comparator() { // from class: com.join.mgps.adapter.k0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int B;
                    B = l0.B((FriendBean) obj, (FriendBean) obj2);
                    return B;
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<FriendBean> list = this.f42349d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return 2;
    }

    void k(String str) {
        com.join.mgps.Util.i2.a(this.f42346a).b(str);
    }

    public int n() {
        return this.f42347b;
    }

    public List<FriendBean> o() {
        return this.f42349d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        int itemViewType = getItemViewType(i2);
        if (viewHolder instanceof d) {
            int m4 = m(i2);
            if (itemViewType == 2) {
                C(viewHolder, i2);
            } else if (itemViewType == 4) {
                final FriendBean friendBean = this.f42351f.get(m4);
                d dVar = (d) viewHolder;
                MyImageLoader.w(dVar.f42361a, friendBean.getAvatar());
                dVar.f42362b.setText(friendBean.getNickName());
                dVar.f42368h.setVisibility(8);
                dVar.f42365e.setVisibility(4);
                dVar.f42367g.setVisibility(8);
                dVar.f42364d.setVisibility(8);
                H(dVar.f42368h, dVar.f42365e, friendBean.getLevel());
                I(dVar.f42370j, dVar.f42369i, friendBean.getLevel());
                if (!TextUtils.isEmpty(friendBean.getGameName())) {
                    dVar.f42364d.setVisibility(0);
                    dVar.f42364d.setText(friendBean.getGameName());
                    dVar.f42364d.setTextColor(Color.parseColor("#FFFFA841"));
                }
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.f0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        l0.this.w(friendBean, view);
                    }
                };
                dVar.f42361a.setOnClickListener(onClickListener);
                dVar.f42362b.setOnClickListener(onClickListener);
                dVar.f42366f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        l0.this.x(friendBean, view);
                    }
                });
            }
        } else if (viewHolder instanceof b) {
            int size = this.f42349d.size();
            if (this.f42348c) {
                size = this.f42350e.size();
            }
            b bVar = (b) viewHolder;
            TextView textView = bVar.f42355b;
            textView.setText("在线(" + size + net.lingala.zip4j.util.e.F0 + this.f42347b + ")");
            bVar.f42356c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    l0.this.y(view);
                }
            });
            if (this.f42348c) {
                bVar.f42354a.setBackgroundResource(R.drawable.ic_add);
            } else {
                bVar.f42354a.setBackgroundResource(R.drawable.ic_minus);
            }
            View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.join.mgps.adapter.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    l0.this.z(view);
                }
            };
            bVar.f42354a.setOnClickListener(onClickListener2);
            bVar.f42355b.setOnClickListener(onClickListener2);
        } else if (viewHolder instanceof c) {
            c cVar = (c) viewHolder;
            cVar.f42359b.setVisibility(8);
            cVar.f42358a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    l0.this.A(view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        if (i2 == 1) {
            return new b(LayoutInflater.from(this.f42346a).inflate(R.layout.item_friend_item_header, viewGroup, false));
        }
        if (i2 == 2 || i2 == 4) {
            return new d(LayoutInflater.from(this.f42346a).inflate(R.layout.item_friend_item, viewGroup, false));
        }
        if (i2 == 3) {
            return new c(LayoutInflater.from(this.f42346a).inflate(R.layout.item_friend_item_header_recommend, viewGroup, false));
        }
        return new a(new View(this.f42346a));
    }

    public List<FriendBean> p() {
        return this.f42351f;
    }

    public e q() {
        return this.f42352g;
    }

    public boolean r() {
        return this.f42348c;
    }
}
