package com.join.mgps.fragment;

import android.content.Context;
import android.view.View;
import android.widget.ListAdapter;
import androidx.constraintlayout.widget.Group;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.adapter.n0;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: FriendMsgLikeFragment.java */
@EFragment(R.layout.fragment_friend_msg_like)
/* loaded from: classes4.dex */
public class d2 extends d implements com.join.mgps.customview.i, n0.a {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    PtrClassicFrameLayout f48544a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView f48545b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Group f48546c;

    /* renamed from: d  reason: collision with root package name */
    int f48547d = 1;

    /* renamed from: e  reason: collision with root package name */
    int f48548e = 0;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.i f48549f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.adapter.n0 f48550g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FriendMsgLikeFragment.java */
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
            d2.this.W();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        this.f48545b.q();
        if (this.f48548e == -1) {
            this.f48545b.setNoMore();
        }
    }

    /* renamed from: O */
    public void Q() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f48544a;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.f();
        }
    }

    public boolean P() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f48544a;
        if (ptrClassicFrameLayout != null) {
            return ptrClassicFrameLayout.q();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S() {
        Context context = getContext();
        try {
            if (com.ta.utdid2.android.utils.f.f(context)) {
                String uid = AccountUtil_.getInstance_(context).getUid();
                String token = AccountUtil_.getInstance_(context).getToken();
                HashMap hashMap = new HashMap();
                hashMap.put("uid", uid);
                hashMap.put("token", token);
                ResponseModel h4 = this.f48549f.h(hashMap);
                if (h4 == null || h4.getError() != 0) {
                    T(h4 != null ? h4.getMsg() : getString(R.string.loading_failed));
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
        if (r6.f48548e != (-1)) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
        r6.f48547d = r7;
        r6.f48548e = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0084, code lost:
        if (r6.f48548e == (-1)) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0086, code lost:
        r6.f48547d = r7;
        r6.f48548e = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
        X();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void U(int r7) {
        /*
            r6 = this;
            android.content.Context r0 = r6.getContext()
            r1 = 0
            r2 = -1
            int r3 = r6.f48548e     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
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
            com.join.mgps.rpc.i r4 = r6.f48549f     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r5 = 10
            com.join.mgps.dto.ResponseModel r0 = r4.l(r3, r0, r5, r7)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r0 == 0) goto L51
            int r3 = r0.getError()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r3 != 0) goto L51
            java.lang.Object r3 = r0.getData()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r6.a0(r3, r7)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.Object r3 = r0.getData()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r3 == 0) goto L4e
            java.lang.Object r0 = r0.getData()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r0 != 0) goto L6d
        L4e:
            r6.f48548e = r2     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
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
            int r0 = r6.f48548e
            if (r0 == r2) goto L8a
            goto L86
        L72:
            if (r3 == r2) goto L78
            r6.f48547d = r7
            r6.f48548e = r1
        L78:
            r6.X()
            return
        L7c:
            r0 = move-exception
            goto L8e
        L7e:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L7c
            int r0 = r6.f48548e
            if (r0 == r2) goto L8a
        L86:
            r6.f48547d = r7
            r6.f48548e = r1
        L8a:
            r6.X()
            return
        L8e:
            int r3 = r6.f48548e
            if (r3 == r2) goto L96
            r6.f48547d = r7
            r6.f48548e = r1
        L96:
            r6.X()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.d2.U(int):void");
    }

    void V() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f48544a;
        if (ptrClassicFrameLayout == null) {
            return;
        }
        ptrClassicFrameLayout.j(true);
        this.f48544a.setPtrHandler(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W() {
        this.f48545b.setPullLoadEnable(this);
        this.f48548e = 0;
        this.f48547d = 1;
        U(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X() {
        Z();
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.c2
            @Override // java.lang.Runnable
            public final void run() {
                d2.this.R();
            }
        }, 200L);
    }

    public void Z() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f48544a;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0(List<FriendBean> list, int i2) {
        if (i2 == 1) {
            this.f48550g.c().clear();
        }
        if (list != null && list.size() != 0) {
            this.f48550g.c().addAll(list);
        }
        this.f48550g.notifyDataSetChanged();
        if (this.f48550g.c().size() == 0) {
            this.f48546c.setVisibility(0);
        } else {
            this.f48546c.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48549f = com.join.mgps.rpc.impl.g.p();
        V();
        this.f48545b.setPullLoadEnable(this);
        com.join.mgps.adapter.n0 n0Var = new com.join.mgps.adapter.n0(getContext());
        this.f48550g = n0Var;
        n0Var.g(this);
        this.f48545b.setAdapter((ListAdapter) this.f48550g);
        Q();
    }

    @Override // com.join.mgps.adapter.n0.a
    public void k(FriendBean friendBean) {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).g0(friendBean.getRuid() + "");
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (!z3) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.b2
                @Override // java.lang.Runnable
                public final void run() {
                    d2.this.Q();
                }
            }, 200L);
            return;
        }
        com.join.mgps.adapter.n0 n0Var = this.f48550g;
        if (n0Var == null || n0Var.c() == null || this.f48550g.c().size() <= 0) {
            return;
        }
        for (FriendBean friendBean : this.f48550g.c()) {
            friendBean.setReadFlag(1);
        }
        this.f48550g.notifyDataSetChanged();
    }

    @Override // com.join.mgps.customview.i
    public void onLoadMore() {
        U(this.f48547d + 1);
    }
}
