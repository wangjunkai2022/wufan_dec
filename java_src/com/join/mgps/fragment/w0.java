package com.join.mgps.fragment;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.adapter.z;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import i1.a;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: FriendAddFragment.java */
@EFragment(R.layout.fragment_friend_add)
/* loaded from: classes4.dex */
public class w0 extends d implements z.a {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    EditText f50619a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f50620b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    KeyboardListenLayout f50621c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    RecyclerView f50622d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f50623e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f50624f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f50625g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.adapter.z f50626h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.rpc.i f50627i;

    /* compiled from: FriendAddFragment.java */
    /* loaded from: classes4.dex */
    class a extends i1.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a.C0442a f50628a;

        a(a.C0442a c0442a) {
            this.f50628a = c0442a;
        }

        @Override // i1.a
        public a.b getItemOffsets(int i2) {
            return this.f50628a;
        }
    }

    /* compiled from: FriendAddFragment.java */
    /* loaded from: classes4.dex */
    class b implements KeyboardListenLayout.a {
        b() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onHidden() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onShown() {
            w0 w0Var = w0.this;
            w0Var.Q(w0Var.f50619a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        EditText editText = this.f50619a;
        if (editText != null) {
            editText.setText("");
        }
        TextView textView = this.f50623e;
        if (textView != null) {
            textView.setVisibility(8);
        }
        com.join.mgps.adapter.z zVar = this.f50626h;
        if (zVar != null) {
            zVar.b().clear();
            this.f50626h.notifyDataSetChanged();
        }
    }

    private void S() {
        this.f50619a.setText("");
        this.f50623e.setVisibility(8);
        this.f50622d.setVisibility(8);
        this.f50624f.setVisibility(8);
        this.f50625g.setVisibility(8);
    }

    @Override // com.join.mgps.adapter.z.a
    public void G(FriendBean friendBean) {
        Ext ext = new Ext();
        ext.setFrom(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        com.papa.sim.statistic.p.l(getContext()).K1(Event.addFriends, ext);
        N(friendBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N(FriendBean friendBean) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(friendBean.getRuid());
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            ResponseModel b4 = this.f50627i.b(friendReqBean);
            if (b4 != null) {
                if (b4.getError() == 0) {
                    O(Boolean.TRUE);
                } else {
                    X(b4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O(Boolean bool) {
        com.join.mgps.adapter.z zVar;
        if (!bool.booleanValue() || (zVar = this.f50626h) == null || zVar.b().size() <= 0) {
            return;
        }
        this.f50626h.b().get(0).setFriendRequestType("INIT");
        this.f50626h.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P() {
        EditText editText = this.f50619a;
        if (editText != null) {
            y1.a.b(editText);
        }
        if (getContext() instanceof FriendActivity) {
            ((FriendActivity) getContext()).r1();
        }
        S();
    }

    void Q(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            W(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U() {
        Context context = getContext();
        y1.a.b(this.f50619a);
        if (com.ta.utdid2.android.utils.f.f(context)) {
            if (TextUtils.isEmpty(this.f50619a.getText().toString().trim())) {
                com.join.mgps.Util.i2.a(context).b("输入不能为空");
                return;
            } else {
                V();
                return;
            }
        }
        com.join.mgps.Util.i2.a(context).b(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            ResponseModel<List<FriendBean>> c4 = this.f50627i.c(accountData.getUid(), accountData.getToken(), this.f50619a.getText().toString());
            if (c4 != null) {
                if (c4.getError() == 0 && c4.getData() != null) {
                    updateUi(c4.getData());
                } else {
                    X(c4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void W(View view) {
        view.setSystemUiVisibility(5894);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X(String str) {
        com.join.mgps.Util.i2.a(getContext()).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        Context context = getContext();
        this.f50627i = com.join.mgps.rpc.impl.g.p();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(1);
        this.f50622d.setLayoutManager(linearLayoutManager);
        a.C0442a c0442a = new a.C0442a();
        c0442a.f65702f = 0;
        c0442a.f65705c = (int) getResources().getDimension(R.dimen.wdp22);
        this.f50622d.addItemDecoration(new a(c0442a));
        com.join.mgps.adapter.z zVar = new com.join.mgps.adapter.z(context);
        this.f50626h = zVar;
        this.f50622d.setAdapter(zVar);
        this.f50621c.setOnSoftKeyboardListener(new b());
        this.f50626h.f(this);
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
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.v0
            @Override // java.lang.Runnable
            public final void run() {
                w0.this.R();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(List<FriendBean> list) {
        if (list == null) {
            this.f50623e.setVisibility(8);
            this.f50622d.setVisibility(8);
            this.f50624f.setVisibility(0);
            this.f50625g.setVisibility(0);
            return;
        }
        com.join.mgps.adapter.z zVar = this.f50626h;
        if (zVar != null) {
            zVar.b().clear();
            if (list.size() > 0) {
                this.f50623e.setVisibility(0);
                this.f50624f.setVisibility(8);
                this.f50625g.setVisibility(8);
                this.f50622d.setVisibility(0);
                this.f50626h.b().addAll(list);
                this.f50622d.scrollToPosition(0);
            } else {
                this.f50623e.setVisibility(8);
                this.f50624f.setVisibility(0);
                this.f50625g.setVisibility(0);
                this.f50622d.setVisibility(8);
            }
            this.f50626h.notifyDataSetChanged();
        }
    }
}
