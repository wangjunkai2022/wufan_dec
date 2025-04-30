package com.join.mgps.fragment.roomlist;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.AreaInfo;
import app.mgsim.arena.SimpleWrapperRoom;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.activity.arena.GameRoomListActivity;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.adapter.u1;
import com.join.mgps.customview.g0;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa91.arc.ext.Log;
import com.papa91.battle.protocol.Platform;
import com.papa91.battle.protocol.RoomPosition;
import com.papa91.battle.protocol.SimpleRoom;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import n1.o;
import n1.p;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: StandardEliteRoomFragment.java */
@EFragment(R.layout.fragment_standardorelite_room)
/* loaded from: classes4.dex */
public class c extends Fragment {

    /* renamed from: n0  reason: collision with root package name */
    private static final int f50076n0 = 1000;

    /* renamed from: o0  reason: collision with root package name */
    private static Field f50077o0 = null;

    /* renamed from: p0  reason: collision with root package name */
    private static Method f50078p0 = null;

    /* renamed from: q0  reason: collision with root package name */
    private static final int f50079q0 = 1012;

    /* renamed from: r0  reason: collision with root package name */
    private static final int f50080r0 = 1013;

    /* renamed from: s0  reason: collision with root package name */
    public static final int f50081s0 = 1014;

    /* renamed from: t0  reason: collision with root package name */
    public static final int f50082t0 = 1015;

    /* renamed from: u0  reason: collision with root package name */
    private static final String f50083u0 = "StandardEliteRoomFragment";
    private Dialog D;
    private n I;
    @Bean

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.Util.b f50084a;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f50089f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    XRecyclerView f50090g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    PtrClassicFrameLayout f50091h;

    /* renamed from: i  reason: collision with root package name */
    GameRoomListActivity_ f50092i;

    /* renamed from: j  reason: collision with root package name */
    private u1 f50093j;

    /* renamed from: k  reason: collision with root package name */
    private GridLayoutManager f50094k;

    /* renamed from: q  reason: collision with root package name */
    private com.join.mgps.dialog.k f50100q;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.dialog.g f50103t;

    /* renamed from: u  reason: collision with root package name */
    private SimpleRoom f50104u;

    /* renamed from: v  reason: collision with root package name */
    g0.e f50105v;

    /* renamed from: w  reason: collision with root package name */
    ConcurrentHashMap<Integer, AreaInfo> f50106w;

    /* renamed from: x  reason: collision with root package name */
    AreaInfo f50107x;

    /* renamed from: y  reason: collision with root package name */
    String f50108y;

    /* renamed from: b  reason: collision with root package name */
    private boolean f50085b = false;

    /* renamed from: c  reason: collision with root package name */
    private List<SimpleWrapperRoom> f50086c = Collections.synchronizedList(new ArrayList());

    /* renamed from: d  reason: collision with root package name */
    private List<SimpleWrapperRoom> f50087d = Collections.synchronizedList(new ArrayList());

    /* renamed from: e  reason: collision with root package name */
    private List<SimpleWrapperRoom> f50088e = Collections.synchronizedList(new ArrayList());

    /* renamed from: l  reason: collision with root package name */
    float f50095l = 0.0f;

    /* renamed from: m  reason: collision with root package name */
    boolean f50096m = false;

    /* renamed from: n  reason: collision with root package name */
    long f50097n = 1000;

    /* renamed from: o  reason: collision with root package name */
    Handler f50098o = new Handler();

    /* renamed from: p  reason: collision with root package name */
    Runnable f50099p = new d();

    /* renamed from: r  reason: collision with root package name */
    long f50101r = 0;

    /* renamed from: s  reason: collision with root package name */
    long f50102s = 0;

    /* renamed from: z  reason: collision with root package name */
    private int f50109z = 3;
    public int A = 1;
    private String B = "";
    private m C = new k();
    private final Comparator<SimpleWrapperRoom> E = new l();
    private final Comparator<SimpleWrapperRoom> F = new a();
    private final Comparator<SimpleWrapperRoom> G = new b();
    private final Comparator<SimpleWrapperRoom> H = new C0211c();
    boolean J = false;
    boolean K = false;

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class a implements Comparator<SimpleWrapperRoom> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(SimpleWrapperRoom simpleWrapperRoom, SimpleWrapperRoom simpleWrapperRoom2) {
            if (simpleWrapperRoom.simpleRoom.getVip() || !simpleWrapperRoom2.simpleRoom.getVip()) {
                if (!simpleWrapperRoom.simpleRoom.getVip() || simpleWrapperRoom2.simpleRoom.getVip()) {
                    if (simpleWrapperRoom.simpleRoom.getCopper() > simpleWrapperRoom2.simpleRoom.getCopper()) {
                        return 1;
                    }
                    return simpleWrapperRoom.simpleRoom.getCopper() == simpleWrapperRoom2.simpleRoom.getCopper() ? 0 : -1;
                }
                return -1;
            }
            return 1;
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class b implements Comparator<SimpleWrapperRoom> {
        b() {
        }

        private int a(long j4, int i2) {
            return (int) ((((SystemClock.elapsedRealtime() - j4) / 1000) + i2) - 1);
        }

        @Override // java.util.Comparator
        /* renamed from: b */
        public int compare(SimpleWrapperRoom simpleWrapperRoom, SimpleWrapperRoom simpleWrapperRoom2) {
            if (simpleWrapperRoom.simpleRoom.getVip() || !simpleWrapperRoom2.simpleRoom.getVip()) {
                if (!simpleWrapperRoom.simpleRoom.getVip() || simpleWrapperRoom2.simpleRoom.getVip()) {
                    if (a(simpleWrapperRoom.initialStartTime, simpleWrapperRoom.simpleRoom.getPlaySeconds()) > a(simpleWrapperRoom2.initialStartTime, simpleWrapperRoom2.simpleRoom.getPlaySeconds())) {
                        return 1;
                    }
                    return a(simpleWrapperRoom.initialStartTime, simpleWrapperRoom.simpleRoom.getPlaySeconds()) == a(simpleWrapperRoom2.initialStartTime, simpleWrapperRoom2.simpleRoom.getPlaySeconds()) ? 0 : -1;
                }
                return -1;
            }
            return 1;
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* renamed from: com.join.mgps.fragment.roomlist.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0211c implements Comparator<SimpleWrapperRoom> {
        C0211c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(SimpleWrapperRoom simpleWrapperRoom, SimpleWrapperRoom simpleWrapperRoom2) {
            if (simpleWrapperRoom.simpleRoom.getVip() || !simpleWrapperRoom2.simpleRoom.getVip()) {
                if (!simpleWrapperRoom.simpleRoom.getVip() || simpleWrapperRoom2.simpleRoom.getVip()) {
                    int seatsNumber = simpleWrapperRoom.simpleRoom.getSeatsNumber() - simpleWrapperRoom.simpleRoom.getSitDownloadNumber();
                    int seatsNumber2 = simpleWrapperRoom2.simpleRoom.getSeatsNumber() - simpleWrapperRoom2.simpleRoom.getSitDownloadNumber();
                    if (seatsNumber < seatsNumber2) {
                        return 1;
                    }
                    return seatsNumber == seatsNumber2 ? 0 : -1;
                }
                return -1;
            }
            return 1;
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XRecyclerView xRecyclerView = c.this.f50090g;
            if (xRecyclerView == null) {
                return;
            }
            if (xRecyclerView.getScrollState() == 0 && !c.this.f50088e.equals(c.this.f50087d)) {
                c.this.f50088e.clear();
                c cVar = c.this;
                if (cVar.f50095l == 0.0f) {
                    float width = cVar.f50090g.getWidth();
                    float dimensionPixelOffset = c.this.getResources().getDimensionPixelOffset(R.dimen.wdp858);
                    if (width > 1.25f * dimensionPixelOffset) {
                        c.this.f50095l = width / dimensionPixelOffset;
                    } else {
                        c.this.f50095l = 1.0f;
                    }
                    c.this.f50093j.h(c.this.f50095l);
                }
                c.this.f50088e.addAll(c.this.f50087d);
                if (c.this.f50093j != null) {
                    c.this.f50093j.notifyDataSetChanged();
                }
            }
            c cVar2 = c.this;
            if (cVar2.f50096m) {
                cVar2.f50098o.postDelayed(this, cVar2.f50097n);
            }
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class e extends GridLayoutManager.SpanSizeLookup {
        e() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i2) {
            return 1;
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class f implements u1.b {
        f() {
        }

        @Override // com.join.mgps.adapter.u1.b
        public void a(RecyclerView.ViewHolder viewHolder, int i2) {
            c.this.w0(i2);
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class g implements XRecyclerView.f {
        g() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            if (!com.join.android.app.common.utils.f.j(c.this.f50092i)) {
                c.this.showToast("当前网络不可用!");
                c.this.f50090g.z1();
                return;
            }
            c cVar = c.this;
            cVar.f50092i.j3(cVar.f50085b);
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class h extends RecyclerView.OnScrollListener {
        h() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
            if (!c.this.f50085b && (c.this.getActivity() instanceof GameRoomListActivity)) {
                ((GameRoomListActivity) c.this.getActivity()).g3(i4);
            }
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class i extends RecyclerView.ItemDecoration {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50118a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50119b;

        i(int i2, int i4) {
            this.f50118a = i2;
            this.f50119b = i4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            if (recyclerView.getChildPosition(view) % 2 == 0) {
                rect.right = this.f50118a;
            } else {
                rect.left = this.f50118a;
            }
            int i2 = this.f50119b;
            rect.top = i2;
            rect.bottom = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    public class j implements InputNumView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f50121a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SimpleRoom f50122b;

        j(com.join.mgps.customview.input.a aVar, SimpleRoom simpleRoom) {
            this.f50121a = aVar;
            this.f50122b = simpleRoom;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f50121a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String str) {
            this.f50121a.c();
            c.this.f50092i.b3(this.f50122b.getRoomId(), str, c.this.f50085b);
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class k implements m {
        k() {
        }

        @Override // com.join.mgps.fragment.roomlist.c.m
        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            c cVar = c.this;
            cVar.y0("----onRoomSortChanged onGameListSelected---  gameId :" + str);
            long currentTimeMillis = System.currentTimeMillis();
            c cVar2 = c.this;
            cVar2.y0("----onRoomSortChanged onGameListSelected---  sort data start  Time :" + currentTimeMillis);
            c.this.K0();
            c.this.B = str;
            if (TextUtils.isEmpty(c.this.B)) {
                synchronized (c.this.f50087d) {
                    c.this.f50087d.clear();
                    c.this.f50087d.addAll(c.this.f50086c);
                    c.this.Y0();
                    c.this.N0();
                }
            } else {
                c.this.j0(true, str);
            }
            c.this.c0();
            c.this.d0();
            c.this.o0();
            c cVar3 = c.this;
            cVar3.y0("----onRoomSortChanged onGameListSelected---sort data spend  Time :" + (System.currentTimeMillis() - currentTimeMillis));
        }

        @Override // com.join.mgps.fragment.roomlist.c.m
        public void b(int i2, int i4) {
            long currentTimeMillis = System.currentTimeMillis();
            c cVar = c.this;
            cVar.y0("----onRoomSortChanged onPrioritySortChanged---  sort data start  Time :" + currentTimeMillis);
            c.this.K0();
            c cVar2 = c.this;
            cVar2.A = i4;
            cVar2.Y0();
            c.this.f50109z = i2;
            c.this.N0();
            c cVar3 = c.this;
            cVar3.j0(false, cVar3.B);
            c.this.c0();
            c.this.d0();
            c.this.o0();
            c.this.I.a(c.this.f50087d.size(), c.this.f50085b);
            c cVar4 = c.this;
            cVar4.y0("----onRoomSortChanged onPrioritySortChanged---sort data spend  Time :" + (System.currentTimeMillis() - currentTimeMillis));
        }

        @Override // com.join.mgps.fragment.roomlist.c.m
        public void c(int i2) {
            c.this.A = i2;
            long currentTimeMillis = System.currentTimeMillis();
            c cVar = c.this;
            cVar.y0("----onRoomSortChanged onShowPeripheralChanged---  sort data start  Time :" + currentTimeMillis);
            c.this.K0();
            c.this.Y0();
            c cVar2 = c.this;
            cVar2.j0(false, cVar2.B);
            c.this.c0();
            c.this.d0();
            c.this.o0();
            c.this.I.a(c.this.f50087d.size(), c.this.f50085b);
            c cVar3 = c.this;
            cVar3.y0("----onRoomSortChanged onShowPeripheralChanged ---sort data spend  Time :" + (System.currentTimeMillis() - currentTimeMillis));
        }

        @Override // com.join.mgps.fragment.roomlist.c.m
        public void d(GameConfig gameConfig) {
            c cVar = c.this;
            if (cVar.t0("" + gameConfig.getGame_id())) {
                g1.f G = g1.f.G();
                DownloadTask B = G.B("" + gameConfig.getGame_id());
                PlugInstallDialog_.I0(c.this.getContext()).c(o.o().n(B.getPlugin_num())).a(B).b(2).start();
            } else if (c.this.f0(gameConfig.getGame_id())) {
                if (c.this.u0(gameConfig.getGame_id())) {
                    return;
                }
                if (!(c.this.getActivity() instanceof GameRoomListActivity) || ((GameRoomListActivity) c.this.getActivity()).J2() == null) {
                    c.this.f50092i.x2(gameConfig.getGame_id(), c.this.f50085b);
                    return;
                }
                FriendBean J2 = ((GameRoomListActivity) c.this.getActivity()).J2();
                J2.setGameId(gameConfig.getGame_id());
                J2.setElite(c.this.f50085b);
                com.wufan.friend.chat.c.u().o(J2);
                ((GameRoomListActivity) c.this.getActivity()).t3(null);
            } else {
                c.this.P0(gameConfig.getGame_id(), 1013);
            }
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    class l implements Comparator<SimpleWrapperRoom> {
        l() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(SimpleWrapperRoom simpleWrapperRoom, SimpleWrapperRoom simpleWrapperRoom2) {
            if (simpleWrapperRoom.simpleRoom.getVip() || !simpleWrapperRoom2.simpleRoom.getVip()) {
                if (!simpleWrapperRoom.simpleRoom.getVip() || simpleWrapperRoom2.simpleRoom.getVip()) {
                    if (simpleWrapperRoom.simpleRoom.getCopper() < simpleWrapperRoom2.simpleRoom.getCopper()) {
                        return 1;
                    }
                    return simpleWrapperRoom.simpleRoom.getCopper() == simpleWrapperRoom2.simpleRoom.getCopper() ? 0 : -1;
                }
                return -1;
            }
            return 1;
        }
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    public interface m {

        /* renamed from: a  reason: collision with root package name */
        public static final int f50126a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f50127b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f50128c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f50129d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final int f50130e = 5;

        /* renamed from: f  reason: collision with root package name */
        public static final int f50131f = 6;

        void a(String str);

        void b(int i2, int i4);

        void c(int i2);

        void d(GameConfig gameConfig);
    }

    /* compiled from: StandardEliteRoomFragment.java */
    /* loaded from: classes4.dex */
    public interface n {
        void a(int i2, boolean z3);

        void b(boolean z3);
    }

    static {
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mFlingRunnable");
            f50077o0 = declaredField;
            declaredField.setAccessible(true);
            Method declaredMethod = f50077o0.getType().getDeclaredMethod("endFling", new Class[0]);
            f50078p0 = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (Exception unused) {
            f50078p0 = null;
        }
    }

    private void B0(ArrayList<SimpleWrapperRoom> arrayList) {
        if (arrayList == null) {
            return;
        }
        synchronized (this.f50086c) {
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                SimpleRoom simpleRoom = arrayList.get(i2).simpleRoom;
                int i4 = 0;
                while (true) {
                    if (i4 < this.f50086c.size()) {
                        SimpleWrapperRoom simpleWrapperRoom = this.f50086c.get(i4);
                        if (simpleRoom.getRoomId() == simpleWrapperRoom.simpleRoom.getRoomId()) {
                            arrayList2.add(simpleWrapperRoom);
                            break;
                        }
                        i4++;
                    }
                }
            }
            this.f50086c.removeAll(arrayList2);
        }
    }

    private void D0() {
        this.f50109z = 3;
        this.A = 1;
        this.B = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0() {
        o0();
        x0 x3 = a0.c0(this.f50092i).x(this.f50092i);
        this.D = x3;
        x3.setTitle("正在刷新数据，请稍等...");
        this.D.setCancelable(false);
        this.D.setCanceledOnTouchOutside(false);
        this.D.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        synchronized (this.f50087d) {
            int i2 = this.f50109z;
            if (i2 == 3) {
                Collections.sort(this.f50087d, this.E);
            } else if (i2 == 4) {
                Collections.sort(this.f50087d, this.F);
            } else if (i2 == 5) {
                Collections.sort(this.f50087d, this.G);
            } else if (i2 == 6) {
                Collections.sort(this.f50087d, this.H);
            }
        }
    }

    public static void R0(RecyclerView recyclerView) {
        Method method = f50078p0;
        if (method != null) {
            try {
                method.invoke(f50077o0.get(recyclerView), new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    private void V0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Y0() {
        synchronized (this.f50087d) {
            this.f50087d.clear();
            this.f50087d.addAll(this.f50086c);
            Iterator<SimpleWrapperRoom> it2 = this.f50087d.iterator();
            while (it2.hasNext()) {
                SimpleWrapperRoom next = it2.next();
                if (this.A == 2 && !a1(next.simpleRoom)) {
                    it2.remove();
                    this.f50087d.remove(next);
                }
            }
        }
        return false;
    }

    private AccountBean b0(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private List<SimpleWrapperRoom> g0(List<SimpleRoom> list, boolean z3) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (SimpleRoom simpleRoom : list) {
                SimpleWrapperRoom cloneSimpleRoom = SimpleWrapperRoom.cloneSimpleRoom(simpleRoom);
                boolean z4 = false;
                if (z3) {
                    Iterator<SimpleWrapperRoom> it2 = this.f50086c.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (it2.next().simpleRoom.getRoomId() == simpleRoom.getRoomId()) {
                                z4 = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (!z4) {
                    arrayList.add(cloneSimpleRoom);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(boolean z3, String str) {
        synchronized (this.f50087d) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (z3) {
                this.f50087d.clear();
                this.f50087d.addAll(this.f50086c);
            }
            try {
                long parseLong = Long.parseLong(str);
                Iterator<SimpleWrapperRoom> it2 = this.f50087d.iterator();
                while (it2.hasNext()) {
                    SimpleWrapperRoom next = it2.next();
                    if (next.simpleRoom.getGameId() != parseLong) {
                        it2.remove();
                        this.f50087d.remove(next);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private boolean q0(String str) {
        try {
            this.f50092i.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u0(String str) {
        try {
            DownloadTask B = g1.f.G().B(str);
            return UtilsMy.u1(getContext(), str, B, p.o().n(B.getPlugin_num()), true);
        } catch (Exception unused) {
            return false;
        }
    }

    public void A0(List<SimpleRoom> list, boolean z3) {
        if (this.f50092i == null) {
            y0("---refreshPushListData activity is null ---");
            return;
        }
        synchronized (this.f50087d) {
            long currentTimeMillis = System.currentTimeMillis();
            y0("---refreshPushListData---- start Time :" + currentTimeMillis);
            if (list != null && list.size() >= 0) {
                List<SimpleWrapperRoom> g02 = g0(list, false);
                this.f50086c.clear();
                this.f50087d.clear();
                this.f50086c.addAll(g02);
                this.f50087d.addAll(g02);
            }
            if (z3) {
                Y0();
                this.f50109z = 3;
                N0();
                j0(false, this.B);
                this.I.b(this.f50085b);
                this.f50090g.z1();
            }
            c0();
            this.I.a(this.f50087d.size(), this.f50085b);
            y0("---refreshPushListData---- spend Time :" + (System.currentTimeMillis() - currentTimeMillis));
        }
    }

    @UiThread
    public void C0(int i2) {
        if (this.f50092i == null) {
            return;
        }
        synchronized (this.f50087d) {
            ArrayList<SimpleWrapperRoom> arrayList = new ArrayList<>();
            Iterator<SimpleWrapperRoom> it2 = this.f50087d.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                SimpleWrapperRoom next = it2.next();
                SimpleRoom simpleRoom = next.simpleRoom;
                if (simpleRoom != null && i2 == simpleRoom.getRoomId()) {
                    arrayList.add(next);
                    break;
                }
            }
            if (arrayList.size() > 0) {
                n0(arrayList);
            }
        }
    }

    public void E0(List<SimpleWrapperRoom> list) {
        this.f50086c = list;
    }

    public void F0(List<SimpleWrapperRoom> list) {
        this.f50087d = list;
    }

    public void G0(n nVar) {
        this.I = nVar;
    }

    void H0() {
        com.join.mgps.dialog.g gVar = this.f50103t;
        if (gVar != null) {
            gVar.b();
        }
        if (getActivity() == null) {
            return;
        }
        GameRoomListActivity gameRoomListActivity = (GameRoomListActivity) getActivity();
        if (t0("" + gameRoomListActivity.G2().getGame_list().get(0).getGame_id())) {
            g1.f G = g1.f.G();
            DownloadTask B = G.B("" + gameRoomListActivity.G2().getGame_list().get(0).getGame_id());
            PlugInstallDialog_.I0(getContext()).c(o.o().n(B.getPlugin_num())).a(B).b(2).start();
        } else if (gameRoomListActivity.G2().getGame_list().size() == 1) {
            if (f0(gameRoomListActivity.G2().getGame_list().get(0).getGame_id())) {
                this.f50092i.x2(gameRoomListActivity.G2().getGame_list().get(0).getGame_id(), this.f50085b);
            } else {
                P0(gameRoomListActivity.G2().getGame_list().get(0).getGame_id(), 1013);
            }
        } else {
            com.join.mgps.dialog.g gVar2 = new com.join.mgps.dialog.g(getActivity(), this.C);
            this.f50103t = gVar2;
            gVar2.d(gameRoomListActivity.G2().getGame_list(), this.f50085b);
            this.f50103t.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(SimpleRoom simpleRoom) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.f50092i, "请输入房间密码", 4, false);
        aVar.g(new j(aVar, simpleRoom));
        aVar.h();
    }

    public void J0(int i2) {
        if (this.f50092i == null) {
            return;
        }
        synchronized (this.f50087d) {
            int i4 = 0;
            while (true) {
                if (i4 >= this.f50087d.size()) {
                    break;
                }
                SimpleWrapperRoom simpleWrapperRoom = this.f50087d.get(i4);
                if (simpleWrapperRoom.simpleRoom.getRoomId() == i2) {
                    I0(simpleWrapperRoom.simpleRoom);
                    break;
                }
                i4++;
            }
        }
    }

    public void L0() {
        IntentUtil.getInstance().goLoginBattle(this.f50092i);
    }

    public void M0(g0.e eVar, ConcurrentHashMap<Integer, AreaInfo> concurrentHashMap, AreaInfo areaInfo, int i2) {
        synchronized (this.f50086c) {
            this.f50105v = eVar;
            this.f50106w = concurrentHashMap;
            this.f50107x = areaInfo;
            com.join.mgps.dialog.k kVar = this.f50100q;
            if (kVar != null) {
                kVar.a();
            }
            if (getActivity() == null) {
                return;
            }
            com.join.mgps.dialog.k kVar2 = new com.join.mgps.dialog.k(this.f50092i, this.C, eVar, concurrentHashMap, areaInfo, i2);
            this.f50100q = kVar2;
            kVar2.d(this.A, ((GameRoomListActivity) getActivity()).G2().getGame_list(), this.B, this.f50109z);
            this.f50100q.f();
        }
    }

    void O0() {
        this.f50096m = true;
        this.f50098o.post(this.f50099p);
    }

    public void P0(String str, int i2) {
        Intent intent = new Intent(this.f50092i, NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", str);
        intent.putExtra(NewArenaDownloadActivity_.f36681q0, this.K);
        intent.putExtra(NewArenaDownloadActivity_.f36682r0, this.J);
        startActivityForResult(intent, i2);
    }

    public void Q0() {
        if (!com.join.android.app.common.utils.f.j(this.f50092i)) {
            showToast("当前网络不可用，请检查网络！");
        } else if (!Z0()) {
            L0();
        } else {
            String game_id = ((GameRoomListActivity) getActivity()).G2().getGame_list().get(0).getGame_id();
            if (t0("" + game_id)) {
                g1.f G = g1.f.G();
                DownloadTask B = G.B("" + game_id);
                PlugInstallDialog_.I0(getContext()).c(o.o().n(B.getPlugin_num())).a(B).b(2).start();
            } else if (f0(game_id)) {
                this.f50092i.A2(Long.parseLong(game_id));
            } else {
                P0(game_id, 1014);
            }
        }
    }

    void S0() {
        this.f50096m = false;
        this.f50098o.removeCallbacks(this.f50099p);
    }

    public void T0() {
        if (this.f50092i == null) {
            return;
        }
        this.f50090g.z1();
    }

    public void U0() {
        R0(this.f50090g);
    }

    @UiThread
    public void W0(ArrayList<SimpleRoom> arrayList) {
        if (this.f50092i == null || arrayList == null || arrayList.size() <= 0) {
            return;
        }
        synchronized (this.f50087d) {
            long currentTimeMillis = System.currentTimeMillis();
            y0("---updateItemForDissolve---- start Time :" + currentTimeMillis);
            ArrayList<SimpleWrapperRoom> arrayList2 = new ArrayList<>();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                SimpleRoom simpleRoom = arrayList.get(i2);
                int i4 = 0;
                while (true) {
                    if (i4 < this.f50087d.size()) {
                        SimpleWrapperRoom simpleWrapperRoom = this.f50087d.get(i4);
                        if (simpleRoom.getRoomId() == simpleWrapperRoom.simpleRoom.getRoomId()) {
                            arrayList2.add(simpleWrapperRoom);
                            break;
                        }
                        i4++;
                    }
                }
            }
            if (arrayList2.size() > 0) {
                n0(arrayList2);
            }
            y0("---updateItemForDissolve---- spend   Time :" + (System.currentTimeMillis() - currentTimeMillis));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004f A[Catch: all -> 0x01da, TryCatch #0 {, blocks: (B:10:0x0015, B:12:0x001a, B:17:0x0026, B:19:0x004f, B:20:0x0056, B:22:0x005e, B:24:0x0072, B:28:0x0081, B:29:0x0088, B:25:0x007b, B:30:0x008b, B:34:0x0094, B:35:0x00a2, B:37:0x00a8, B:39:0x00c0, B:41:0x00c9, B:42:0x00cd, B:44:0x00d3, B:45:0x00d8, B:47:0x00e1, B:48:0x00e8, B:50:0x00f0, B:52:0x0104, B:56:0x0113, B:57:0x011a, B:53:0x010d, B:58:0x011d, B:62:0x0127, B:63:0x0134, B:65:0x013a, B:67:0x0150, B:69:0x0154, B:71:0x015c, B:72:0x0162, B:73:0x016b, B:74:0x0171, B:75:0x0174, B:78:0x017b, B:80:0x0181, B:82:0x018b, B:84:0x0193, B:86:0x019e, B:85:0x0199, B:87:0x01a1, B:89:0x01af, B:90:0x01b2, B:91:0x01d8), top: B:97:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d3 A[Catch: all -> 0x01da, TryCatch #0 {, blocks: (B:10:0x0015, B:12:0x001a, B:17:0x0026, B:19:0x004f, B:20:0x0056, B:22:0x005e, B:24:0x0072, B:28:0x0081, B:29:0x0088, B:25:0x007b, B:30:0x008b, B:34:0x0094, B:35:0x00a2, B:37:0x00a8, B:39:0x00c0, B:41:0x00c9, B:42:0x00cd, B:44:0x00d3, B:45:0x00d8, B:47:0x00e1, B:48:0x00e8, B:50:0x00f0, B:52:0x0104, B:56:0x0113, B:57:0x011a, B:53:0x010d, B:58:0x011d, B:62:0x0127, B:63:0x0134, B:65:0x013a, B:67:0x0150, B:69:0x0154, B:71:0x015c, B:72:0x0162, B:73:0x016b, B:74:0x0171, B:75:0x0174, B:78:0x017b, B:80:0x0181, B:82:0x018b, B:84:0x0193, B:86:0x019e, B:85:0x0199, B:87:0x01a1, B:89:0x01af, B:90:0x01b2, B:91:0x01d8), top: B:97:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e1 A[Catch: all -> 0x01da, TryCatch #0 {, blocks: (B:10:0x0015, B:12:0x001a, B:17:0x0026, B:19:0x004f, B:20:0x0056, B:22:0x005e, B:24:0x0072, B:28:0x0081, B:29:0x0088, B:25:0x007b, B:30:0x008b, B:34:0x0094, B:35:0x00a2, B:37:0x00a8, B:39:0x00c0, B:41:0x00c9, B:42:0x00cd, B:44:0x00d3, B:45:0x00d8, B:47:0x00e1, B:48:0x00e8, B:50:0x00f0, B:52:0x0104, B:56:0x0113, B:57:0x011a, B:53:0x010d, B:58:0x011d, B:62:0x0127, B:63:0x0134, B:65:0x013a, B:67:0x0150, B:69:0x0154, B:71:0x015c, B:72:0x0162, B:73:0x016b, B:74:0x0171, B:75:0x0174, B:78:0x017b, B:80:0x0181, B:82:0x018b, B:84:0x0193, B:86:0x019e, B:85:0x0199, B:87:0x01a1, B:89:0x01af, B:90:0x01b2, B:91:0x01d8), top: B:97:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01af A[Catch: all -> 0x01da, TryCatch #0 {, blocks: (B:10:0x0015, B:12:0x001a, B:17:0x0026, B:19:0x004f, B:20:0x0056, B:22:0x005e, B:24:0x0072, B:28:0x0081, B:29:0x0088, B:25:0x007b, B:30:0x008b, B:34:0x0094, B:35:0x00a2, B:37:0x00a8, B:39:0x00c0, B:41:0x00c9, B:42:0x00cd, B:44:0x00d3, B:45:0x00d8, B:47:0x00e1, B:48:0x00e8, B:50:0x00f0, B:52:0x0104, B:56:0x0113, B:57:0x011a, B:53:0x010d, B:58:0x011d, B:62:0x0127, B:63:0x0134, B:65:0x013a, B:67:0x0150, B:69:0x0154, B:71:0x015c, B:72:0x0162, B:73:0x016b, B:74:0x0171, B:75:0x0174, B:78:0x017b, B:80:0x0181, B:82:0x018b, B:84:0x0193, B:86:0x019e, B:85:0x0199, B:87:0x01a1, B:89:0x01af, B:90:0x01b2, B:91:0x01d8), top: B:97:0x0015 }] */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void X0(java.util.ArrayList<com.papa91.battle.protocol.SimpleRoom> r19) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.roomlist.c.X0(java.util.ArrayList):void");
    }

    public boolean Z0() {
        return (b0(this.f50092i) == null || AccountUtil_.getInstance_(this.f50092i).isTourist()) ? false : true;
    }

    boolean a1(SimpleRoom simpleRoom) {
        if (simpleRoom != null) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            for (int i5 = 0; i5 < simpleRoom.getPlayerListCount(); i5++) {
                RoomPosition playerList = simpleRoom.getPlayerList(i5);
                if (playerList.getUid() == 0) {
                    i4++;
                } else if (playerList.getPlatform() == Platform.MOBILE) {
                    i2++;
                    if (playerList.getUid() == simpleRoom.getLeaderId()) {
                        z3 = true;
                    }
                }
            }
            return !simpleRoom.getAllowPCJoin() && (i2 + i4 == simpleRoom.getPlayerListCount()) && z3;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50093j = new u1(this.f50092i, this.f50088e);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.f50092i, 2);
        this.f50094k = gridLayoutManager;
        gridLayoutManager.setSpanSizeLookup(new e());
        this.f50090g.setLayoutManager(this.f50094k);
        this.f50090g.setAdapter(this.f50093j);
        this.f50093j.f(new f());
        this.f50090g.setPreLoadCount(10);
        this.f50090g.setPullRefreshEnabled(true);
        this.f50090g.setLoadingMoreEnabled(false);
        this.f50090g.setLoadingListener(new g());
        this.f50090g.addOnScrollListener(new h());
        getResources().getDimensionPixelSize(R.dimen.wdp32);
        this.f50090g.addItemDecoration(new i(getResources().getDimensionPixelSize(R.dimen.wdp14) / 2, getResources().getDimensionPixelSize(R.dimen.wdp14) / 2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        if (this.f50089f == null) {
            return;
        }
        if (this.f50088e != null && this.f50087d.size() == 0) {
            this.f50089f.setVisibility(0);
        } else {
            this.f50089f.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        this.f50098o.removeCallbacks(this.f50099p);
        this.f50098o.post(this.f50099p);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004f A[Catch: all -> 0x0099, TryCatch #0 {, blocks: (B:8:0x000d, B:10:0x0013, B:15:0x001f, B:17:0x0039, B:19:0x003f, B:21:0x004f, B:22:0x0069, B:24:0x006e, B:25:0x0071, B:26:0x0097), top: B:31:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e A[Catch: all -> 0x0099, TryCatch #0 {, blocks: (B:8:0x000d, B:10:0x0013, B:15:0x001f, B:17:0x0039, B:19:0x003f, B:21:0x004f, B:22:0x0069, B:24:0x006e, B:25:0x0071, B:26:0x0097), top: B:31:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e0(java.util.List<com.papa91.battle.protocol.SimpleRoom> r9, boolean r10) {
        /*
            r8 = this;
            com.join.mgps.activity.arena.GameRoomListActivity_ r0 = r8.f50092i
            if (r0 != 0) goto La
            java.lang.String r9 = "---addPushListData activity is null ---"
            r8.y0(r9)
            return
        La:
            java.util.List<app.mgsim.arena.SimpleWrapperRoom> r0 = r8.f50087d
            monitor-enter(r0)
            java.util.List<app.mgsim.arena.SimpleWrapperRoom> r1 = r8.f50088e     // Catch: java.lang.Throwable -> L99
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1e
            java.util.List<app.mgsim.arena.SimpleWrapperRoom> r1 = r8.f50087d     // Catch: java.lang.Throwable -> L99
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L99
            if (r1 != 0) goto L1c
            goto L1e
        L1c:
            r1 = 0
            goto L1f
        L1e:
            r1 = 1
        L1f:
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L99
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L99
            r6.<init>()     // Catch: java.lang.Throwable -> L99
            java.lang.String r7 = "---addPushListData---- start Time :"
            r6.append(r7)     // Catch: java.lang.Throwable -> L99
            r6.append(r4)     // Catch: java.lang.Throwable -> L99
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L99
            r8.y0(r6)     // Catch: java.lang.Throwable -> L99
            if (r9 == 0) goto L4d
            int r6 = r9.size()     // Catch: java.lang.Throwable -> L99
            if (r6 <= 0) goto L4d
            java.util.List r9 = r8.g0(r9, r2)     // Catch: java.lang.Throwable -> L99
            java.util.List<app.mgsim.arena.SimpleWrapperRoom> r2 = r8.f50086c     // Catch: java.lang.Throwable -> L99
            r2.addAll(r9)     // Catch: java.lang.Throwable -> L99
            java.util.List<app.mgsim.arena.SimpleWrapperRoom> r2 = r8.f50087d     // Catch: java.lang.Throwable -> L99
            r2.addAll(r9)     // Catch: java.lang.Throwable -> L99
        L4d:
            if (r10 == 0) goto L69
            r8.Y0()     // Catch: java.lang.Throwable -> L99
            r9 = 3
            r8.f50109z = r9     // Catch: java.lang.Throwable -> L99
            r8.N0()     // Catch: java.lang.Throwable -> L99
            java.lang.String r9 = r8.B     // Catch: java.lang.Throwable -> L99
            r8.j0(r3, r9)     // Catch: java.lang.Throwable -> L99
            com.join.mgps.fragment.roomlist.c$n r9 = r8.I     // Catch: java.lang.Throwable -> L99
            boolean r10 = r8.f50085b     // Catch: java.lang.Throwable -> L99
            r9.b(r10)     // Catch: java.lang.Throwable -> L99
            com.join.android.app.component.xrecyclerview.XRecyclerView r9 = r8.f50090g     // Catch: java.lang.Throwable -> L99
            r9.z1()     // Catch: java.lang.Throwable -> L99
        L69:
            r8.c0()     // Catch: java.lang.Throwable -> L99
            if (r1 == 0) goto L71
            r8.d0()     // Catch: java.lang.Throwable -> L99
        L71:
            com.join.mgps.fragment.roomlist.c$n r9 = r8.I     // Catch: java.lang.Throwable -> L99
            java.util.List<app.mgsim.arena.SimpleWrapperRoom> r10 = r8.f50087d     // Catch: java.lang.Throwable -> L99
            int r10 = r10.size()     // Catch: java.lang.Throwable -> L99
            boolean r1 = r8.f50085b     // Catch: java.lang.Throwable -> L99
            r9.a(r10, r1)     // Catch: java.lang.Throwable -> L99
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L99
            r9.<init>()     // Catch: java.lang.Throwable -> L99
            java.lang.String r10 = "---addPushListData---- spend Time :"
            r9.append(r10)     // Catch: java.lang.Throwable -> L99
            long r1 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L99
            long r1 = r1 - r4
            r9.append(r1)     // Catch: java.lang.Throwable -> L99
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L99
            r8.y0(r9)     // Catch: java.lang.Throwable -> L99
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L99
            return
        L99:
            r9 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L99
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.roomlist.c.e0(java.util.List, boolean):void");
    }

    public boolean f0(String str) {
        this.J = false;
        this.K = false;
        DownloadTask B = g1.f.G().B(str);
        if (B != null && B.getStatus() == 5) {
            this.J = true;
            EMUApkTable n4 = o.o().n(B.getPlugin_num());
            if (n4 != null) {
                if (com.join.android.app.common.utils.h.t(this.f50092i, n4, false, new String[0]) && !UtilsMy.q0(this.f50092i, n4)) {
                    this.K = true;
                } else {
                    this.K = false;
                }
            } else {
                this.K = true;
            }
        } else {
            this.J = false;
        }
        return this.K && this.J;
    }

    public void h0() {
        if (this.f50101r > 0 && System.currentTimeMillis() - this.f50101r <= 1000) {
            y0("fast join room so fast ,waiting a moment!");
            return;
        }
        this.f50101r = System.currentTimeMillis();
        if (!com.join.android.app.common.utils.f.j(this.f50092i)) {
            showToast("当前网络不可用，请检查网络！");
        } else if (!Z0()) {
            L0();
        } else {
            H0();
        }
    }

    void i0(boolean z3) {
        if (z3) {
            return;
        }
        this.f50091h.C();
    }

    public List<SimpleWrapperRoom> k0() {
        return this.f50086c;
    }

    public List<SimpleWrapperRoom> l0() {
        return this.f50087d;
    }

    public int m0() {
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n0(ArrayList<SimpleWrapperRoom> arrayList) {
        if (arrayList == null) {
            return;
        }
        synchronized (this.f50087d) {
            if (arrayList.size() > 0) {
                this.f50087d.removeAll(arrayList);
                B0(arrayList);
                if (this.f50087d.size() <= 0) {
                    D0();
                }
                this.I.a(this.f50087d.size(), this.f50085b);
            }
        }
    }

    void o0() {
        Dialog dialog = this.D;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.D.dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i2, int i4, Intent intent) {
        SimpleRoom simpleRoom;
        super.onActivityResult(i2, i4, intent);
        if (i4 == -1) {
            if (i2 == 1012) {
                if (this.f50092i == null || (simpleRoom = this.f50104u) == null) {
                    return;
                }
                if (simpleRoom.getHasJoinPassword()) {
                    I0(this.f50104u);
                } else {
                    this.f50092i.b3(this.f50104u.getRoomId(), "", this.f50085b);
                }
            } else if (i2 == 1013) {
                this.f50092i.x2(intent.getStringExtra("gameId"), this.f50085b);
            } else if (i2 == 1014) {
                this.f50092i.A2(Long.parseLong(intent.getStringExtra("gameId")));
            } else if (i2 == 1015) {
                intent.getStringExtra("gameId");
                this.f50092i.B2();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        y0("---onAttach---");
        this.f50092i = (GameRoomListActivity_) context;
        O0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        y0("---onCreate---");
        Bundle arguments = getArguments();
        this.f50085b = arguments.getBoolean("isElite");
        this.B = arguments.getString("filterGameId", "");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        S0();
        V0();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f50092i = null;
    }

    void p0() {
        if (getActivity() == null) {
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) getActivity().findViewById(16908290).findViewById(R.id.mPtrFrame);
        this.f50091h = ptrClassicFrameLayout;
        ptrClassicFrameLayout.C();
    }

    public boolean r0() {
        boolean z3 = true;
        if (this.f50092i == null) {
            return true;
        }
        synchronized (this.f50087d) {
            if (this.f50087d.size() > 0) {
                z3 = false;
            }
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        try {
            if (requireContext() == null) {
                return;
            }
            i2.a(requireContext()).b(str);
        } catch (Exception e4) {
            Log.d(f50083u0, str);
            e4.printStackTrace();
        }
    }

    public boolean t0(String str) {
        DownloadTask B = g1.f.G().B(str);
        if (B == null || B.getDown_type() == 2) {
            EMUApkTable n4 = B != null ? o.o().n(B.getPlugin_num()) : null;
            if (B == null || B.getStatus() != 11) {
                return n4 != null && com.join.android.app.common.utils.h.i(n4);
            }
            return true;
        }
        return false;
    }

    public void v0(String str) {
        m mVar = this.C;
        if (mVar != null) {
            mVar.a(str);
        }
    }

    void w0(int i2) {
        if (this.f50102s > 0 && System.currentTimeMillis() - this.f50102s <= 1000) {
            y0("join room so fast ,waiting a moment!");
            return;
        }
        this.f50102s = System.currentTimeMillis();
        if (!com.join.android.app.common.utils.f.j(this.f50092i)) {
            showToast("当前网络不可用，请检查网络！");
            return;
        }
        synchronized (this.f50087d) {
            if (this.f50087d.size() <= 0) {
                return;
            }
            if (i2 >= this.f50087d.size()) {
                return;
            }
            SimpleRoom simpleRoom = this.f50087d.get(i2).simpleRoom;
            this.f50104u = simpleRoom;
            if (!simpleRoom.getAllowPCJoin() && com.join.mgps.socket.fight.arena.c.o(this.f50092i)) {
                showToast("禁止PC用户加入!");
            } else if (!this.f50104u.getAllowSpectatorJoin() && this.f50104u.getSeatsNumber() == this.f50104u.getSitDownloadNumber()) {
                showToast("房间已满，禁止观赛！");
            } else if (!Z0()) {
                L0();
            } else {
                if (t0("" + this.f50104u.getGameId())) {
                    g1.f G = g1.f.G();
                    DownloadTask B = G.B("" + this.f50104u.getGameId());
                    PlugInstallDialog_.I0(getContext()).c(o.o().n(B.getPlugin_num())).a(B).b(2).start();
                    return;
                }
                if (!f0("" + this.f50104u.getGameId())) {
                    P0("" + this.f50104u.getGameId(), 1012);
                } else {
                    if (!u0(this.f50104u.getGameId() + "")) {
                        if (this.f50104u.getHasJoinPassword()) {
                            I0(this.f50104u);
                        } else {
                            this.f50092i.b3(this.f50104u.getRoomId(), "", this.f50085b);
                        }
                    }
                }
            }
        }
    }

    public void x0(String str) {
        if (str == null || str.equals(this.f50108y)) {
            return;
        }
        this.f50108y = str;
        this.f50086c.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void y0(String str) {
        t0.b(f50083u0, str);
    }

    public void z0() {
        this.f50090g.scrollToPosition(0);
        this.f50091h.g(true);
    }
}
