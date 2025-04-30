package com.join.mgps.fragment;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.adapter.GameTopicAdapter;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.GameTopicBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: GameTopicFragment.java */
@EFragment(R.layout.fragment_game_topic)
/* loaded from: classes4.dex */
public class z2 extends com.join.mgps.basefragment.a implements AbsListView.OnScrollListener {

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.rpc.d f50825b;

    /* renamed from: c  reason: collision with root package name */
    private Context f50826c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f50827d;

    /* renamed from: e  reason: collision with root package name */
    GameTopicAdapter f50828e;

    /* renamed from: f  reason: collision with root package name */
    public int f50829f;

    /* renamed from: g  reason: collision with root package name */
    public int f50830g;

    /* renamed from: h  reason: collision with root package name */
    volatile List<GameTopicAdapter.g> f50831h;

    /* renamed from: i  reason: collision with root package name */
    volatile List<GameTopicBean> f50832i;

    /* renamed from: j  reason: collision with root package name */
    Handler f50833j = new a();

    /* compiled from: GameTopicFragment.java */
    /* loaded from: classes4.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            XListView2 xListView2;
            super.handleMessage(message);
            if (message.what == 0 && (xListView2 = z2.this.f50827d) != null) {
                xListView2.u();
                z2.this.f50827d.t();
                z2 z2Var = z2.this;
                if (z2Var.f50830g == -1) {
                    z2Var.f50827d.setNoMore();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameTopicFragment.java */
    /* loaded from: classes4.dex */
    public class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (z2.this.Z()) {
                z2.this.d0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameTopicFragment.java */
    /* loaded from: classes4.dex */
    public class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (z2.this.Z()) {
                z2.this.e0();
            }
        }
    }

    private void X() {
        this.f50827d.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f50827d.setPullLoadEnable(new b());
        this.f50827d.setPullRefreshEnable(new c());
        this.f50831h = new ArrayList();
        GameTopicAdapter gameTopicAdapter = new GameTopicAdapter(this.f50826c);
        this.f50828e = gameTopicAdapter;
        this.f50827d.setAdapter((ListAdapter) gameTopicAdapter);
        this.f50827d.setOnScrollListener(this);
        W();
    }

    private void c0(int i2, List<GameTopicBean> list) {
        if (this.f50832i == null) {
            this.f50832i = new ArrayList();
        }
        if (list != null && list.size() != 0) {
            if (i2 == 1) {
                this.f50832i.clear();
                this.f50829f = 1;
            }
            this.f50829f = i2;
            this.f50832i.addAll(list);
            Q();
        }
        h0();
        b0();
        a0();
    }

    private void f0(List<GameTopicBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            g0(list.get(i2));
        }
    }

    private void g0(GameTopicBean gameTopicBean) {
        this.f50831h.add(new GameTopicAdapter.g(GameTopicAdapter.ViewType.POST_HEADER, new GameTopicAdapter.g.b(gameTopicBean.getId(), gameTopicBean.getCollection_id(), gameTopicBean.getNick_name(), gameTopicBean.getHead_portrait(), gameTopicBean.getUid())));
        this.f50831h.add(new GameTopicAdapter.g(GameTopicAdapter.ViewType.POST_VIDEO_THUMBNAIL, new GameTopicAdapter.g.f(gameTopicBean.getId(), gameTopicBean.getCollection_id(), gameTopicBean.getPic_cover())));
        this.f50831h.add(new GameTopicAdapter.g(GameTopicAdapter.ViewType.POST_SUBJECT, new GameTopicAdapter.g.e(gameTopicBean.getId(), gameTopicBean.getCollection_id(), gameTopicBean.getTitle())));
        this.f50831h.add(new GameTopicAdapter.g(GameTopicAdapter.ViewType.POST_FOOTER, new GameTopicAdapter.g.a(gameTopicBean.getId(), gameTopicBean.getCollection_id(), gameTopicBean.getDescribe(), gameTopicBean.getView(), gameTopicBean.getComment_count())));
    }

    @Override // com.join.mgps.basefragment.a
    protected int N() {
        return R.layout.fragment_game_topic;
    }

    @Override // com.join.mgps.basefragment.a
    protected int O() {
        return R.id.fragment_game_topic;
    }

    void W() {
        View view = new View(this.f50826c);
        view.setLayoutParams(new AbsListView.LayoutParams(2, com.join.mgps.Util.b0.a(this.f50826c, 14.0f)));
        this.f50827d.addFooterView(view);
    }

    boolean Z() {
        if (com.join.android.app.common.utils.f.j(this.f50826c)) {
            return true;
        }
        showToast(getString(R.string.net_connect_failed));
        h0();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0() {
        GameTopicAdapter gameTopicAdapter = this.f50828e;
        if (gameTopicAdapter == null) {
            return;
        }
        gameTopicAdapter.l(this.f50831h);
        this.f50828e.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50825b = com.join.mgps.rpc.impl.c.P1();
        this.f50826c = getContext();
        X();
        loadData();
    }

    synchronized void b0() {
        if (this.f50831h == null) {
            this.f50831h = new ArrayList();
        }
        this.f50831h.clear();
        f0(this.f50832i);
    }

    void d0() {
        if (this.f50830g == -1) {
            h0();
        } else {
            loadData(this.f50829f + 1);
        }
    }

    void e0() {
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        this.f50833j.sendEmptyMessageDelayed(0, 1500L);
    }

    @Override // com.join.mgps.basefragment.a
    protected void loadData() {
        loadData(1);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f50826c).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0063, code lost:
        if (r5.f50830g != (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0071, code lost:
        if (r5.f50830g == (-1)) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0073, code lost:
        r5.f50830g = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0075, code lost:
        h0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadData(int r6) {
        /*
            r5 = this;
            android.content.Context r0 = r5.f50826c
            android.content.Context r0 = r0.getApplicationContext()
            boolean r0 = com.join.android.app.common.utils.f.j(r0)
            r1 = 1
            if (r0 == 0) goto L83
            r0 = 0
            r2 = -1
            int r3 = r5.f50830g     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r3 != r6) goto L1b
            if (r3 == r2) goto L17
            r5.f50830g = r0
        L17:
            r5.h0()
            return
        L1b:
            r5.f50830g = r6     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            com.join.mgps.rpc.d r3 = r5.f50825b     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            android.content.Context r4 = r5.f50826c     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            com.join.mgps.Util.RequestBeanUtil r4 = com.join.mgps.Util.RequestBeanUtil.getInstance(r4)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            com.join.mgps.dto.CommonRequestBean r4 = r4.getGameTopicRequestBean(r6)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            com.join.mgps.dto.ResultMainBean r3 = r3.y(r4)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r3 == 0) goto L59
            int r4 = r3.getFlag()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r4 != r1) goto L59
            com.join.mgps.dto.ResultMessageBean r4 = r3.getMessages()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r4 == 0) goto L59
            com.join.mgps.dto.ResultMessageBean r3 = r3.getMessages()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.Object r3 = r3.getData()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r3 == 0) goto L51
            int r4 = r3.size()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r4 <= 0) goto L51
            r5.c0(r6, r3)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L61
        L51:
            if (r6 != r1) goto L56
            r5.V()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
        L56:
            r5.f50830g = r2     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L61
        L59:
            if (r6 != r1) goto L5f
            r5.S()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L61
        L5f:
            r5.f50830g = r2     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
        L61:
            int r6 = r5.f50830g
            if (r6 == r2) goto L75
            goto L73
        L66:
            r6 = move-exception
            goto L79
        L68:
            r6 = move-exception
            r5.S()     // Catch: java.lang.Throwable -> L66
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L66
            int r6 = r5.f50830g
            if (r6 == r2) goto L75
        L73:
            r5.f50830g = r0
        L75:
            r5.h0()
            goto L8d
        L79:
            int r1 = r5.f50830g
            if (r1 == r2) goto L7f
            r5.f50830g = r0
        L7f:
            r5.h0()
            throw r6
        L83:
            int r6 = r5.f50829f
            if (r6 >= r1) goto L8a
            r5.S()
        L8a:
            r5.h0()
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.z2.loadData(int):void");
    }
}
