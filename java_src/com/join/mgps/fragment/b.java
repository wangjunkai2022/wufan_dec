package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.adapter.t1;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.ResultResMainBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: ArenaGameListFragment.java */
@EFragment(R.layout.fragment_gamelist)
/* loaded from: classes4.dex */
public class b extends com.join.mgps.basefragment.a {

    /* renamed from: l  reason: collision with root package name */
    private static final int f48335l = 10;

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.rpc.k f48336b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XRecyclerView f48337c;

    /* renamed from: d  reason: collision with root package name */
    private int f48338d;

    /* renamed from: e  reason: collision with root package name */
    private int f48339e;

    /* renamed from: f  reason: collision with root package name */
    private int f48340f;

    /* renamed from: g  reason: collision with root package name */
    private com.join.mgps.adapter.t1 f48341g;

    /* renamed from: i  reason: collision with root package name */
    private Activity f48343i;

    /* renamed from: j  reason: collision with root package name */
    private int f48344j;

    /* renamed from: h  reason: collision with root package name */
    private List<GameInfoBean> f48342h = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private boolean f48345k = false;

    /* compiled from: ArenaGameListFragment.java */
    /* loaded from: classes4.dex */
    class a implements t1.e {
        a() {
        }

        @Override // com.join.mgps.adapter.t1.e
        public void a(int i2) {
            if (b.this.f48344j != 2) {
                GameRoomListActivity_.v4(b.this.f48343i).c((GameInfoBean) b.this.f48342h.get(i2)).a(true).b(true).start();
                return;
            }
            Intent intent = new Intent();
            intent.putExtra("mGameInfo", (GameInfoBean) b.this.f48342h.get(i2));
            b.this.getActivity().setResult(10001, intent);
            b.this.getActivity().finish();
        }
    }

    /* compiled from: ArenaGameListFragment.java */
    /* renamed from: com.join.mgps.fragment.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0204b implements XRecyclerView.f {
        C0204b() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (b.this.f48345k) {
                if (!com.join.android.app.common.utils.f.j(b.this.f48343i)) {
                    b.this.f48337c.y1();
                    b.this.c0();
                    return;
                }
                b.this.loadData();
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int N() {
        return R.layout.fragment_gamelist;
    }

    @Override // com.join.mgps.basefragment.a
    protected int O() {
        return R.id.fragment_gamelist;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48336b = com.join.mgps.rpc.impl.k.n0();
        if (!this.f48345k) {
            this.f48337c.setNoMore();
        }
        this.f48341g = new com.join.mgps.adapter.t1(this.f48343i, false);
        this.f48337c.setPreLoadCount(5);
        this.f48337c.setLayoutManager(new GridLayoutManager(this.f48343i, ((double) com.join.android.app.common.utils.j.n(getActivity()).j(this.f48343i)) >= 1.9d ? 3 : 2));
        this.f48337c.setAdapter(this.f48341g);
        this.f48341g.f(new a());
        this.f48337c.setLoadingMoreEnabled(true);
        this.f48337c.setPullRefreshEnabled(false);
        this.f48337c.setLoadingListener(new C0204b());
        if (this.f48340f == 2) {
            boolean z3 = this.f48342h.size() >= 10;
            this.f48345k = z3;
            if (!z3) {
                this.f48337c.setNoMore();
            }
        } else {
            U();
            loadData();
        }
        this.f44771a.setLoadingLayoutBGColor(0);
        this.f48341g.notifyDataSetChanged();
    }

    public void b0(int i2) {
        this.f48339e = i2;
        this.f48340f = 1;
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        Activity activity = this.f48343i;
        if (activity != null) {
            com.join.mgps.Util.i2.a(activity).b(getString(R.string.net_connect_failed));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0(List<GameInfoBean> list) {
        if (this.f48337c.getVisibility() == 8) {
            this.f48337c.setVisibility(0);
        }
        if (list != null && list.size() >= 0) {
            if (this.f48340f == 2) {
                this.f48342h.clear();
            }
            this.f48342h.addAll(list);
        }
        this.f48341g.e(this.f48342h);
        this.f48337c.y1();
        this.f48337c.z1();
        if (!this.f48345k) {
            this.f48337c.setNoMore();
            if (this.f48342h.size() <= 0) {
                this.f48337c.setVisibility(8);
                return;
            }
        }
        this.f48341g.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.basefragment.a
    @Background
    public void loadData() {
        if (com.join.android.app.common.utils.f.j(this.f48343i)) {
            try {
                ResultResMainBean<NewArenaGameListBean> w3 = this.f48336b.w(this.f48339e, this.f48338d, this.f48340f);
                Activity activity = this.f48343i;
                if (activity == null || activity.isFinishing()) {
                    return;
                }
                if (Build.VERSION.SDK_INT < 17 || !this.f48343i.isDestroyed()) {
                    if (w3 != null && w3.getData() != null) {
                        List<GameInfoBean> game_list = w3.getData().getGame_list();
                        if (game_list != null && game_list.size() > 0) {
                            this.f48345k = game_list.size() >= 10;
                        } else {
                            this.f48345k = false;
                        }
                        if (this.f48340f <= 1) {
                            Q();
                        }
                        if (this.f48345k) {
                            this.f48340f++;
                        }
                        d0(game_list);
                        return;
                    }
                    if (this.f48340f <= 1) {
                        showLodingFailed();
                    }
                }
            } catch (Exception unused) {
                if (this.f48340f <= 1) {
                    showLodingFailed();
                }
            }
        } else if (this.f48340f <= 1) {
            showLodingFailed();
            c0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f48343i = (Activity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.f48338d = arguments.getInt("game_type");
        this.f48339e = arguments.getInt("room_type");
        this.f48344j = arguments.getInt("from");
        int i2 = arguments.getInt("pn");
        this.f48340f = i2;
        if (i2 == 2) {
            ArrayList arrayList = (ArrayList) arguments.getSerializable("datas");
            if (arrayList != null && arrayList.size() > 0) {
                this.f48342h.addAll(arrayList);
            } else {
                this.f48340f = 1;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f48343i = null;
        this.f48342h.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.f48337c.setVisibility(8);
        List<GameInfoBean> list = this.f48342h;
        if (list == null || list.size() == 0) {
            S();
        }
    }
}
