package com.join.mgps.fragment;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendCardBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.text.DecimalFormat;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: FriendCardFragment.java */
@EFragment(R.layout.fragment_friend_card)
/* loaded from: classes4.dex */
public class i1 extends d {

    /* renamed from: a  reason: collision with root package name */
    String f48847a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    SimpleDraweeView f48848b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f48849c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f48850d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f48851e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f48852f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f48853g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    View f48854h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    View f48855i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    View f48856j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    GridView f48857k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Group f48858l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    View f48859m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.i f48860n;

    /* renamed from: o  reason: collision with root package name */
    private FriendCardBean f48861o;

    /* renamed from: p  reason: collision with root package name */
    com.join.mgps.adapter.a0 f48862p;

    /* renamed from: q  reason: collision with root package name */
    Dialog f48863q = null;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(String str, View view) {
        n0(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0(String str, View view) {
        n0(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0() {
        if (!com.ta.utdid2.android.utils.f.f(getContext())) {
            this.f48859m.setVisibility(0);
            this.f48858l.setVisibility(4);
            this.f48856j.setVisibility(4);
            this.f48857k.setVisibility(4);
            return;
        }
        p0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(String str, View view) {
        b0(Integer.parseInt(str));
        this.f48863q.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(View view) {
        this.f48863q.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(View view) {
        this.f48863q.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(View view) {
        if (IntentUtil.getInstance().goLogin(view.getContext())) {
            return;
        }
        n0(this.f48847a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(View view) {
        if (IntentUtil.getInstance().goLogin(view.getContext())) {
            return;
        }
        n0(this.f48847a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(View view) {
        try {
            if (IntentUtil.getInstance().goLogin(view.getContext()) || TextUtils.isEmpty(this.f48847a)) {
                return;
            }
            t0(this.f48847a);
        } catch (NumberFormatException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(View view) {
        try {
            Ext ext = new Ext();
            ext.setFrom("0");
            com.papa.sim.statistic.p.l(getContext()).K1(Event.addFriends, ext);
            if (IntentUtil.getInstance().goLogin(view.getContext()) || TextUtils.isEmpty(this.f48847a)) {
                return;
            }
            X(Integer.parseInt(this.f48847a));
        } catch (NumberFormatException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X(int i2) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setRuid(i2);
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            ResponseModel b4 = this.f48860n.b(friendReqBean);
            if (b4 != null) {
                if (b4.getError() == 0) {
                    Z(i2);
                } else {
                    T(b4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z(int i2) {
        T("已发送好友申请");
        FriendCardBean friendCardBean = this.f48861o;
        if (friendCardBean != null) {
            friendCardBean.setFriendStatus(false);
            this.f48861o.setAddFriendStatus(false);
            u0(this.f48861o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a0() {
        if (getContext() instanceof FriendActivity) {
            ((FriendActivity) getContext()).r1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48860n = com.join.mgps.rpc.impl.g.p();
        Context context = getContext();
        com.join.mgps.adapter.a0 a0Var = new com.join.mgps.adapter.a0(getContext());
        this.f48862p = a0Var;
        this.f48857k.setAdapter((ListAdapter) a0Var);
        if (!com.ta.utdid2.android.utils.f.f(context)) {
            this.f48859m.setVisibility(0);
            this.f48855i.setVisibility(4);
            this.f48851e.setVisibility(4);
            this.f48858l.setVisibility(4);
            this.f48856j.setVisibility(4);
            this.f48857k.setVisibility(4);
        }
        q0();
        p0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b0(int i2) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap hashMap = new HashMap();
            hashMap.put("uid", Integer.valueOf(accountData.getUid()));
            hashMap.put("token", accountData.getToken());
            hashMap.put("delUid", Integer.valueOf(i2));
            ResponseModel m4 = this.f48860n.m(hashMap);
            if (m4 != null) {
                if (m4.getError() == 0) {
                    c0(i2);
                } else {
                    T(m4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0(int i2) {
        T("已删除好友");
        FriendCardBean friendCardBean = this.f48861o;
        if (friendCardBean != null) {
            friendCardBean.setFriendStatus(false);
            this.f48861o.setAddFriendStatus(true);
            u0(this.f48861o);
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void n0(String str) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap hashMap = new HashMap();
            hashMap.put("uid", Integer.valueOf(accountData.getUid()));
            hashMap.put("token", accountData.getToken());
            hashMap.put("likeUid", str);
            ResponseModel a4 = this.f48860n.a(hashMap);
            if (a4 != null) {
                if (a4.getError() == 0) {
                    o0(str);
                } else {
                    T(a4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o0(final String str) {
        String format;
        T("点赞成功");
        this.f48861o.setLikeStatus(false);
        FriendCardBean friendCardBean = this.f48861o;
        friendCardBean.setLikeCount(friendCardBean.getLikeCount() + 1);
        DecimalFormat decimalFormat = new DecimalFormat("###.0");
        TextView textView = this.f48852f;
        if (this.f48861o.getLikeCount() < 10000) {
            format = this.f48861o.getLikeCount() + "";
        } else {
            format = decimalFormat.format((this.f48861o.getLikeCount() * 1.0f) / 1000.0f);
        }
        textView.setText(format);
        if (this.f48861o.isLikeStatus()) {
            this.f48854h.setBackgroundResource(R.drawable.ic_like_gray);
            this.f48854h.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.g1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i1.this.d0(str, view);
                }
            });
            this.f48852f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.f1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i1.this.e0(str, view);
                }
            });
            return;
        }
        this.f48854h.setOnClickListener(null);
        this.f48852f.setOnClickListener(null);
        this.f48854h.setBackgroundResource(R.drawable.ic_like);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f48847a = arguments.getString("ruid");
        }
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (!z3) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.h1
                @Override // java.lang.Runnable
                public final void run() {
                    i1.this.f0();
                }
            }, 500L);
        } else {
            q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            com.join.mgps.rpc.i iVar = this.f48860n;
            ResponseModel<FriendCardBean> g4 = iVar.g(accountData.getUid() + "", accountData.getToken(), this.f48847a);
            if (g4 != null) {
                if (g4.getError() == 0 && g4.getData() != null) {
                    u0(g4.getData());
                } else {
                    T(g4.getMsg());
                }
            } else {
                T(getString(R.string.request_failure));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q0() {
        com.join.mgps.adapter.a0 a0Var = this.f48862p;
        if (a0Var != null) {
            a0Var.b().clear();
            this.f48862p.notifyDataSetChanged();
            this.f48856j.setVisibility(4);
        }
        TextView textView = this.f48849c;
        if (textView != null) {
            textView.setText("---");
        }
        TextView textView2 = this.f48850d;
        if (textView2 != null) {
            textView2.setText("---");
        }
        TextView textView3 = this.f48853g;
        if (textView3 != null) {
            textView3.setText("--");
        }
        TextView textView4 = this.f48852f;
        if (textView4 != null) {
            textView4.setText("--");
        }
        View view = this.f48854h;
        if (view != null) {
            view.setSelected(false);
        }
        View view2 = this.f48855i;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        TextView textView5 = this.f48851e;
        if (textView5 != null) {
            textView5.setVisibility(8);
        }
    }

    public void r0(String str) {
        this.f48847a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t0(final String str) {
        Context context = getContext();
        if (this.f48863q == null) {
            Dialog dialog = new Dialog(context, R.style.newtrans_floating_dialog);
            this.f48863q = dialog;
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.f48863q.getWindow().setAttributes(attributes);
            }
            View inflate = LayoutInflater.from(context).inflate(R.layout.layout_friend_del_dialog, (ViewGroup) null);
            View findViewById = inflate.findViewById(R.id.iv_close);
            View findViewById2 = inflate.findViewById(R.id.ok);
            View findViewById3 = inflate.findViewById(R.id.cancel);
            inflate.setBackgroundResource(R.drawable.shape_invite_battle_bg1);
            this.f48863q.setContentView(inflate);
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.wdp526);
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.wdp401);
            Window window = this.f48863q.getWindow();
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
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.e1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i1.this.g0(str, view);
                }
            });
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.a1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i1.this.h0(view);
                }
            });
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.z0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i1.this.i0(view);
                }
            });
        }
        if (this.f48863q.isShowing()) {
            return;
        }
        this.f48863q.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0(FriendCardBean friendCardBean) {
        String str;
        if (friendCardBean == null) {
            return;
        }
        this.f48859m.setVisibility(8);
        this.f48858l.setVisibility(0);
        this.f48857k.setVisibility(0);
        this.f48861o = friendCardBean;
        DecimalFormat decimalFormat = new DecimalFormat("###.0");
        TextView textView = this.f48852f;
        if (friendCardBean.getLikeCount() < 10000) {
            str = friendCardBean.getLikeCount() + "";
        } else {
            str = decimalFormat.format((friendCardBean.getLikeCount() * 1.0f) / 10000.0f) + "W";
        }
        textView.setText(str);
        if (friendCardBean.isLikeStatus()) {
            this.f48854h.setBackgroundResource(R.drawable.ic_like_gray);
            this.f48854h.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.d1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i1.this.j0(view);
                }
            });
            this.f48852f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.b1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i1.this.k0(view);
                }
            });
        } else {
            this.f48854h.setOnClickListener(null);
            this.f48852f.setOnClickListener(null);
            this.f48854h.setBackgroundResource(R.drawable.ic_like);
        }
        if (friendCardBean.isOnlineStatus()) {
            this.f48853g.setText("在线");
            this.f48853g.setTextColor(Color.parseColor("#FF03DA00"));
        } else {
            this.f48853g.setText("离线");
            this.f48853g.setTextColor(Color.parseColor("#FFC4C4C4"));
        }
        if (friendCardBean.getUserInfo() != null) {
            FriendBean userInfo = friendCardBean.getUserInfo();
            MyImageLoader.w(this.f48848b, userInfo.getAvatar());
            this.f48849c.setText(userInfo.getNickName());
            if (userInfo.getMemberTitle() != null) {
                this.f48850d.setText(userInfo.getMemberTitle().getBattleTitle());
                this.f48850d.setTextColor(Color.parseColor(userInfo.getMemberTitle().getBattleTitleColor()));
            }
            if (userInfo.isVip()) {
                this.f48855i.setVisibility(0);
            } else {
                this.f48855i.setVisibility(8);
            }
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (userInfo.getUid() == (accountData != null ? accountData.getUid() : 0)) {
                this.f48851e.setVisibility(8);
            } else {
                this.f48851e.setVisibility(0);
            }
            if (friendCardBean.isFriendStatus()) {
                this.f48851e.setText("删除好友");
                this.f48851e.setBackgroundResource(R.drawable.shape_friend_del);
                this.f48851e.setTextColor(Color.parseColor("#F5F5F5"));
                this.f48851e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.y0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        i1.this.l0(view);
                    }
                });
            } else if (friendCardBean.isAddFriendStatus()) {
                this.f48851e.setText("加好友");
                this.f48851e.setBackgroundResource(R.drawable.shape_friend_add);
                this.f48851e.setTextColor(Color.parseColor("#000000"));
                this.f48851e.setSelected(false);
                this.f48851e.setClickable(true);
                this.f48851e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.c1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        i1.this.m0(view);
                    }
                });
            } else {
                this.f48851e.setText("已发送");
                this.f48851e.setBackgroundResource(R.drawable.shape_friend_sent);
                this.f48851e.setTextColor(Color.parseColor("#BABABA"));
                this.f48851e.setSelected(true);
                this.f48851e.setClickable(false);
                this.f48851e.setOnClickListener(null);
            }
        }
        if (friendCardBean.getPlayGameLevels() != null && friendCardBean.getPlayGameLevels().size() != 0) {
            this.f48857k.setVisibility(0);
            this.f48856j.setVisibility(8);
            this.f48862p.b().clear();
            this.f48862p.b().addAll(friendCardBean.getPlayGameLevels());
            this.f48862p.notifyDataSetChanged();
            return;
        }
        this.f48856j.setVisibility(0);
        this.f48857k.setVisibility(4);
    }
}
