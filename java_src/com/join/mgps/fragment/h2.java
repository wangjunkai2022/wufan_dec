package com.join.mgps.fragment;

import android.content.Context;
import android.view.View;
import android.widget.ListAdapter;
import androidx.constraintlayout.widget.Group;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.adapter.r0;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: FriendMsgRequestFragment.java */
@EFragment(R.layout.fragment_friend_msg_req)
/* loaded from: classes4.dex */
public class h2 extends d implements com.join.mgps.customview.i, r0.a {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    PtrClassicFrameLayout f48808a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView f48809b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Group f48810c;

    /* renamed from: d  reason: collision with root package name */
    int f48811d = 1;

    /* renamed from: e  reason: collision with root package name */
    int f48812e = 0;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.i f48813f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.adapter.r0 f48814g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FriendMsgRequestFragment.java */
    /* loaded from: classes4.dex */
    public class a implements com.join.mgps.ptr.b {
        a() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            return com.join.mgps.ptr.a.d(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            h2.this.V();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        XListView xListView = this.f48809b;
        if (xListView == null) {
            return;
        }
        xListView.q();
        if (this.f48812e == -1) {
            this.f48809b.setNoMore();
        }
    }

    /* renamed from: O */
    public void Q() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f48808a;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.f();
        }
    }

    public boolean P() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f48808a;
        if (ptrClassicFrameLayout != null) {
            return ptrClassicFrameLayout.q();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
        if (r6.f48812e != (-1)) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
        r6.f48811d = r7;
        r6.f48812e = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0084, code lost:
        if (r6.f48812e == (-1)) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0086, code lost:
        r6.f48811d = r7;
        r6.f48812e = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
        Z();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void S(int r7) {
        /*
            r6 = this;
            android.content.Context r0 = r6.getContext()
            r1 = 0
            r2 = -1
            int r3 = r6.f48812e     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r3 == r7) goto L72
            if (r3 != r2) goto Ld
            goto L72
        Ld:
            boolean r3 = com.ta.utdid2.android.utils.f.f(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r3 == 0) goto L63
            com.join.mgps.Util.AccountUtil_ r3 = com.join.mgps.Util.AccountUtil_.getInstance_(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.String r3 = r3.getUid()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            com.join.mgps.Util.AccountUtil_ r0 = com.join.mgps.Util.AccountUtil_.getInstance_(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.String r0 = r0.getToken()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            com.join.mgps.rpc.i r4 = r6.f48813f     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r5 = 10
            com.join.mgps.dto.ResponseModel r0 = r4.e(r3, r0, r5, r7)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r0 == 0) goto L51
            int r3 = r0.getError()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r3 != 0) goto L51
            java.lang.Object r3 = r0.getData()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r6.b0(r3, r7)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.Object r3 = r0.getData()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r3 == 0) goto L4e
            java.lang.Object r0 = r0.getData()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r0 != 0) goto L6d
        L4e:
            r6.f48812e = r2     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            goto L6d
        L51:
            if (r0 == 0) goto L58
            java.lang.String r0 = r0.getMsg()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            goto L5f
        L58:
            r0 = 2131820934(0x7f110186, float:1.9274597E38)
            java.lang.String r0 = r6.getString(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
        L5f:
            r6.T(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            goto L6d
        L63:
            r0 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r0 = r6.getString(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r6.T(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
        L6d:
            int r0 = r6.f48812e
            if (r0 == r2) goto L8a
            goto L86
        L72:
            if (r3 == r2) goto L78
            r6.f48811d = r7
            r6.f48812e = r1
        L78:
            r6.Z()
            return
        L7c:
            r0 = move-exception
            goto L8e
        L7e:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L7c
            int r0 = r6.f48812e
            if (r0 == r2) goto L8a
        L86:
            r6.f48811d = r7
            r6.f48812e = r1
        L8a:
            r6.Z()
            return
        L8e:
            int r3 = r6.f48812e
            if (r3 == r2) goto L96
            r6.f48811d = r7
            r6.f48812e = r1
        L96:
            r6.Z()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.h2.S(int):void");
    }

    void U() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f48808a;
        if (ptrClassicFrameLayout == null) {
            return;
        }
        ptrClassicFrameLayout.j(true);
        this.f48808a.setPtrHandler(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V() {
        this.f48809b.setPullLoadEnable(this);
        this.f48812e = 0;
        this.f48811d = 1;
        S(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W(int i2, String str) {
        Context context = getContext();
        try {
            if (com.ta.utdid2.android.utils.f.f(context)) {
                String uid = AccountUtil_.getInstance_(context).getUid();
                String token = AccountUtil_.getInstance_(context).getToken();
                HashMap hashMap = new HashMap();
                hashMap.put("uid", uid);
                hashMap.put("token", token);
                hashMap.put("id", Integer.valueOf(i2));
                hashMap.put("friendRequestType", str);
                ResponseModel n4 = this.f48813f.n(hashMap);
                if (n4 != null && n4.getError() == 0) {
                    X(i2);
                    com.join.mgps.event.m mVar = new com.join.mgps.event.m(4);
                    mVar.k(str.equals("ACCEPT"));
                    org.greenrobot.eventbus.c.f().o(mVar);
                    return;
                }
                T(n4 != null ? n4.getMsg() : getString(R.string.request_failure));
                return;
            }
            T(getString(R.string.net_connect_failed));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X(int i2) {
        com.join.mgps.adapter.r0 r0Var = this.f48814g;
        if (r0Var == null) {
            return;
        }
        Iterator<FriendBean> it2 = r0Var.e().iterator();
        while (it2.hasNext()) {
            if (i2 == it2.next().getId()) {
                it2.remove();
            }
        }
        this.f48814g.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        a0();
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.f2
            @Override // java.lang.Runnable
            public final void run() {
                h2.this.R();
            }
        }, 200L);
    }

    public void a0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f48808a;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48813f = com.join.mgps.rpc.impl.g.p();
        U();
        this.f48809b.setPullLoadEnable(this);
        com.join.mgps.adapter.r0 r0Var = new com.join.mgps.adapter.r0(getContext());
        this.f48814g = r0Var;
        r0Var.k(this);
        this.f48809b.setAdapter((ListAdapter) this.f48814g);
        Q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(List<FriendBean> list, int i2) {
        if (i2 == 1) {
            this.f48814g.e().clear();
        }
        if (list != null && list.size() != 0) {
            this.f48814g.e().addAll(list);
        }
        this.f48814g.notifyDataSetChanged();
        if (this.f48810c != null) {
            if (this.f48814g.e().size() == 0) {
                this.f48810c.setVisibility(0);
            } else {
                this.f48810c.setVisibility(8);
            }
        }
    }

    @Override // com.join.mgps.adapter.r0.a
    public void k(FriendBean friendBean) {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).g0(friendBean.getUid() + "");
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.g2
            @Override // java.lang.Runnable
            public final void run() {
                h2.this.Q();
            }
        }, 200L);
    }

    @Override // com.join.mgps.customview.i
    public void onLoadMore() {
        S(this.f48811d + 1);
    }

    @Override // com.join.mgps.adapter.r0.a
    public void r(FriendBean friendBean) {
        Ext ext = new Ext();
        ext.setPosition("1");
        com.papa.sim.statistic.p.l(getContext()).K1(Event.Friendsapplication, ext);
        W(friendBean.getId(), "REJECT");
    }

    @Override // com.join.mgps.adapter.r0.a
    public void w(FriendBean friendBean) {
        Ext ext = new Ext();
        ext.setPosition("0");
        com.papa.sim.statistic.p.l(getContext()).K1(Event.Friendsapplication, ext);
        W(friendBean.getId(), "ACCEPT");
    }
}
