package com.join.mgps.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.Animatable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.ArenaGameListActivity_;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.adapter.t1;
import com.join.mgps.customview.AutoScrollViewPager;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.h0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArenaAdData;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.socket.fight.arena.a;
import com.join.mgps.socket.fight.arena.b;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.RoomCategory;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: NewArenaMainFragment.java */
@EFragment(R.layout.fragment_new_arenamain)
/* loaded from: classes4.dex */
public class o3 extends Fragment {
    private static final String D0 = "NewArenaMainFragment";
    private static final int E0 = 4112;
    private com.join.mgps.dialog.x0 A;
    private com.join.mgps.adapter.t1 A0;
    private com.join.mgps.socket.fight.arena.a C;
    private GameRoom D;
    private com.join.mgps.dialog.v0 E;
    FragmentManager F;
    com.join.mgps.activity.arena.b G;
    com.join.mgps.fragment.c H;
    com.join.mgps.fragment.c I;
    View J;
    View K;

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.rpc.k f49594b;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.k f49595c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f49596d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f49597e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f49598f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f49599g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    XRecyclerView f49600h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    View f49601i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f49602j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    FrameLayout f49603k;

    /* renamed from: l  reason: collision with root package name */
    AutoScrollViewPager<BannerBean> f49604l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    View f49605m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f49606n;

    /* renamed from: n0  reason: collision with root package name */
    View f49607n0;
    @Bean

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.Util.b f49608o;

    /* renamed from: o0  reason: collision with root package name */
    View f49609o0;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b f49610p;

    /* renamed from: p0  reason: collision with root package name */
    TextView f49611p0;

    /* renamed from: q  reason: collision with root package name */
    private Activity f49612q;

    /* renamed from: q0  reason: collision with root package name */
    TextView f49613q0;

    /* renamed from: r  reason: collision with root package name */
    private String f49614r;

    /* renamed from: r0  reason: collision with root package name */
    TextView f49615r0;

    /* renamed from: s  reason: collision with root package name */
    TextView f49616s;

    /* renamed from: s0  reason: collision with root package name */
    TextView f49617s0;

    /* renamed from: t  reason: collision with root package name */
    TextView f49618t;

    /* renamed from: u  reason: collision with root package name */
    TextView f49620u;

    /* renamed from: u0  reason: collision with root package name */
    private FragmentManager f49621u0;

    /* renamed from: v  reason: collision with root package name */
    RelativeLayout f49622v;

    /* renamed from: v0  reason: collision with root package name */
    private ResultResMainBean<GameListBannerBean> f49623v0;

    /* renamed from: w  reason: collision with root package name */
    TextView f49624w;

    /* renamed from: x  reason: collision with root package name */
    TextView f49626x;

    /* renamed from: y  reason: collision with root package name */
    TextView f49628y;

    /* renamed from: z  reason: collision with root package name */
    TextView f49630z;

    /* renamed from: a  reason: collision with root package name */
    private boolean f49593a = false;
    private final SocketListener.NotifyObserver B = new i();

    /* renamed from: t0  reason: collision with root package name */
    int f49619t0 = 0;

    /* renamed from: w0  reason: collision with root package name */
    int f49625w0 = 20;

    /* renamed from: x0  reason: collision with root package name */
    private List<BannerBean> f49627x0 = new ArrayList();

    /* renamed from: y0  reason: collision with root package name */
    private List<Dialog> f49629y0 = new ArrayList();

    /* renamed from: z0  reason: collision with root package name */
    private List<GameInfoBean> f49631z0 = new ArrayList();
    boolean B0 = false;
    boolean C0 = false;

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FragmentTransaction beginTransaction = o3.this.F.beginTransaction();
            o3.this.v0(3, beginTransaction);
            o3 o3Var = o3.this;
            com.join.mgps.fragment.c cVar = o3Var.H;
            if (cVar == null) {
                o3Var.H = new com.join.mgps.fragment.c();
                Bundle bundle = new Bundle();
                bundle.putInt("room_type", 31);
                bundle.putInt("game_type", 1);
                bundle.putInt("pn", 1);
                o3.this.H.setArguments(bundle);
                beginTransaction.add(R.id.fragmentLayout, o3.this.H);
            } else {
                beginTransaction.show(cVar);
            }
            beginTransaction.commitAllowingStateLoss();
            o3.this.f49619t0 = 3;
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FragmentTransaction beginTransaction = o3.this.F.beginTransaction();
            o3.this.v0(4, beginTransaction);
            o3 o3Var = o3.this;
            com.join.mgps.fragment.c cVar = o3Var.I;
            if (cVar == null) {
                o3Var.I = new com.join.mgps.fragment.c();
                Bundle bundle = new Bundle();
                bundle.putInt("room_type", 35);
                bundle.putInt("game_type", 1);
                bundle.putInt("pn", 1);
                o3.this.I.setArguments(bundle);
                beginTransaction.add(R.id.fragmentLayout, o3.this.I);
            } else {
                beginTransaction.show(cVar);
            }
            beginTransaction.commitAllowingStateLoss();
            o3.this.f49619t0 = 4;
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class c implements XRecyclerView.f {
        c() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            o3.this.y0();
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class d implements t1.e {
        d() {
        }

        @Override // com.join.mgps.adapter.t1.e
        public void a(int i2) {
            if (o3.this.A != null && o3.this.A.isShowing()) {
                o3.this.A.dismiss();
            }
            if (i2 == 0) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51530m + "/static/match_v2/index.html");
                intentDateBean.setFrom("11");
                IntentUtil.getInstance().intentActivity(o3.this.getActivity(), intentDateBean);
                return;
            }
            o3.this.e0();
            if (i2 < o3.this.f49631z0.size()) {
                GameInfoBean gameInfoBean = (GameInfoBean) o3.this.f49631z0.get(i2);
                GameRoomListActivity_.v4(o3.this.f49612q).c(gameInfoBean).b(true).start();
                com.papa.sim.statistic.p.l(o3.this.getContext()).x(AccountUtil_.getInstance_(o3.this.getContext()).getUid(), gameInfoBean.getCollection_id(), "hall");
                com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(o3.this.getContext());
                String uid = AccountUtil_.getInstance_(o3.this.getContext()).getUid();
                String collection_id = gameInfoBean.getCollection_id();
                l4.z(uid, collection_id, i2 + "");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    public class e implements Callback<ResultMainBean<ArenaAdData>> {
        e() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaAdData>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaAdData>> call, Response<ResultMainBean<ArenaAdData>> response) {
            View view;
            if (response == null || response.body() == null) {
                return;
            }
            ResultMainBean<ArenaAdData> body = response.body();
            if (body.getCode() == 600 && body.getMessages().getData().isL_has_not_read() && (view = o3.this.f49606n) != null) {
                view.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    public class f extends com.facebook.drawee.controller.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f49637b;

        f(int i2) {
            this.f49637b = i2;
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void b(String str, Throwable th) {
            super.b(str, th);
            o3.this.k0(this.f49637b - 1);
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void d(String str, Object obj, Animatable animatable) {
            super.d(str, obj, animatable);
            o3.this.E0(this.f49637b);
            o3.this.k0(this.f49637b - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    public class g implements h0.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49639a;

        g(int i2) {
            this.f49639a = i2;
        }

        @Override // com.join.mgps.dialog.h0.c
        public void a(com.join.mgps.dialog.h0 h0Var) {
            h0Var.dismiss();
            if (o3.this.f49629y0.size() > 0) {
                o3.this.f49629y0.remove(0);
            }
        }

        @Override // com.join.mgps.dialog.h0.c
        public void b(com.join.mgps.dialog.h0 h0Var) {
            h0Var.dismiss();
            new IntentDateBean();
            if (o3.this.f49627x0 != null && o3.this.f49627x0.size() > 0) {
                IntentUtil.getInstance().intentActivity(o3.this.f49612q, ((BannerBean) o3.this.f49627x0.get(this.f49639a)).getIntentDataBean());
                com.papa.sim.statistic.p.l(o3.this.getActivity()).f2(AccountUtil_.getInstance_(o3.this.getActivity()).getUid(), "vsButton");
            }
            if (o3.this.f49629y0.size() > 0) {
                o3.this.f49629y0.remove(0);
                o3.this.f49627x0.remove(0);
            }
            if (this.f49639a < o3.this.f49627x0.size() - 1 || o3.this.f49629y0 == null) {
                return;
            }
            o3.this.f49629y0.clear();
            LinearLayout linearLayout = o3.this.f49599g;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    public class h implements InputNumView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f49641a;

        h(com.join.mgps.customview.input.a aVar) {
            this.f49641a = aVar;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f49641a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String str) {
            this.f49641a.c();
            if (o3.this.f49610p == null) {
                return;
            }
            o3.this.f49610p.d().z(o3.this.B);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            o3.this.f49614r = str;
            if (com.join.android.app.common.utils.f.j(o3.this.f49612q)) {
                o3.this.I0("正在获取房间...");
                if (!o3.this.f49610p.d().s()) {
                    o3.this.f49610p.f(ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_ARENAMAIN));
                    return;
                } else {
                    o3.this.j0(str);
                    return;
                }
            }
            o3.this.showToast("当前网络不可用，请检查网络!");
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class i implements SocketListener.NotifyObserver {
        i() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (o3.this.f49612q == null) {
                return;
            }
            o3.this.h0();
            int i2 = socketError.errorType;
            if (i2 != 6 && i2 != 3 && i2 != 4) {
                o3.this.showToast("网络异常，请稍后重试!");
                return;
            }
            o3.this.showToast(socketError.errorInfo);
            o3.this.J0();
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            ArenaRequest arenaRequest;
            if (o3.this.f49612q == null || (arenaRequest = arenaResponse.request) == null) {
                return;
            }
            String str = arenaRequest.register_type;
            if (str == ArenaConstants.REGISTER_TYPE_ARENAMAIN || str == ArenaConstants.REGISTER_TYPE_PUBLIC) {
                if (arenaResponse.responseCode == 0) {
                    o3.this.r0(arenaResponse);
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                    if (TextUtils.isEmpty(o3.this.f49614r)) {
                        return;
                    }
                    o3 o3Var = o3.this;
                    o3Var.j0(o3Var.f49614r);
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID)) {
                    o3.this.t0((GameRoom) arenaResponse.data);
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                    o3.this.e0();
                    GameRoom gameRoom = (GameRoom) arenaResponse.data;
                    if (o3.this.f49610p == null) {
                        return;
                    }
                    o3.this.f49610p.d().E(null);
                    g1.f G = g1.f.G();
                    DownloadTask B = G.B("" + gameRoom.getGameId());
                    int i2 = 0;
                    if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                        i2 = 2;
                    } else if (gameRoom.getRoomCategory() == RoomCategory.TOURNAMENT) {
                        i2 = 1;
                    }
                    GameRoomActivity_.u3(o3.this.f49612q).l(i2).h(arenaResponse.joinSpectatorReason).d(B.getShowName()).i(gameRoom).b(o3.this.f49625w0).start();
                    o3.this.h0();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    public class j implements InputNumView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f49644a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameRoom f49645b;

        j(com.join.mgps.customview.input.a aVar, GameRoom gameRoom) {
            this.f49644a = aVar;
            this.f49645b = gameRoom;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f49644a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String str) {
            this.f49644a.c();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            o3.this.I0("正在获取房间...");
            o3.this.i0(this.f49645b, str);
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class k extends b.c {
        k() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
            super.c();
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class l extends a.b0 {
        l() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void t() {
            super.t();
            o3.this.f49612q.finish();
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void w0(int i2, int i4, Object obj) {
            super.w0(i2, i4, obj);
            if (i2 == 101) {
                if (i4 == 7) {
                    o3 o3Var = o3.this;
                    o3Var.H0(o3Var.D);
                } else if (i4 != 8) {
                } else {
                    o3.this.G0();
                }
            }
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class m implements View.OnApplyWindowInsetsListener {
        m() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            if (com.join.mgps.Util.f1.b(o3.this.getActivity())) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) o3.this.f49605m.getLayoutParams();
                layoutParams.leftMargin = (int) o3.this.o0();
                o3.this.f49605m.setLayoutParams(layoutParams);
            }
            return view.onApplyWindowInsets(windowInsets);
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51530m + "/static/match/index.html");
            intentDateBean.setFrom("11");
            IntentUtil.getInstance().intentActivity(o3.this.getActivity(), intentDateBean);
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o3.this.v0(1, null);
            o3.this.f49605m.setVisibility(0);
            o3.this.f49619t0 = 1;
        }
    }

    /* compiled from: NewArenaMainFragment.java */
    /* loaded from: classes4.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!o3.this.L0()) {
                o3.this.J0();
                return;
            }
            FragmentTransaction beginTransaction = o3.this.F.beginTransaction();
            o3.this.v0(2, beginTransaction);
            o3 o3Var = o3.this;
            com.join.mgps.activity.arena.b bVar = o3Var.G;
            if (bVar == null) {
                o3Var.G = new com.join.mgps.activity.arena.b();
                Bundle bundle = new Bundle();
                bundle.putInt(ArenaGameListActivity_.A, 1);
                o3.this.G.setArguments(bundle);
                beginTransaction.add(R.id.fragmentLayout, o3.this.G);
            } else {
                beginTransaction.show(bVar);
            }
            beginTransaction.commitAllowingStateLoss();
            o3.this.f49619t0 = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(int i2) {
        com.join.mgps.Util.a0.c0(getActivity()).P(getActivity(), this.f49627x0.get(i2).getTitle(), this.f49627x0.get(i2).getPic_remote(), new g(i2));
    }

    private void F0(GameRoom gameRoom) {
        com.join.mgps.dialog.v0 v0Var = this.E;
        if (v0Var != null) {
            v0Var.a();
        }
        com.join.mgps.dialog.v0 v0Var2 = new com.join.mgps.dialog.v0(this.f49612q);
        this.E = v0Var2;
        v0Var2.d("加入失败，您与" + gameRoom.getRoomId() + "房间不在同一战区\n请进入该游戏房间列表，并切换至【" + com.join.mgps.socket.fight.arena.c.d(gameRoom.getBattleArea()) + "】后再查找房间号进入");
        this.E.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0() {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.f49612q, "请输入房间号", 5, false);
        aVar.g(new h(aVar));
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0(String str) {
        com.join.mgps.dialog.x0 x0Var = this.A;
        if (x0Var != null && x0Var.isShowing()) {
            this.A.dismiss();
        }
        com.join.mgps.dialog.x0 z3 = com.join.mgps.Util.a0.c0(this.f49612q).z(this.f49612q, str, false);
        this.A = z3;
        z3.b();
    }

    private void K0(int i2) {
        Intent intent = new Intent(this.f49612q, NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", "" + this.D.getGameId());
        intent.putExtra(NewArenaDownloadActivity_.f36681q0, this.C0);
        intent.putExtra(NewArenaDownloadActivity_.f36682r0, this.B0);
        startActivityForResult(intent, i2);
    }

    private AccountBean c0(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private boolean f0(String str) {
        this.B0 = false;
        this.C0 = false;
        DownloadTask B = g1.f.G().B(str);
        if (B != null && B.getStatus() == 5) {
            this.B0 = true;
            EMUApkTable n4 = n1.p.o().n(B.getPlugin_num());
            if (n4 != null) {
                if (com.join.android.app.common.utils.h.t(this.f49612q, n4, false, new String[0]) && !UtilsMy.q0(this.f49612q, n4)) {
                    this.C0 = true;
                } else {
                    this.C0 = false;
                }
            } else {
                this.C0 = true;
            }
        } else {
            this.B0 = false;
        }
        return this.C0 && this.B0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(int i2) {
        if (i2 < 0) {
            return;
        }
        SimpleDraweeView m02 = m0();
        m02.setController(Fresco.newDraweeControllerBuilder().H(new f(i2)).setUri(this.f49627x0.get(i2).getPic_remote()).build());
        this.f49599g.addView(m02);
    }

    private SimpleDraweeView m0() {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f49612q);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        return simpleDraweeView;
    }

    private SimpleDraweeView n0(List<BannerBean> list, int i2) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f49612q);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        RoundingParams roundingParams = new RoundingParams();
        roundingParams.s(12.0f);
        MyImageLoader.f(simpleDraweeView, R.drawable.iv_default_newarena_banner, list.get(i2).getPic_remote(), roundingParams);
        return simpleDraweeView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0(int i2, FragmentTransaction fragmentTransaction) {
        this.f49611p0.setTextColor(Color.parseColor("#7B95A4"));
        this.f49613q0.setTextColor(Color.parseColor("#7B95A4"));
        this.f49615r0.setTextColor(Color.parseColor("#7B95A4"));
        this.f49617s0.setTextColor(Color.parseColor("#7B95A4"));
        this.f49611p0.getPaint().setFakeBoldText(false);
        this.f49613q0.getPaint().setFakeBoldText(false);
        this.f49615r0.getPaint().setFakeBoldText(false);
        this.f49617s0.getPaint().setFakeBoldText(false);
        if (i2 == 1) {
            this.f49603k.setVisibility(8);
            this.J.setVisibility(0);
            this.K.setVisibility(4);
            this.f49607n0.setVisibility(4);
            this.f49609o0.setVisibility(4);
            this.f49611p0.setTextColor(Color.parseColor("#FFC438"));
            this.f49611p0.getPaint().setFakeBoldText(true);
        } else if (i2 == 2) {
            this.J.setVisibility(4);
            this.K.setVisibility(0);
            this.f49607n0.setVisibility(4);
            this.f49609o0.setVisibility(4);
            this.f49603k.setVisibility(0);
            this.f49605m.setVisibility(4);
            com.join.mgps.fragment.c cVar = this.H;
            if (cVar != null) {
                fragmentTransaction.hide(cVar);
            }
            com.join.mgps.fragment.c cVar2 = this.I;
            if (cVar2 != null) {
                fragmentTransaction.hide(cVar2);
            }
            this.f49613q0.setTextColor(Color.parseColor("#FFC438"));
            this.f49613q0.getPaint().setFakeBoldText(true);
        } else if (i2 == 3) {
            this.J.setVisibility(4);
            this.K.setVisibility(4);
            this.f49607n0.setVisibility(0);
            this.f49609o0.setVisibility(4);
            this.f49605m.setVisibility(8);
            this.f49603k.setVisibility(0);
            com.join.mgps.activity.arena.b bVar = this.G;
            if (bVar != null) {
                fragmentTransaction.hide(bVar);
            }
            com.join.mgps.fragment.c cVar3 = this.I;
            if (cVar3 != null) {
                fragmentTransaction.hide(cVar3);
            }
            this.f49615r0.setTextColor(Color.parseColor("#FFC438"));
            this.f49615r0.getPaint().setFakeBoldText(true);
        } else if (i2 != 4) {
        } else {
            this.J.setVisibility(4);
            this.K.setVisibility(4);
            this.f49607n0.setVisibility(4);
            this.f49609o0.setVisibility(0);
            this.f49605m.setVisibility(8);
            this.f49603k.setVisibility(0);
            com.join.mgps.fragment.c cVar4 = this.H;
            if (cVar4 != null) {
                fragmentTransaction.hide(cVar4);
            }
            com.join.mgps.activity.arena.b bVar2 = this.G;
            if (bVar2 != null) {
                fragmentTransaction.hide(bVar2);
            }
            this.f49617s0.setTextColor(Color.parseColor("#FFC438"));
            this.f49617s0.getPaint().setFakeBoldText(true);
        }
    }

    private boolean w0(String str) {
        try {
            this.f49612q.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void A0() {
        if (!com.join.android.app.common.utils.f.j(this.f49612q)) {
            showToast("当前网络不可用，请检查网络");
        } else if (!L0()) {
            J0();
        } else {
            com.join.mgps.socket.fight.arena.b bVar = this.f49610p;
            if (bVar != null && bVar.d() == null) {
                showToast("正在连接服务器，请稍后...");
            } else {
                G0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void B0(List<BannerBean> list) {
        AutoScrollViewPager<BannerBean> autoScrollViewPager;
        if (list != null && list.size() > 0) {
            if (this.f49627x0 == null) {
                this.f49627x0 = new ArrayList();
            }
            this.f49627x0.clear();
            this.f49627x0.addAll(list);
            AutoScrollViewPager<BannerBean> autoScrollViewPager2 = this.f49604l;
            if (autoScrollViewPager2 == null) {
                return;
            }
            autoScrollViewPager2.setVisibility(8);
            List<Dialog> list2 = this.f49629y0;
            if (list2 == null) {
                return;
            }
            list2.clear();
            LinearLayout linearLayout = this.f49599g;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
        } else if (this.f49627x0.size() >= 0 || (autoScrollViewPager = this.f49604l) == null) {
        } else {
            autoScrollViewPager.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C0(List<GameInfoBean> list) {
        List<GameInfoBean> list2;
        if (list != null) {
            try {
                if (list.size() > 0 && (list2 = this.f49631z0) != null) {
                    list2.clear();
                    this.f49631z0.addAll(list);
                    GameInfoBean gameInfoBean = new GameInfoBean();
                    gameInfoBean.setTitle("悟饭全明星");
                    gameInfoBean.setRoom_count(-1);
                    gameInfoBean.setPic_remote_vertical("res://" + getContext().getPackageName() + net.lingala.zip4j.util.e.F0 + R.drawable.event_entrance_bg);
                    this.f49631z0.add(0, gameInfoBean);
                    this.A0.e(this.f49631z0);
                    this.f49600h.setRefreshing(false);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(GameListBannerBean gameListBannerBean) {
        TextView textView = this.f49616s;
        textView.setText("" + gameListBannerBean.getLately_battle());
        TextView textView2 = this.f49618t;
        textView2.setText("" + gameListBannerBean.getArcade_battle());
        TextView textView3 = this.f49620u;
        textView3.setText("" + gameListBannerBean.getFc_battle());
        if (this.f49622v == null) {
            return;
        }
        if (gameListBannerBean.getGame_match() != null && gameListBannerBean.getGame_match().getMatch_title() != null) {
            this.f49622v.setVisibility(0);
            this.f49624w.setText(gameListBannerBean.getGame_match().getMatch_title());
            this.f49626x.setText(gameListBannerBean.getGame_match().getNick_name());
            if (gameListBannerBean.getGame_match().getJoin_number() < 1) {
                this.f49630z.setVisibility(8);
                this.f49628y.setVisibility(8);
            } else {
                TextView textView4 = this.f49628y;
                textView4.setText(gameListBannerBean.getGame_match().getJoin_number() + "");
                this.f49630z.setVisibility(0);
                this.f49628y.setVisibility(0);
            }
        } else {
            this.f49622v.setVisibility(8);
        }
        this.f49622v.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(GameRoom gameRoom) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.f49612q, "请输入房间密码", 4, false);
        aVar.g(new j(aVar, gameRoom));
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        IntentUtil.getInstance().goLoginBattle(this.f49612q);
    }

    boolean L0() {
        return (c0(getActivity()) == null || AccountUtil_.getInstance_(getActivity()).isTourist()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f49594b = com.join.mgps.rpc.impl.k.n0();
        this.f49595c = com.join.mgps.rpc.impl.j.n0();
        this.F = getChildFragmentManager();
        this.f49621u0 = getChildFragmentManager();
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                getActivity().getWindow().getDecorView().setOnApplyWindowInsetsListener(new m());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            this.f49621u0.beginTransaction().commit();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        View inflate = LayoutInflater.from(this.f49612q).inflate(R.layout.new_arena_list_header, (ViewGroup) null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate.findViewById(R.id.ad_iv_icon);
        this.f49616s = (TextView) inflate.findViewById(R.id.latest_num_tv);
        this.f49618t = (TextView) inflate.findViewById(R.id.jieji_num_tv);
        this.f49620u = (TextView) inflate.findViewById(R.id.fc_num_tv);
        this.f49624w = (TextView) inflate.findViewById(R.id.event_gamename_tv);
        this.f49626x = (TextView) inflate.findViewById(R.id.event_nike_tv);
        this.f49628y = (TextView) inflate.findViewById(R.id.event_num_tv);
        this.f49630z = (TextView) inflate.findViewById(R.id.event_num_after_tv);
        this.f49622v = (RelativeLayout) inflate.findViewById(R.id.event_root_rl);
        this.J = inflate.findViewById(R.id.jingxuanLine);
        this.K = inflate.findViewById(R.id.newLine);
        this.f49607n0 = inflate.findViewById(R.id.gbaLine);
        this.f49609o0 = inflate.findViewById(R.id.fcLine);
        TextView textView = (TextView) inflate.findViewById(R.id.tvJingxuan);
        this.f49611p0 = textView;
        textView.getPaint().setFakeBoldText(true);
        this.f49613q0 = (TextView) inflate.findViewById(R.id.tvNew);
        this.f49615r0 = (TextView) inflate.findViewById(R.id.tvGBA);
        this.f49617s0 = (TextView) inflate.findViewById(R.id.tvFC);
        int width = getActivity().getWindowManager().getDefaultDisplay().getWidth();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(width - com.join.mgps.Util.b0.a(getActivity(), 10.0f), (width * 112) / 350);
        layoutParams.leftMargin = com.join.mgps.Util.b0.a(getActivity(), 5.0f);
        layoutParams.rightMargin = com.join.mgps.Util.b0.a(getActivity(), 5.0f);
        layoutParams.bottomMargin = com.join.mgps.Util.b0.a(getActivity(), 5.0f);
        this.f49622v.setLayoutParams(layoutParams);
        this.f49622v.setOnClickListener(new n());
        inflate.findViewById(R.id.jingxuan).setOnClickListener(new o());
        inflate.findViewById(R.id.ll_latest).setOnClickListener(new p());
        inflate.findViewById(R.id.ll_jieji).setOnClickListener(new a());
        inflate.findViewById(R.id.ll_fc).setOnClickListener(new b());
        this.f49604l = (AutoScrollViewPager) inflate.findViewById(R.id.ad_viewpager);
        this.f49602j.removeAllViews();
        this.f49602j.addView(inflate);
        this.f49600h.setLayoutManager(new GridLayoutManager(getContext(), ((double) com.join.android.app.common.utils.j.n(getActivity()).j(getActivity())) >= 1.9d ? 5 : 4));
        this.f49600h.setPullRefreshEnabled(true);
        this.f49600h.setLoadingMoreEnabled(false);
        this.f49600h.setLoadingListener(new c());
        com.join.mgps.adapter.t1 t1Var = new com.join.mgps.adapter.t1(getActivity(), true);
        this.A0 = t1Var;
        this.f49600h.setAdapter(t1Var);
        this.A0.f(new d());
        p0();
    }

    public void d0() {
        List<Dialog> list = this.f49629y0;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < this.f49629y0.size(); i2++) {
            if (this.f49629y0.get(i2) != null) {
                this.f49629y0.get(i2).dismiss();
            }
        }
    }

    void e0() {
        if (this.f49610p.d() != null) {
            com.join.mgps.Util.t0.b(D0, "--- removeObserver---");
            this.f49610p.d().A(this.B);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0() {
        if (com.join.android.app.common.utils.f.j(this.f49612q) && com.join.android.app.common.utils.f.l()) {
            showLoding();
            z0();
            return;
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        com.join.mgps.dialog.x0 x0Var = this.A;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.A.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0(GameRoom gameRoom, String str) {
        com.join.mgps.socket.fight.arena.b bVar = this.f49610p;
        if (bVar != null) {
            bVar.f(ArenaRequestFactory.joinRoom(ArenaConstants.REGISTER_TYPE_ARENAMAIN, gameRoom.getRoomId(), str, gameRoom.getElite()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j0(String str) {
        com.join.mgps.socket.fight.arena.b bVar = this.f49610p;
        if (bVar != null) {
            bVar.f(ArenaRequestFactory.searchRoomById(ArenaConstants.REGISTER_TYPE_ARENAMAIN, Integer.parseInt(str)));
        }
    }

    void l0() {
        ResultResMainBean<GameListBannerBean> resultResMainBean = this.f49623v0;
        if (resultResMainBean != null && resultResMainBean.getData() != null) {
            z0();
        } else {
            g0();
        }
    }

    public float o0() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return getResources().getDimensionPixelOffset(identifier);
        }
        return 0.0f;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i2 == E0 && i4 == -1) {
            if (this.D.getHasJoinPassword()) {
                H0(this.D);
            } else if (this.D.getHasJoinPassword()) {
                H0(this.D);
            } else {
                I0("正在获取房间...");
                i0(this.D, "");
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Activity activity = (Activity) context;
        this.f49612q = activity;
        com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(activity, new k());
        this.f49610p = bVar;
        bVar.bindService();
        this.C = new com.join.mgps.socket.fight.arena.a(this.f49612q, new l());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.f49593a = false;
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.t0.b(D0, "--onDestroy--");
        List<BannerBean> list = this.f49627x0;
        if (list != null) {
            list.clear();
            this.f49627x0 = null;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.f49610p;
        if (bVar == null) {
            return;
        }
        if (bVar.d() != null) {
            this.f49610p.g();
        }
        this.f49610p.stopService();
        this.f49610p = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        com.join.mgps.Util.t0.b(D0, "--onDestroyView--");
        this.f49593a = true;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        StringBuilder sb = new StringBuilder();
        sb.append("tbl:");
        sb.append(z3);
        if (z3) {
            d0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.mgps.Util.t0.b(D0, "--onPause--");
        h0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.join.mgps.Util.t0.b(D0, "--onResume--");
        int i2 = this.f49619t0;
        if (i2 == 1 || i2 == 0) {
            l0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        AutoScrollViewPager<BannerBean> autoScrollViewPager = this.f49604l;
        if (autoScrollViewPager != null) {
            autoScrollViewPager.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void p0() {
        AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        CollectionCommentRequest collectionCommentRequest = new CollectionCommentRequest();
        collectionCommentRequest.setCollection_id("");
        collectionCommentRequest.setUid(accountData.getUid());
        com.join.mgps.rpc.impl.c.P1().O1().N1(RequestBeanUtil.getInstance(getContext()).getDefalutRequestBean(collectionCommentRequest)).enqueue(new e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q0() {
        if (this.f49593a) {
            return;
        }
        if (this.f49623v0 == null) {
            showLodingFailed();
        }
        u0();
        this.f49600h.z1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r0(ArenaResponse arenaResponse) {
        com.join.mgps.dialog.x0 x0Var = this.A;
        if (x0Var != null && x0Var.isShowing()) {
            this.A.dismiss();
        }
        int i2 = arenaResponse.errorType;
        if (i2 == 7) {
            this.C.D(com.join.mgps.socket.fight.arena.a.f52159j, 256, Integer.valueOf(arenaResponse.errorType), "密码输入错误，请重试", "取消", "重试", null);
        } else if (i2 == 8) {
            this.C.D(com.join.mgps.socket.fight.arena.a.f52159j, 256, Integer.valueOf(arenaResponse.errorType), "房间号输入错误，请重试", "取消", "重试", null);
        } else if (i2 == 9) {
            this.C.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间已满，无法加入!", "确定");
        } else if (i2 == 13) {
            this.C.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法加入房间", "确定");
        } else if (i2 == 1001) {
            this.C.D(com.join.mgps.socket.fight.arena.a.f52159j, Integer.valueOf((int) com.join.mgps.socket.fight.arena.a.f52158i), Integer.valueOf(arenaResponse.errorType), arenaResponse.errorInfo, "确定");
        } else if (i2 == 16) {
            this.C.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "无法加入，你被禁止加入该房间", "确定");
        } else if (i2 != 17) {
            com.join.mgps.Util.i2.a(this.f49612q).b(com.join.mgps.socket.fight.arena.c.g(arenaResponse));
        } else {
            this.C.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "我知道了");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        com.join.mgps.Util.t0.b("NewArenaMain", "relodingimag");
        l0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        Activity activity = this.f49612q;
        if (activity != null) {
            UtilsMy.I2(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.f49597e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49598f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        View view = this.f49605m;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f49598f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49597e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        View view = this.f49605m;
        if (view != null) {
            view.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f49600h;
        if (xRecyclerView != null) {
            xRecyclerView.setRefreshing(false);
            this.f49600h.z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        Activity activity = this.f49612q;
        if (activity != null) {
            com.join.mgps.Util.i2.a(activity).b(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t0(GameRoom gameRoom) {
        com.join.mgps.dialog.x0 x0Var = this.A;
        if (x0Var != null && x0Var.isShowing()) {
            this.A.dismiss();
        }
        this.D = gameRoom;
        if (!gameRoom.getAllowPeripheralJoin() && com.join.mgps.socket.fight.arena.c.o(this.f49612q)) {
            com.join.mgps.Util.i2.a(this.f49612q).b("禁止外设用户加入!");
        } else if (this.f49610p != null && this.D.getBattleArea().getNumber() != BattleArea.ALL.getNumber() && this.D.getBattleArea().getNumber() != this.f49610p.d().n().getNumber()) {
            F0(gameRoom);
        } else {
            if (!f0("" + gameRoom.getGameId())) {
                K0(E0);
            } else if (gameRoom.getHasJoinPassword()) {
                H0(gameRoom);
            } else {
                i0(gameRoom, "");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0() {
        LinearLayout linearLayout = this.f49597e;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(8);
        this.f49598f.setVisibility(8);
        int i2 = this.f49619t0;
        if (i2 == 1 || i2 == 0) {
            this.f49605m.setVisibility(0);
        }
        this.f49600h.z1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void x0() {
        this.f49606n.setVisibility(8);
        IntentUtil intentUtil = IntentUtil.getInstance();
        FragmentActivity activity = getActivity();
        intentUtil.goShareWebActivity(activity, com.join.mgps.rpc.g.f51563x + "/lobby_active/index/");
    }

    public void y0() {
        ResultResMainBean<GameListBannerBean> resultResMainBean = this.f49623v0;
        if (resultResMainBean != null && resultResMainBean.getData() != null) {
            B0(this.f49623v0.getData().getBanner_list());
        }
        if (this.f49612q == null) {
            return;
        }
        l0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void z0() {
        try {
            String token = this.f49608o.getAccountData().getToken();
            ResultArenaBean<ArenaLobbyServer> P = this.f49595c.P(this.f49608o.getAccountData().getUid(), token);
            if (P != null && P.getError() == 0 && P.getData() != null) {
                if (P.getData().getDisabled() != 0) {
                    ArenaResponse arenaResponse = new ArenaResponse();
                    arenaResponse.errorType = 1001;
                    arenaResponse.errorInfo = P.getData().getDisabledMessage();
                    r0(arenaResponse);
                    showLodingFailed();
                    return;
                }
                int startGameCopper = P.getData().getStartGameCopper();
                this.f49625w0 = startGameCopper;
                if (startGameCopper == 0) {
                    this.f49625w0 = 20;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        ResultResMainBean<GameListBannerBean> resultResMainBean = null;
        try {
            resultResMainBean = this.f49594b.u(AccountUtil_.getInstance_(getActivity()).getUid());
        } catch (Exception e5) {
            q0();
            e5.printStackTrace();
        }
        if (this.f49593a || resultResMainBean == null || resultResMainBean.getData() == null || resultResMainBean.getError() > 0) {
            return;
        }
        this.f49623v0 = resultResMainBean;
        B0(resultResMainBean.getData().getBanner_list());
        D0(this.f49623v0.getData());
        C0(this.f49623v0.getData().getGame_list());
        u0();
    }
}
