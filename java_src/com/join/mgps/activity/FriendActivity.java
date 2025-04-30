package com.join.mgps.activity;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaResponse;
import com.BaseActivity;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.adapter.l0;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dialog.j;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes.dex */
public class FriendActivity extends BaseActivity implements l0.e, View.OnSystemUiVisibilityChangeListener {
    RecyclerView A;
    GameInfoBean G;
    View I;
    RecyclerView J;

    /* renamed from: a  reason: collision with root package name */
    FragmentManager f30852a;

    /* renamed from: b  reason: collision with root package name */
    protected com.join.mgps.fragment.u1 f30853b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.fragment.w0 f30854c;

    /* renamed from: d  reason: collision with root package name */
    private com.join.mgps.fragment.z1 f30855d;

    /* renamed from: e  reason: collision with root package name */
    private com.join.mgps.fragment.i1 f30856e;

    /* renamed from: f  reason: collision with root package name */
    private com.join.mgps.fragment.m f30857f;

    /* renamed from: h  reason: collision with root package name */
    protected String f30859h;

    /* renamed from: i  reason: collision with root package name */
    protected String f30860i;

    /* renamed from: j  reason: collision with root package name */
    protected String f30861j;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.dialog.j f30864m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.dialog.n f30865n;

    /* renamed from: r  reason: collision with root package name */
    BroadcastReceiver f30870r;

    /* renamed from: s  reason: collision with root package name */
    Dialog f30871s;

    /* renamed from: t  reason: collision with root package name */
    SimpleDraweeView f30872t;

    /* renamed from: u  reason: collision with root package name */
    View f30873u;

    /* renamed from: v  reason: collision with root package name */
    View f30874v;

    /* renamed from: w  reason: collision with root package name */
    TextView f30875w;

    /* renamed from: x  reason: collision with root package name */
    TextView f30876x;

    /* renamed from: y  reason: collision with root package name */
    View f30877y;

    /* renamed from: z  reason: collision with root package name */
    RecyclerView f30878z;

    /* renamed from: g  reason: collision with root package name */
    Handler f30858g = new Handler();

    /* renamed from: k  reason: collision with root package name */
    LinkedList<Integer> f30862k = new LinkedList<>();

    /* renamed from: l  reason: collision with root package name */
    protected boolean f30863l = true;

    /* renamed from: o  reason: collision with root package name */
    FriendBean f30867o = null;

    /* renamed from: p  reason: collision with root package name */
    boolean f30868p = false;

    /* renamed from: q  reason: collision with root package name */
    boolean f30869q = false;
    j B = null;
    g C = null;
    private int D = -1024;
    List<GameInfoBean> E = new ArrayList();
    List<GameInfoBean> F = new ArrayList();
    boolean H = false;
    g K = null;

    /* renamed from: n0  reason: collision with root package name */
    List<GameInfoBean> f30866n0 = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            FriendActivity.this.autoSendAdd();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Callback<ResponseModel> {
        b() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel> call, Response<ResponseModel> response) {
            if (response != null && response.body() != null) {
                ResponseModel body = response.body();
                if (body.getError() == 0) {
                    FriendActivity.this.addSuccess(Boolean.TRUE);
                    return;
                } else {
                    FriendActivity.this.toast(body.getMsg());
                    return;
                }
            }
            FriendActivity.this.toast("添加失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends AsyncTask<Integer, Void, FriendAccountInfo> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public FriendAccountInfo doInBackground(Integer... numArr) {
            int intValue = numArr[0].intValue();
            try {
                AccountBean accountData = AccountUtil_.getInstance_(FriendActivity.this).getAccountData();
                FriendReqBean friendReqBean = new FriendReqBean();
                friendReqBean.setUid(accountData.getUid());
                friendReqBean.setToken(accountData.getToken());
                friendReqBean.setRuid(intValue);
                ResponseModel<FriendAccountInfo> i2 = com.join.mgps.rpc.impl.g.p().i(accountData.getUid() + "", accountData.getToken() + "", intValue + "");
                if (i2 != null) {
                    if (i2.getError() == 0) {
                        return i2.getData();
                    }
                    FriendActivity.this.toast(i2.getMsg());
                    return null;
                }
                return null;
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(FriendAccountInfo friendAccountInfo) {
            super.onPostExecute(friendAccountInfo);
            if (friendAccountInfo == null) {
                return;
            }
            MyImageLoader.w(FriendActivity.this.f30872t, friendAccountInfo.getAvatar());
            FriendActivity.this.f30875w.setText(friendAccountInfo.getNickName());
            TextView textView = FriendActivity.this.f30876x;
            textView.setText(friendAccountInfo.getAccount() + "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Callback<ResultResMainBean<GameListBannerBean>> {
        d() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultResMainBean<GameListBannerBean>> call, Throwable th) {
            FriendActivity.this.X0();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultResMainBean<GameListBannerBean>> call, Response<ResultResMainBean<GameListBannerBean>> response) {
            ResultResMainBean<GameListBannerBean> body = response.body();
            if (body != null) {
                try {
                    List<GameInfoBean> game_list = body.getData().getGame_list();
                    if (game_list != null && game_list.size() > 0) {
                        FriendActivity.this.E.addAll(game_list);
                        FriendActivity friendActivity = FriendActivity.this;
                        friendActivity.D = friendActivity.D == -1024 ? 0 : FriendActivity.this.D;
                        FriendActivity friendActivity2 = FriendActivity.this;
                        friendActivity2.G = friendActivity2.E.get(friendActivity2.D);
                        FriendActivity.this.U0();
                        FriendActivity.this.B.notifyDataSetChanged();
                        return;
                    }
                    FriendActivity.this.X0();
                } catch (Exception e4) {
                    e4.printStackTrace();
                    FriendActivity.this.X0();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Callback<ResultMainBean<ArenaGameRoomListConfig>> {
        e() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Response<ResultMainBean<ArenaGameRoomListConfig>> response) {
            ResultMainBean<ArenaGameRoomListConfig> body = response.body();
            if (body != null && body.getMessages().getData() != null) {
                if (body.getMessages().getData().getCurrent_collection_cfg() == null) {
                    return;
                }
                String collection_id = body.getMessages().getData().getCurrent_collection_cfg().getCollection_id();
                if (TextUtils.isEmpty(collection_id) || Integer.parseInt(collection_id) <= 0 || body.getMessages().getData().getGame_list() == null || body.getMessages().getData().getGame_list().size() <= 0) {
                    return;
                }
                List<GameConfig> game_list = body.getMessages().getData().getGame_list();
                ArrayList arrayList = new ArrayList();
                for (GameConfig gameConfig : game_list) {
                    GameInfoBean gameInfoBean = new GameInfoBean();
                    gameInfoBean.setCollection_id(gameConfig.getCollection_id());
                    gameInfoBean.setPic_remote(gameConfig.getGame_ico());
                    gameInfoBean.setGame_ico(gameConfig.getGame_ico());
                    gameInfoBean.setGame_id(gameConfig.getGame_id());
                    gameInfoBean.setGame_name(gameConfig.getGame_name());
                    gameInfoBean.setRoom_count(gameConfig.getRoom_count());
                    gameInfoBean.setTitle(gameConfig.getTitle());
                    gameInfoBean.setPic_cover(gameConfig.getPic_cover());
                    arrayList.add(gameInfoBean);
                }
                FriendActivity.this.F.clear();
                FriendActivity.this.F.addAll(arrayList);
                FriendActivity.this.C.notifyDataSetChanged();
                return;
            }
            FriendActivity.this.toast("获取游戏配置信息失败！");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements InputNumView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f30884a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArenaRequest f30885b;

        f(com.join.mgps.customview.input.a aVar, ArenaRequest arenaRequest) {
            this.f30884a = aVar;
            this.f30885b = arenaRequest;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f30884a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String str) {
            this.f30884a.c();
            if (this.f30885b == null) {
                return;
            }
            FriendBean friendBean = new FriendBean();
            friendBean.setGameId(this.f30885b.gameId + "");
            friendBean.setRoomId(this.f30885b.roomId);
            friendBean.setElite(this.f30885b.isElite);
            friendBean.setRoomPwd(str);
            com.wufan.friend.chat.c.u().p(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends RecyclerView.Adapter {

        /* renamed from: b  reason: collision with root package name */
        private boolean f30888b;

        /* renamed from: d  reason: collision with root package name */
        private Context f30890d;

        /* renamed from: e  reason: collision with root package name */
        private h f30891e;

        /* renamed from: a  reason: collision with root package name */
        private List<GameInfoBean> f30887a = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private boolean f30889c = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends RecyclerView.ViewHolder {

            /* renamed from: a  reason: collision with root package name */
            private SimpleDraweeView f30893a;

            /* renamed from: b  reason: collision with root package name */
            private TextView f30894b;

            /* renamed from: c  reason: collision with root package name */
            private TextView f30895c;

            public a(@NonNull View view) {
                super(view);
                this.f30893a = (SimpleDraweeView) view.findViewById(R.id.cover);
                this.f30894b = (TextView) view.findViewById(R.id.state);
                this.f30895c = (TextView) view.findViewById(R.id.name);
            }
        }

        public g(Context context, boolean z3) {
            this.f30888b = false;
            this.f30890d = context;
            this.f30888b = z3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(int i2, View view) {
            this.f30891e.onItemClick(i2);
        }

        public List<GameInfoBean> b() {
            return this.f30887a;
        }

        public void c(final int i2, a aVar) {
            GameInfoBean gameInfoBean = this.f30887a.get(i2);
            aVar.f30895c.setText(gameInfoBean.getGame_name());
            MyImageLoader.e(aVar.f30893a, R.drawable.bg_gameinfo, gameInfoBean.getPic_cover(), r.c.f12138a);
            if (!this.f30889c || !FriendActivity.this.a1(gameInfoBean.getGame_id())) {
                aVar.f30894b.setVisibility(8);
            } else {
                aVar.f30894b.setVisibility(0);
            }
            if (this.f30889c) {
                View view = aVar.itemView;
                view.setPadding(view.getPaddingLeft(), aVar.itemView.getPaddingTop(), aVar.itemView.getPaddingRight(), aVar.itemView.getPaddingBottom() + FriendActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp6));
            }
            aVar.f30893a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    FriendActivity.g.this.d(i2, view2);
                }
            });
        }

        public void e(List<GameInfoBean> list) {
            this.f30887a = list;
            notifyDataSetChanged();
        }

        public void f(boolean z3) {
            this.f30888b = z3;
        }

        public void g(h hVar) {
            this.f30891e = hVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<GameInfoBean> list = this.f30887a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        public void h(boolean z3) {
            this.f30889c = z3;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
            c(i2, (a) viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            return new a(LayoutInflater.from(this.f30890d).inflate(R.layout.item_gameinfo_2, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface h {
        void onItemClick(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f30897a;

        public i(@NonNull View view) {
            super(view);
            this.f30897a = (TextView) view.findViewById(R.id.name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends RecyclerView.Adapter<i> {

        /* renamed from: a  reason: collision with root package name */
        private Context f30899a;

        /* renamed from: b  reason: collision with root package name */
        private h f30900b;

        public j(Context context) {
            this.f30899a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(int i2, View view) {
            notifyItemChanged(FriendActivity.this.D);
            FriendActivity.this.D = i2;
            notifyItemChanged(FriendActivity.this.D);
            this.f30900b.onItemClick(i2);
        }

        public GameInfoBean b() {
            List<GameInfoBean> list = FriendActivity.this.E;
            if (list != null && list.size() != 0) {
                if (FriendActivity.this.D < 0) {
                    return FriendActivity.this.E.get(0);
                }
                if (FriendActivity.this.D < getItemCount()) {
                    FriendActivity friendActivity = FriendActivity.this;
                    return friendActivity.E.get(friendActivity.D);
                }
            }
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(@NonNull i iVar, final int i2) {
            GameInfoBean gameInfoBean = FriendActivity.this.E.get(i2);
            if (FriendActivity.this.D != -1024 || FriendActivity.this.G == null || !gameInfoBean.getCollection_id().equals(FriendActivity.this.G.getCollection_id())) {
                if (FriendActivity.this.D == i2) {
                    iVar.f30897a.setTextColor(-16777216);
                } else {
                    iVar.f30897a.setTextColor(Color.parseColor("#C3C3C3"));
                }
            } else {
                FriendActivity.this.D = i2;
                iVar.itemView.setSelected(true);
                iVar.f30897a.setTextColor(-1);
            }
            iVar.f30897a.setTypeface(FriendActivity.this.D == i2 ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
            iVar.itemView.setSelected(FriendActivity.this.D == i2);
            iVar.f30897a.setText(gameInfoBean.getTitle());
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FriendActivity.j.this.c(i2, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: e */
        public i onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            View inflate = LayoutInflater.from(this.f30899a).inflate(R.layout.newarena_roomselecter_item, viewGroup, false);
            inflate.setBackgroundResource(R.drawable.new_arena_roomselecter_listselecter1);
            inflate.getLayoutParams().height = FriendActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp100);
            return new i(inflate);
        }

        public void f(h hVar) {
            this.f30900b = hVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FriendActivity.this.E.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U0() {
        String collection_id;
        int i2;
        try {
            if (TextUtils.isEmpty(this.G.getCollection_id())) {
                collection_id = this.G.getGame_id();
                i2 = 1;
            } else {
                collection_id = this.G.getCollection_id();
                i2 = 2;
            }
            com.join.mgps.rpc.impl.c.P1().O1().q(RequestBeanUtil.getInstance(this).getRequestArenaRoomListArgs(collection_id, i2)).enqueue(new e());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void V0() {
        com.join.mgps.rpc.impl.k.n0().m0().u(AccountUtil_.getInstance_(this).getUid()).enqueue(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e1(View view) {
        this.f30871s.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f1(int i2, View view) {
        if (IntentUtil.getInstance().isLogined(view.getContext()) && !IntentUtil.getInstance().isTourist(view.getContext())) {
            add(i2);
            Ext ext = new Ext();
            ext.setFrom("3");
            com.papa.sim.statistic.p.l(view.getContext()).K1(Event.addFriends, ext);
            this.f30871s.dismiss();
            return;
        }
        IntentUtil.getInstance().goMyAccountLoginActivity(view.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g1(Context context, DownloadTask downloadTask) {
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        this.f30867o.setGameId(crc_link_type_val);
        this.f30867o.setElite(false);
        if (b1(crc_link_type_val)) {
            DownloadTask B = g1.f.G().B(crc_link_type_val);
            PlugInstallDialog_.I0(context).c(n1.o.o().n(B.getPlugin_num())).a(B).b(2).start();
        } else if (checkGameIsInstall(crc_link_type_val)) {
            if (p1(crc_link_type_val)) {
                return;
            }
            com.wufan.friend.chat.c.u().o(this.f30867o);
            this.f30867o = null;
        } else {
            startDownloadActivity(crc_link_type_val, 10000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h1(View view) {
        View view2 = this.f30877y;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i1(int i2) {
        this.G = this.E.get(i2);
        U0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j1(int i2) {
        GameInfoBean gameInfoBean = this.F.get(i2);
        this.G = gameInfoBean;
        q1(gameInfoBean.getGame_id());
        X0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k1(View view) {
        View view2 = this.I;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l1(int i2) {
        q1(this.f30866n0.get(i2).getGame_id());
        Y0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m1(ArenaRequest arenaRequest) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this, "请输入房间密码", 4, false);
        aVar.g(new f(aVar, arenaRequest));
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n1(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    private boolean p1(String str) {
        try {
            DownloadTask B = g1.f.G().B(str);
            return UtilsMy.u1(this, str, B, n1.o.o().n(B.getPlugin_num()), true);
        } catch (Exception unused) {
            return false;
        }
    }

    private void u1() {
        if (this.f30857f == null) {
            this.f30857f = new com.join.mgps.fragment.n();
            Bundle bundle = new Bundle();
            bundle.putInt("type", 1);
            bundle.putString("gameid", this.f30859h);
            bundle.putInt("typeIndex", 3);
            this.f30857f.setArguments(bundle);
            this.f30852a.beginTransaction().replace(R.id.frameLayout, this.f30857f).commitAllowingStateLoss();
        }
    }

    @Override // com.join.mgps.adapter.l0.e
    public void B() {
        if (IntentUtil.getInstance().isLogined(this) && !IntentUtil.getInstance().isTourist(this)) {
            W0(1);
        } else {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this).flags(268435456)).start();
        }
    }

    void S0(FragmentTransaction fragmentTransaction) {
        fragmentTransaction.setCustomAnimations(R.anim.from_right, R.anim.out_right);
    }

    protected int T0() {
        return R.id.frameLayout;
    }

    public void W0(int i2) {
        if (this.f30862k.contains(3)) {
            this.f30862k.remove((Object) 3);
        }
        this.f30862k.push(Integer.valueOf(i2));
        if (this.f30862k.size() > 0) {
            o1(this.f30862k.getFirst().intValue());
        }
    }

    public void X0() {
        View view = this.f30877y;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void Y0() {
        View view = this.I;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    void Z0() {
        if (Build.VERSION.SDK_INT >= 19) {
            s1();
        }
    }

    boolean a1(String str) {
        FriendBean friendBean = this.f30867o;
        return (friendBean == null || TextUtils.isEmpty(friendBean.getGameId()) || !this.f30867o.getGameId().equals(str)) ? false : true;
    }

    void add(int i2) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(i2);
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            com.join.mgps.rpc.impl.g.p().o().b(friendReqBean).enqueue(new b());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void addSuccess(Boolean bool) {
        if (bool.booleanValue()) {
            toast("已发送加好友申请");
        }
    }

    void autoSendAdd() {
        Dialog dialog;
        try {
            if (this.f30874v == null || (dialog = this.f30871s) == null || !dialog.isShowing()) {
                return;
            }
            this.f30874v.performClick();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public boolean b1(String str) {
        DownloadTask B = g1.f.G().B(str);
        if (B == null || B.getDown_type() == 2) {
            EMUApkTable n4 = B != null ? n1.o.o().n(B.getPlugin_num()) : null;
            if (B == null || B.getStatus() != 11) {
                return n4 != null && com.join.android.app.common.utils.h.i(n4);
            }
            return true;
        }
        return false;
    }

    protected boolean c1() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: checkClipboard */
    public void d1() {
        int l4;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            if (clipboardManager.hasPrimaryClip()) {
                ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
                if (itemAt.getText() == null || (l4 = com.wufan.friend.chat.c.u().l(itemAt.getText().toString())) == 0) {
                    return;
                }
                showAddFriend(l4);
                clipboardManager.setText("");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkGameIsInstall(String str) {
        this.f30868p = false;
        this.f30869q = false;
        DownloadTask B = g1.f.G().B(str);
        if (B != null && B.getStatus() == 5) {
            this.f30868p = true;
            EMUApkTable n4 = n1.o.o().n(B.getPlugin_num());
            if (n4 != null) {
                if (com.join.android.app.common.utils.h.t(this, n4, false, new String[0]) && !UtilsMy.q0(this, n4)) {
                    this.f30869q = true;
                } else {
                    this.f30869q = false;
                }
            } else {
                this.f30869q = true;
            }
        } else {
            this.f30868p = false;
        }
        return this.f30869q && this.f30868p;
    }

    @Override // com.join.mgps.adapter.l0.e
    public void g0(String str) {
        if (!TextUtils.isEmpty(this.f30861j) && this.f30861j.equals(str) && this.f30862k.getFirst().intValue() == 3) {
            return;
        }
        this.f30861j = str;
        W0(3);
    }

    void getFriendInfo(int i2) {
        new c().execute(Integer.valueOf(i2));
    }

    public String getGameId() {
        return this.f30859h;
    }

    @Override // com.join.mgps.adapter.l0.e
    public void m0(FriendBean friendBean) {
        if (IntentUtil.getInstance().goLogin(this) || friendBean == null) {
            return;
        }
        this.f30867o = friendBean;
        String gameId = friendBean.getGameId();
        if (b1(gameId)) {
            DownloadTask B = g1.f.G().B(gameId);
            PlugInstallDialog_.I0(this).c(n1.o.o().n(B.getPlugin_num())).a(B).b(2).start();
        } else if (checkGameIsInstall(gameId)) {
            if (p1(gameId)) {
                return;
            }
            com.wufan.friend.chat.c.u().p(friendBean);
            this.f30867o = null;
        } else {
            startDownloadActivity(gameId, 10001);
        }
    }

    @Override // com.join.mgps.adapter.l0.e
    public void o(FriendBean friendBean) {
        if (IntentUtil.getInstance().goLogin(this) || friendBean == null) {
            return;
        }
        if (!com.join.android.app.common.utils.f.j(this)) {
            toast(getString(R.string.net_connect_failed));
            return;
        }
        this.f30867o = friendBean;
        if (!friendBean.isRecommend()) {
            w1();
            return;
        }
        try {
            com.wufan.friend.chat.c.u().v(this.f30867o.getUid(), Long.parseLong(this.f30867o.getGameId()));
        } catch (NumberFormatException e4) {
            e4.printStackTrace();
        }
    }

    void o1(int i2) {
        FragmentTransaction beginTransaction = this.f30852a.beginTransaction();
        com.join.mgps.fragment.u1 u1Var = this.f30853b;
        if (u1Var != null) {
            beginTransaction.hide(u1Var);
        }
        if (this.f30854c != null) {
            S0(beginTransaction);
            beginTransaction.hide(this.f30854c);
        }
        if (this.f30855d != null) {
            S0(beginTransaction);
            beginTransaction.hide(this.f30855d);
        }
        if (this.f30856e != null) {
            S0(beginTransaction);
            beginTransaction.hide(this.f30856e);
        }
        try {
            beginTransaction.commit();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        FragmentTransaction beginTransaction2 = this.f30852a.beginTransaction();
        if (i2 == 0) {
            com.join.mgps.fragment.u1 u1Var2 = this.f30853b;
            if (u1Var2 == null) {
                this.f30853b = new com.join.mgps.fragment.v1();
                Bundle bundle = new Bundle();
                bundle.putString("gameId", this.f30859h);
                bundle.putString("type", this.f30860i);
                this.f30853b.setArguments(bundle);
                beginTransaction2.add(T0(), this.f30853b);
            } else {
                beginTransaction2.show(u1Var2);
            }
        } else if (i2 == 1) {
            S0(beginTransaction2);
            com.join.mgps.fragment.w0 w0Var = this.f30854c;
            if (w0Var == null) {
                this.f30854c = new com.join.mgps.fragment.x0();
                beginTransaction2.add(T0(), this.f30854c);
            } else {
                beginTransaction2.show(w0Var);
            }
        } else if (i2 == 2) {
            S0(beginTransaction2);
            com.join.mgps.fragment.z1 z1Var = this.f30855d;
            if (z1Var == null) {
                this.f30855d = new com.join.mgps.fragment.a2();
                beginTransaction2.add(T0(), this.f30855d);
            } else {
                beginTransaction2.show(z1Var);
            }
        } else if (i2 == 3) {
            S0(beginTransaction2);
            com.join.mgps.fragment.i1 i1Var = this.f30856e;
            if (i1Var == null) {
                this.f30856e = new com.join.mgps.fragment.j1();
                Bundle bundle2 = new Bundle();
                bundle2.putString("ruid", this.f30861j);
                this.f30856e.setArguments(bundle2);
                beginTransaction2.add(T0(), this.f30856e);
            } else {
                i1Var.r0(this.f30861j);
                beginTransaction2.show(this.f30856e);
            }
        }
        try {
            beginTransaction2.commit();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, @Nullable Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i4 == -1) {
            if (i2 == 10000) {
                com.wufan.friend.chat.c.u().o(this.f30867o);
                this.f30867o = null;
            } else if (i2 == 10001) {
                com.wufan.friend.chat.c.u().p(this.f30867o);
                this.f30867o = null;
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onArenaResponse(ArenaResponse arenaResponse) {
        if (arenaResponse != null && arenaResponse.errorType == 10) {
            showInputRoomPwdDialog(arenaResponse.request);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f30862k.size() > 1 && this.f30863l) {
            r1();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!org.greenrobot.eventbus.c.f().m(this)) {
            org.greenrobot.eventbus.c.f().t(this);
        }
        registerReceiver();
        this.f30852a = getSupportFragmentManager();
        if (this instanceof FriendInviteActivity) {
            return;
        }
        boolean c12 = c1();
        this.f30863l = c12;
        if (c12) {
            W0(0);
        } else {
            u1();
        }
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (org.greenrobot.eventbus.c.f().m(this)) {
            org.greenrobot.eventbus.c.f().y(this);
        }
        if (this.f30863l) {
            unregisterReceiver();
            this.H = false;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.wufan.friend.chat.protocol.w1 w1Var) {
        List<com.wufan.friend.chat.protocol.r0> Z0;
        if (w1Var == null || w1Var.y() != 4 || w1Var.F() != 13 || w1Var.getData() == null || w1Var.getData().V0() == null || w1Var.getData().V0().Z0() == null || !this.H || (Z0 = w1Var.getData().V0().Z0()) == null || Z0.size() == 0) {
            return;
        }
        x1(Z0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f30862k.clear();
        this.f30853b = null;
        this.f30854c = null;
        this.f30855d = null;
        this.f30856e = null;
        this.f30857f = null;
        this.f30852a = getSupportFragmentManager();
        if (this instanceof FriendInviteActivity) {
            return;
        }
        boolean c12 = c1();
        this.f30863l = c12;
        if (c12) {
            W0(0);
        } else {
            u1();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.H = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f30863l) {
            this.H = true;
            com.join.mgps.fragment.u1 u1Var = this.f30853b;
            if (u1Var != null) {
                u1Var.P0();
            }
            this.f30858g.postDelayed(new Runnable() { // from class: com.join.mgps.activity.v
                @Override // java.lang.Runnable
                public final void run() {
                    FriendActivity.this.d1();
                }
            }, 500L);
        }
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int i2) {
        if (i2 == 0) {
            Z0();
        }
    }

    @Override // com.BaseActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        super.onWindowFocusChanged(z3);
    }

    void q1(String str) {
        try {
            this.f30867o.setGameId(str);
            this.f30867o.setElite(false);
            if (b1(str)) {
                DownloadTask B = g1.f.G().B(str);
                PlugInstallDialog_.I0(this).c(n1.o.o().n(B.getPlugin_num())).a(B).b(2).start();
            } else if (checkGameIsInstall(str)) {
                if (p1(str)) {
                    return;
                }
                com.wufan.friend.chat.c.u().o(this.f30867o);
                this.f30867o = null;
            } else {
                startDownloadActivity(str, 10000);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void r1() {
        if (this.f30862k.size() < 2) {
            return;
        }
        this.f30862k.pop();
        o1(this.f30862k.getFirst().intValue());
    }

    void registerReceiver() {
        this.f30870r = new a();
        registerReceiver(this.f30870r, new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_login_success"));
    }

    void s1() {
        getWindow().getDecorView().setSystemUiVisibility(Build.VERSION.SDK_INT >= 19 ? 5894 : 1799);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
    }

    void showAddFriend(final int i2) {
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null || accountData.getUid() == i2 || accountData.getUid() == 0) {
            return;
        }
        if (this.f30871s == null) {
            Dialog dialog = new Dialog(this, R.style.newtrans_floating_dialog);
            this.f30871s = dialog;
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.f30871s.getWindow().setAttributes(attributes);
            }
            View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_friend_add, (ViewGroup) null);
            this.f30873u = inflate.findViewById(R.id.close);
            this.f30874v = inflate.findViewById(R.id.button);
            this.f30875w = (TextView) inflate.findViewById(R.id.name);
            this.f30876x = (TextView) inflate.findViewById(R.id.accountId);
            this.f30872t = (SimpleDraweeView) inflate.findViewById(R.id.avatar);
            this.f30871s.setContentView(inflate);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp526);
            int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.wdp509);
            Window window = this.f30871s.getWindow();
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (dimensionPixelOffset == 0) {
                dimensionPixelOffset = -1;
            }
            attributes2.width = dimensionPixelOffset;
            if (dimensionPixelOffset2 == 0) {
                dimensionPixelOffset2 = -1;
            }
            attributes2.height = dimensionPixelOffset2;
            window.setGravity(17);
            this.f30873u.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FriendActivity.this.e1(view);
                }
            });
        }
        this.f30874v.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendActivity.this.f1(i2, view);
            }
        });
        getFriendInfo(i2);
        if (!this.f30871s.isShowing()) {
            this.f30871s.show();
        }
        com.papa.sim.statistic.p.l(this).K1(Event.showInviteCode, new Ext());
    }

    void showInputRoomPwdDialog(final ArenaRequest arenaRequest) {
        if (this.H) {
            this.f30858g.post(new Runnable() { // from class: com.join.mgps.activity.w
                @Override // java.lang.Runnable
                public final void run() {
                    FriendActivity.this.m1(arenaRequest);
                }
            });
        }
    }

    public void startDownloadActivity(String str, int i2) {
        Intent intent = new Intent(this, NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", str);
        intent.putExtra(NewArenaDownloadActivity_.f36681q0, this.f30869q);
        intent.putExtra(NewArenaDownloadActivity_.f36682r0, this.f30868p);
        startActivityForResult(intent, i2);
    }

    void t1() {
        if (this.f30865n == null) {
            this.f30865n = new com.join.mgps.dialog.n(this);
        }
        this.f30865n.g();
    }

    void toast(final String str) {
        this.f30858g.post(new Runnable() { // from class: com.join.mgps.activity.n
            @Override // java.lang.Runnable
            public final void run() {
                FriendActivity.this.n1(str);
            }
        });
    }

    void unregisterReceiver() {
        BroadcastReceiver broadcastReceiver = this.f30870r;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
    }

    void v1() {
        com.join.mgps.dialog.j jVar = this.f30864m;
        if (jVar != null) {
            jVar.c();
        }
        List<DownloadTask> s3 = g1.f.G().s();
        com.join.mgps.dialog.j jVar2 = new com.join.mgps.dialog.j(this, new j.c() { // from class: com.join.mgps.activity.u
            @Override // com.join.mgps.dialog.j.c
            public final void a(DownloadTask downloadTask) {
                FriendActivity.this.g1(this, downloadTask);
            }
        });
        this.f30864m = jVar2;
        jVar2.h(s3, false);
        if (s3 != null && s3.size() != 0) {
            this.f30864m.j();
        } else {
            t1();
        }
        Z0();
    }

    public void w1() {
        if (this.f30877y == null) {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            View inflate = LayoutInflater.from(this).inflate(R.layout.newarena_gameroom_selecter_activity1, viewGroup, false);
            this.f30877y = inflate;
            this.A = (RecyclerView) inflate.findViewById(R.id.recyclerView);
            this.f30878z = (RecyclerView) this.f30877y.findViewById(R.id.recyclerViewGamelist);
            View findViewById = this.f30877y.findViewById(R.id.close);
            this.f30873u = findViewById;
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FriendActivity.this.h1(view);
                }
            });
            this.A.setLayoutManager(new LinearLayoutManager(this));
            j jVar = new j(this);
            this.B = jVar;
            this.A.setAdapter(jVar);
            this.f30878z.setLayoutManager(new GridLayoutManager(this, 3));
            g gVar = new g(this, false);
            this.C = gVar;
            this.F = gVar.b();
            this.f30878z.setAdapter(this.C);
            this.B.f(new h() { // from class: com.join.mgps.activity.t
                @Override // com.join.mgps.activity.FriendActivity.h
                public final void onItemClick(int i2) {
                    FriendActivity.this.i1(i2);
                }
            });
            this.C.g(new h() { // from class: com.join.mgps.activity.s
                @Override // com.join.mgps.activity.FriendActivity.h
                public final void onItemClick(int i2) {
                    FriendActivity.this.j1(i2);
                }
            });
            viewGroup.addView(this.f30877y);
        }
        FriendBean friendBean = this.f30867o;
        if (friendBean != null && friendBean.getSource() == 1) {
            this.C.f(true);
        } else {
            this.C.f(false);
        }
        this.C.h(false);
        this.f30877y.setVisibility(0);
        V0();
    }

    public void x1(List<com.wufan.friend.chat.protocol.r0> list) {
        if (this.I == null) {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            View inflate = LayoutInflater.from(this).inflate(R.layout.newarena_gameroom_selecter_activity2, viewGroup, false);
            this.I = inflate;
            this.J = (RecyclerView) inflate.findViewById(R.id.recyclerViewGamelist);
            this.I.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FriendActivity.this.k1(view);
                }
            });
            this.J.setLayoutManager(new GridLayoutManager(this, 3));
            g gVar = new g(this, false);
            this.K = gVar;
            this.f30866n0 = gVar.b();
            this.J.setAdapter(this.K);
            this.K.g(new h() { // from class: com.join.mgps.activity.r
                @Override // com.join.mgps.activity.FriendActivity.h
                public final void onItemClick(int i2) {
                    FriendActivity.this.l1(i2);
                }
            });
            viewGroup.addView(this.I);
        }
        this.K.h(true);
        this.I.setVisibility(0);
        this.f30866n0.clear();
        for (com.wufan.friend.chat.protocol.r0 r0Var : list) {
            GameInfoBean gameInfoBean = new GameInfoBean();
            gameInfoBean.setPic_cover(r0Var.I1());
            gameInfoBean.setTitle(r0Var.getGameName());
            gameInfoBean.setGame_id(r0Var.getGameId() + "");
            gameInfoBean.setGame_name(r0Var.getGameName() + "");
            this.f30866n0.add(gameInfoBean);
        }
        this.K.notifyDataSetChanged();
    }
}
