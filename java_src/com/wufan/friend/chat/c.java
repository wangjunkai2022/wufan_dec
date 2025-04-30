package com.wufan.friend.chat;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.Toast;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.j;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.activity.FriendInviteActivity;
import com.join.mgps.activity.GameMainActivity3;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.GameRoomListActivity;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendInviteBean;
import com.join.mgps.event.m;
import com.join.mgps.rpc.g;
import com.join.mgps.socket.fight.arena.b;
import com.papa91.arc.bean.ButtonBean;
import com.wufan.friend.chat.protocol.ChatRoomArgs;
import com.wufan.friend.chat.protocol.OnlineState;
import com.wufan.friend.chat.protocol.PlayGameArgs;
import com.wufan.friend.chat.protocol.PlayType;
import g1.f;
import io.netty.handler.traffic.AbstractTrafficShapingHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: FriendPresenter.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: n  reason: collision with root package name */
    private static volatile c f61579n;

    /* renamed from: a  reason: collision with root package name */
    private Context f61580a;

    /* renamed from: b  reason: collision with root package name */
    com.wufan.friend.chat.rpc.b f61581b;

    /* renamed from: d  reason: collision with root package name */
    private boolean f61583d;

    /* renamed from: f  reason: collision with root package name */
    private FriendAccountInfo f61585f;

    /* renamed from: g  reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b f61586g;

    /* renamed from: h  reason: collision with root package name */
    FriendBean f61587h;

    /* renamed from: c  reason: collision with root package name */
    Handler f61582c = new Handler();

    /* renamed from: e  reason: collision with root package name */
    private int f61584e = 1;

    /* renamed from: i  reason: collision with root package name */
    LinkedList<FriendInviteBean> f61588i = new LinkedList<>();

    /* renamed from: j  reason: collision with root package name */
    List<FriendBean> f61589j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    final int f61590k = com.join.mgps.socket.entity.b.f52083c;

    /* renamed from: l  reason: collision with root package name */
    private b.InterfaceC0228b f61591l = new b();

    /* renamed from: m  reason: collision with root package name */
    public final SocketListener.NotifyObserver f61592m = new C0364c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FriendPresenter.java */
    /* loaded from: classes.dex */
    public class a implements GameRoomActivity.x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendBean f61593a;

        a(FriendBean friendBean) {
            this.f61593a = friendBean;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            c cVar = c.this;
            FriendBean friendBean = this.f61593a;
            cVar.f61587h = friendBean;
            if (friendBean == null) {
                return;
            }
            friendBean.setAction("invite");
            c.this.k(this.f61593a.getGameId());
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* compiled from: FriendPresenter.java */
    /* loaded from: classes.dex */
    class b extends b.c {
        b() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
            super.c();
            if (c.this.getContext() instanceof GameMainActivity3) {
                return;
            }
            boolean z3 = c.this.getContext() instanceof GameRoomListActivity;
        }
    }

    /* compiled from: FriendPresenter.java */
    /* renamed from: com.wufan.friend.chat.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0364c implements SocketListener.NotifyObserver {
        C0364c() {
        }

        void a(int i2, String str) {
            if (c.this.f61586g != null) {
                c.this.f61586g.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, i2, str));
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            int i2 = socketError.errorType;
            if (i2 == 6 || i2 == 2) {
                c.this.X();
            } else if (i2 == 5) {
                c.this.X();
            } else if (i2 == 3 || i2 == 4) {
                c.this.X();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b4, code lost:
            if (r14.f61596a.f61587h.getSource() == 2) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0168, code lost:
            if (r0.getRoomCategory() == com.papa91.battle.protocol.RoomCategory.TOURNAMENT) goto L57;
         */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0118  */
        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onServerResponse(app.mgsim.arena.ArenaResponse r15) {
            /*
                Method dump skipped, instructions count: 411
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.wufan.friend.chat.c.C0364c.onServerResponse(app.mgsim.arena.ArenaResponse):void");
        }
    }

    public c(Context context) {
        this.f61580a = context;
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(FriendBean friendBean) {
        this.f61589j.remove(friendBean);
        org.greenrobot.eventbus.c.f().o(new m(10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(PlayGameArgs.State state, PlayType playType, long j4, int i2, int i4) {
        List<DownloadTask> s3 = f.G().s();
        ArrayList arrayList = new ArrayList();
        for (DownloadTask downloadTask : s3) {
            arrayList.add(Long.valueOf(downloadTask.getCrc_link_type_val()));
        }
        com.wufan.friend.chat.rpc.b bVar = this.f61581b;
        bVar.h(state, playType, j4, i2, i4, Y(j4 + ""), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        try {
            Toast.makeText(getContext(), "网络不稳定，请重试", 0).show();
        } catch (Exception unused) {
        }
    }

    public static c u() {
        if (f61579n == null) {
            f61579n = new c(MApplication.n());
        }
        return f61579n;
    }

    public int A() {
        return this.f61584e;
    }

    public void B() {
        if (this.f61580a == null) {
            return;
        }
        this.f61581b.m();
    }

    public void C() {
        String str = g.J;
        int i2 = g.K;
        try {
            com.wufan.friend.chat.rpc.b bVar = this.f61581b;
            if (bVar != null && !bVar.o(str, i2)) {
                this.f61581b.d();
            }
            this.f61581b = new com.wufan.friend.chat.rpc.b(str, i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public boolean D() {
        FriendAccountInfo friendAccountInfo = this.f61585f;
        return friendAccountInfo != null && friendAccountInfo.isBanned();
    }

    public boolean E(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator<FriendBean> it2 = this.f61589j.iterator();
        while (it2.hasNext()) {
            FriendBean next = it2.next();
            if (System.currentTimeMillis() - next.getTimestamp() > AbstractTrafficShapingHandler.DEFAULT_MAX_TIME) {
                it2.remove();
            } else {
                if (str.equals(next.getUid() + "")) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean F() {
        return this.f61581b.n() && this.f61583d;
    }

    public boolean G(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    void H(int i2, String str, boolean z3) {
        com.join.mgps.socket.fight.arena.b bVar = this.f61586g;
        if (bVar != null) {
            if (bVar.d().s()) {
                this.f61586g.f(ArenaRequestFactory.joinRoom(z(), i2, str, z3));
                return;
            }
            ArenaRequest login = ArenaRequestFactory.login(z());
            login.isRefreshing = true;
            login.isElite = false;
            this.f61586g.f(login);
        }
    }

    public void K() {
        AccountBean accountData;
        Context context = this.f61580a;
        if (context == null || (accountData = AccountUtil_.getInstance_(context).getAccountData()) == null) {
            return;
        }
        L(accountData.getUid(), accountData.getToken());
    }

    public void L(int i2, String str) {
        if (this.f61580a == null) {
            return;
        }
        this.f61581b.q(String.valueOf(i2), str);
    }

    public void M() {
        com.wufan.friend.chat.rpc.b bVar;
        try {
            this.f61583d = false;
            this.f61584e = 1;
            this.f61585f = null;
            if (this.f61580a == null || (bVar = this.f61581b) == null || !bVar.n()) {
                return;
            }
            this.f61581b.e();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void N() {
        LinkedList<FriendInviteBean> linkedList = this.f61588i;
        if (linkedList == null || linkedList.size() <= 0) {
            return;
        }
        org.greenrobot.eventbus.c.f().o(this.f61588i.getFirst());
    }

    public void O() {
        LinkedList<FriendInviteBean> linkedList = this.f61588i;
        FriendInviteBean pop = (linkedList == null || linkedList.size() <= 0) ? null : this.f61588i.pop();
        if (pop != null) {
            FriendBean friendBean = new FriendBean();
            friendBean.setRoomPwd(pop.getRoomPasswd());
            friendBean.setRoomId(pop.getLobbyRoomId());
            friendBean.setElite(pop.isEliteField());
            friendBean.setSource(pop.getSource());
            p(friendBean);
        }
        LinkedList<FriendInviteBean> linkedList2 = this.f61588i;
        if (linkedList2 == null || linkedList2.size() <= 0) {
            return;
        }
        this.f61588i.clear();
    }

    public void P() {
        LinkedList<FriendInviteBean> linkedList = this.f61588i;
        if (linkedList != null && linkedList.size() > 0) {
            m mVar = new m(5);
            mVar.m(this.f61588i.pop().getFromAccountId());
            org.greenrobot.eventbus.c.f().o(mVar);
        }
        N();
    }

    public void Q() {
        LinkedList<FriendInviteBean> linkedList = this.f61588i;
        if (linkedList != null && linkedList.size() > 0) {
            new m(5).m(this.f61588i.pop().getFromAccountId());
        }
        N();
    }

    public void R(FriendInviteBean friendInviteBean) {
        FriendInviteBean first;
        LinkedList<FriendInviteBean> linkedList = this.f61588i;
        if (linkedList == null || friendInviteBean == null) {
            return;
        }
        if (linkedList.size() >= 5) {
            first = this.f61588i.size() > 0 ? this.f61588i.getFirst() : null;
            if (j.G(getContext())) {
                Activity w3 = j.w();
                if (w3 == null || !(w3 instanceof FriendInviteActivity)) {
                    org.greenrobot.eventbus.c.f().o(first);
                    return;
                }
                return;
            }
            org.greenrobot.eventbus.c.f().o(first);
            return;
        }
        this.f61588i.addLast(friendInviteBean);
        first = this.f61588i.size() > 0 ? this.f61588i.getFirst() : null;
        if (j.G(getContext())) {
            Activity w4 = j.w();
            if (w4 == null || !(w4 instanceof FriendInviteActivity)) {
                org.greenrobot.eventbus.c.f().o(first);
                return;
            }
            return;
        }
        org.greenrobot.eventbus.c.f().o(first);
    }

    public void S(FriendAccountInfo friendAccountInfo) {
        this.f61585f = friendAccountInfo;
    }

    public void T(boolean z3) {
        this.f61583d = z3;
    }

    public void U(int i2) {
        OnlineState onlineState;
        if (this.f61580a == null) {
            return;
        }
        if (i2 == 0) {
            onlineState = OnlineState.ONLINE;
        } else if (i2 == 1) {
            onlineState = OnlineState.INVISIBLE;
        } else {
            onlineState = OnlineState.OFFLINE;
        }
        this.f61581b.s(onlineState);
    }

    public void V(FriendBean friendBean) {
        this.f61587h = friendBean;
    }

    public void W(int i2) {
        this.f61584e = i2;
    }

    boolean Y(String str) {
        try {
            DownloadTask B = f.G().B(str);
            if (B != null && !TextUtils.isEmpty(B.getFight_fun()) && B.getFight_fun().length() >= 7) {
                return B.getFight_fun().toCharArray()[6] == '1';
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return false;
    }

    public void Z() {
        try {
            com.join.mgps.socket.fight.arena.b bVar = this.f61586g;
            if (bVar != null && bVar.d() != null) {
                this.f61586g.d().A(this.f61592m);
            }
            com.join.mgps.socket.fight.arena.b bVar2 = this.f61586g;
            if (bVar2 != null) {
                bVar2.g();
                this.f61586g.stopService();
                this.f61586g = null;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void e(final FriendBean friendBean) {
        if (friendBean == null) {
            return;
        }
        friendBean.setTimestamp(System.currentTimeMillis());
        this.f61589j.add(friendBean);
        org.greenrobot.eventbus.c.f().o(new m(10));
        this.f61582c.postDelayed(new Runnable() { // from class: com.wufan.friend.chat.a
            @Override // java.lang.Runnable
            public final void run() {
                c.this.I(friendBean);
            }
        }, AbstractTrafficShapingHandler.DEFAULT_MAX_TIME);
    }

    public void f(Activity activity) {
        try {
            if (this.f61586g == null) {
                com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(activity, this.f61591l);
                this.f61586g = bVar;
                bVar.bindService();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void g() {
        this.f61583d = false;
        if (this.f61580a == null) {
            return;
        }
        this.f61581b.e();
        this.f61581b.d();
    }

    Context getContext() {
        Activity activity = MApplication.f9223q.getActivity();
        this.f61580a = activity;
        if (activity == null) {
            this.f61580a = j.w();
        }
        if (this.f61580a == null) {
            this.f61580a = MApplication.n();
        }
        return this.f61580a;
    }

    public void h(String str) {
        com.wufan.friend.chat.rpc.b bVar = this.f61581b;
        if (bVar == null) {
            return;
        }
        bVar.c(str);
    }

    public void i(int i2, long j4) {
        try {
            com.wufan.friend.chat.rpc.b bVar = this.f61581b;
            if (bVar == null) {
                return;
            }
            ChatRoomArgs.State state = null;
            if (i2 == 0) {
                state = ChatRoomArgs.State.JOIN;
            } else if (i2 == 1) {
                state = ChatRoomArgs.State.LEAVE;
            }
            bVar.b(state, j4, Integer.parseInt(AccountUtil_.getInstance_(this.f61580a).getUid()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public boolean j(ArenaResponse arenaResponse) {
        if (w() != null) {
            this.f61592m.onServerResponse(arenaResponse);
            return true;
        }
        return false;
    }

    void k(String str) {
        DownloadTask B;
        Context context = getContext();
        if (TextUtils.isEmpty(str) || (B = f.G().B(str)) == null) {
            return;
        }
        if (com.join.android.app.common.utils.f.j(context)) {
            if (IntentUtil.getInstance().goLoginBattle(context)) {
                return;
            }
            if (UtilsMy.P(context, B) == null) {
                i2.a(context).b("正在下载插件...");
                return;
            }
            com.join.mgps.socket.fight.arena.b bVar = this.f61586g;
            if (bVar == null || bVar.d() == null) {
                return;
            }
            if (this.f61586g.d().s()) {
                this.f61586g.f(ArenaRequestFactory.createRoom(z(), str, 0, AccountUtil_.getInstance_(context).getAccountData().getUid(), true));
                return;
            }
            ArenaRequest login = ArenaRequestFactory.login(z());
            login.isRefreshing = true;
            login.isElite = false;
            this.f61586g.f(login);
            return;
        }
        i2.a(context).b("无网络连接");
    }

    public int l(String str) {
        try {
            Matcher matcher = Pattern.compile("\\$(.*?)\\$").matcher(str);
            while (matcher.find()) {
                String group = matcher.group(1);
                if (!TextUtils.isEmpty(group)) {
                    String trim = new String(com.join.mgps.Util.j.b().f(group.getBytes())).trim();
                    if (G(trim)) {
                        return Integer.parseInt(trim);
                    }
                }
            }
            return 0;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public String m(int i2) {
        try {
            return String.format("复制口令$%s$打开悟饭游戏厅，加我好友【下载地址https://tuis.12345fun.com/?aid=7Fp12l】", new String(com.join.mgps.Util.j.b().g(String.format("%10d", Integer.valueOf(i2)).getBytes())));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "复制口令$%s$打开悟饭游戏厅，加我好友【下载地址https://tuis.12345fun.com/?aid=7Fp12l】";
        }
    }

    public void n(int i2, int i4, String str, boolean z3, long j4) {
        com.wufan.friend.chat.rpc.b bVar = this.f61581b;
        if (bVar == null) {
            return;
        }
        bVar.f(i2, i4, str, z3, j4, Y(j4 + ""));
    }

    public void o(FriendBean friendBean) {
        UtilsMy.p0(getContext(), 1, "", "FIGHT_LOBBY", new a(friendBean));
    }

    public void p(FriendBean friendBean) {
        this.f61587h = friendBean;
        if (friendBean == null) {
            return;
        }
        friendBean.setAction("join");
        H(friendBean.getRoomId(), friendBean.getRoomPwd(), friendBean.isElite());
    }

    public void q(int i2, int i4, final long j4, final int i5, final int i6) {
        if (this.f61581b == null) {
            return;
        }
        PlayGameArgs.State state = null;
        if (i2 == 0) {
            state = PlayGameArgs.State.START;
        } else if (i2 == 2) {
            state = PlayGameArgs.State.OVER;
        }
        final PlayGameArgs.State state2 = state;
        final PlayType x3 = x(i4);
        this.f61582c.post(new Runnable() { // from class: com.wufan.friend.chat.b
            @Override // java.lang.Runnable
            public final void run() {
                c.this.J(state2, x3, j4, i5, i6);
            }
        });
        if (i2 != 2 || i5 == 0) {
            return;
        }
        i(1, i5);
    }

    public FriendAccountInfo r() {
        return this.f61585f;
    }

    public FriendInviteBean s() {
        if (this.f61588i.size() > 0) {
            return this.f61588i.getFirst();
        }
        return null;
    }

    public void t() {
        if (this.f61580a == null) {
            return;
        }
        this.f61581b.i();
    }

    public void v(int i2, long j4) {
        com.wufan.friend.chat.rpc.b bVar = this.f61581b;
        if (bVar == null) {
            return;
        }
        bVar.j(i2, j4);
    }

    public FriendBean w() {
        return this.f61587h;
    }

    PlayType x(int i2) {
        if (i2 == 0) {
            return PlayType.STAND;
        }
        if (i2 != 8 && i2 != 9 && i2 != 10 && i2 != 11 && i2 != 12) {
            return PlayType.UNRECOGNIZED;
        }
        return PlayType.NET_BATTLE;
    }

    public void y(long j4, String str, List<Long> list, int i2) {
        if (this.f61580a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        this.f61581b.l(j4, str, list, i2);
    }

    String z() {
        return ArenaConstants.REGISTER_TYPE_PUBLIC;
    }
}
