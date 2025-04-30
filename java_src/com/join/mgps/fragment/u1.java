package com.join.mgps.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.activity.arena.GameRoomListActivity;
import com.join.mgps.customview.smartpopupwindow.SmartPopupWindow;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendRecommendRequest;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ShareBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: FriendFragment.java */
@EFragment(R.layout.fragment_friend_my)
/* loaded from: classes.dex */
public class u1 extends d {
    ImageView A;
    ImageView B;
    TextView C;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f50406a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f50407b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f50408c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f50409d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f50410e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    View f50411f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    View f50412g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    View f50413h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    View f50414i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    View f50415j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    RecyclerView f50416k;

    /* renamed from: l  reason: collision with root package name */
    SmartPopupWindow f50417l;

    /* renamed from: n  reason: collision with root package name */
    AccountBean f50419n;

    /* renamed from: o  reason: collision with root package name */
    private com.join.mgps.adapter.l0 f50420o;

    /* renamed from: p  reason: collision with root package name */
    com.join.mgps.rpc.i f50421p;

    /* renamed from: q  reason: collision with root package name */
    String f50422q;

    /* renamed from: t  reason: collision with root package name */
    String f50425t;

    /* renamed from: u  reason: collision with root package name */
    private FriendAccountInfo f50426u;

    /* renamed from: y  reason: collision with root package name */
    ClipboardManager f50430y;

    /* renamed from: z  reason: collision with root package name */
    View f50431z;

    /* renamed from: m  reason: collision with root package name */
    com.wufan.friend.chat.c f50418m = com.wufan.friend.chat.c.u();

    /* renamed from: r  reason: collision with root package name */
    String f50423r = "";

    /* renamed from: s  reason: collision with root package name */
    List<GameInfoBean> f50424s = new ArrayList();

    /* renamed from: v  reason: collision with root package name */
    private int f50427v = 1;

    /* renamed from: w  reason: collision with root package name */
    boolean f50428w = false;

    /* renamed from: x  reason: collision with root package name */
    Dialog f50429x = null;

    /* compiled from: FriendFragment.java */
    /* loaded from: classes4.dex */
    class a extends RecyclerView.AdapterDataObserver {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            if (u1.this.f50420o != null) {
                u1 u1Var = u1.this;
                if (u1Var.f50413h != null) {
                    if (u1Var.f50420o.getItemCount() > 0) {
                        u1.this.f50413h.setVisibility(8);
                    } else {
                        u1.this.f50413h.setVisibility(0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View view) {
        d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0(View view) {
        E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(View view) {
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D0(View view) {
        IntentUtil.getInstance().goLogin(view.getContext());
    }

    private void e0() {
        this.f50428w = false;
    }

    private void g0(String str) {
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        this.f50430y = clipboardManager;
        clipboardManager.setText(str.trim());
    }

    private String h0() {
        return com.wufan.friend.chat.c.u().m(Integer.parseInt(AccountUtil_.getInstance_(getContext()).getUid()));
    }

    private void i0(String str) throws Exception {
        PackageInfo packageInfo = getContext().getPackageManager().getPackageInfo(str, 0);
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(packageInfo.packageName);
        ResolveInfo next = getContext().getPackageManager().queryIntentActivities(intent, 0).iterator().next();
        if (next != null) {
            ActivityInfo activityInfo = next.activityInfo;
            String str2 = activityInfo.packageName;
            String str3 = activityInfo.name;
            Intent intent2 = new Intent("android.intent.action.MAIN");
            intent2.addFlags(268435456);
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.setComponent(new ComponentName(str2, str3));
            startActivity(intent2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(View view) {
        this.f50429x.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(View view) {
        U0(0);
        this.f50429x.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(View view) {
        U0(2);
        this.f50429x.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(View view) {
        S0(0);
        com.wufan.friend.chat.c.u().U(0);
        this.f50417l.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(View view) {
        S0(1);
        com.wufan.friend.chat.c.u().U(1);
        this.f50417l.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0() {
        this.f50415j.setRotation(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).W0(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        Iterator<FriendBean> it2 = this.f50420o.o().iterator();
        while (it2.hasNext()) {
            if (it2.next().isRecommend()) {
                it2.remove();
            }
        }
        if (this.f50420o.p() != null && this.f50420o.p().size() != 0) {
            this.f50420o.o().addAll(this.f50420o.p());
        }
        this.f50420o.K();
        this.f50420o.notifyDataSetChanged();
    }

    public void G0(String str, List<GameInfoBean> list) {
        this.f50423r = str;
        this.f50424s.clear();
        if (list != null) {
            this.f50424s.addAll(list);
        }
        p0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(com.wufan.friend.chat.protocol.e eVar) {
        if (eVar == null) {
            return;
        }
        this.f50420o.E(eVar.N());
        ArrayList arrayList = new ArrayList();
        for (com.wufan.friend.chat.protocol.r rVar : eVar.C1()) {
            FriendBean j02 = j0(rVar);
            j02.setState(0);
            arrayList.add(j02);
        }
        arrayList.addAll(this.f50420o.p());
        for (com.wufan.friend.chat.protocol.r rVar2 : eVar.S0()) {
            FriendBean j03 = j0(rVar2);
            j03.setState(1);
            arrayList.add(j03);
        }
        this.f50420o.o().clear();
        this.f50420o.o().addAll(arrayList);
        this.f50420o.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(com.wufan.friend.chat.protocol.g gVar) {
        com.join.mgps.adapter.l0 l0Var;
        if (gVar == null || (l0Var = this.f50420o) == null) {
            return;
        }
        l0Var.E(gVar.N());
        ArrayList arrayList = new ArrayList();
        for (com.wufan.friend.chat.protocol.r rVar : gVar.N0()) {
            FriendBean friendBean = new FriendBean();
            friendBean.setNickName(rVar.getAccount().getNickname());
            friendBean.setAvatar(rVar.getAccount().getAvatar());
            friendBean.setUid(rVar.getAccount().d());
            friendBean.setLevel(rVar.getAccount().h());
            friendBean.setVip(rVar.getAccount().getVip());
            friendBean.setBanned(rVar.getAccount().z());
            if (rVar.getState() != null) {
                friendBean.setGameId(rVar.getState().getGameId() + "");
                friendBean.setGameName(rVar.getState().getGameName());
                friendBean.setRoomId((int) rVar.getState().f());
                friendBean.setRoomType(rVar.getState().getRoomType());
                friendBean.setPlayType(rVar.getState().s0());
            }
            arrayList.add(friendBean);
        }
        this.f50420o.o().clear();
        if (arrayList.size() != 0) {
            this.f50420o.o().addAll(arrayList);
        }
        this.f50420o.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(com.wufan.friend.chat.protocol.v vVar) {
        String str;
        int i2;
        int i4;
        if (vVar == null || vVar.g() == null) {
            return;
        }
        com.wufan.friend.chat.protocol.a g4 = vVar.g();
        com.join.mgps.adapter.l0 l0Var = this.f50420o;
        if (l0Var != null) {
            Iterator<FriendBean> it2 = l0Var.o().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                FriendBean next = it2.next();
                if (next.getUid() == g4.d()) {
                    int i5 = 0;
                    String str2 = "";
                    if (vVar.getState() != null) {
                        str2 = vVar.getState().getGameId() + "";
                        str = vVar.getState().getGameName();
                        i5 = (int) vVar.getState().f();
                        i4 = vVar.getState().s0();
                        i2 = vVar.getState().getRoomType();
                    } else {
                        str = "";
                        i2 = 0;
                        i4 = 0;
                    }
                    next.setGameId(str2);
                    next.setGameName(str);
                    next.setRoomId(i5);
                    next.setPlayType(i4);
                    next.setRoomType(i2);
                }
            }
            this.f50420o.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(com.wufan.friend.chat.protocol.x xVar) {
        if (xVar == null || xVar.g() == null) {
            return;
        }
        com.wufan.friend.chat.protocol.a g4 = xVar.g();
        String uid = AccountUtil_.getInstance_(getContext()).getUid();
        if (uid.equals(g4.d() + "")) {
            FriendAccountInfo friendAccountInfo = this.f50426u;
            if (friendAccountInfo != null) {
                friendAccountInfo.setOnLineStatus(xVar.getState().name());
                S0(!"ONLINE".equals(this.f50426u.getOnLineStatus()) ? 1 : 0);
                return;
            }
            return;
        }
        com.join.mgps.adapter.l0 l0Var = this.f50420o;
        if (l0Var != null) {
            FriendBean friendBean = null;
            Iterator<FriendBean> it2 = l0Var.o().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                FriendBean next = it2.next();
                if (next.getUid() == g4.d()) {
                    next.setNickName(g4.getNickname());
                    next.setAvatar(g4.getAvatar());
                    next.setUid(g4.d());
                    next.setLevel(g4.h());
                    next.setBanned(g4.z());
                    if (xVar.n() != null) {
                        next.setGameId(xVar.n().getGameId() + "");
                        next.setGameName(xVar.n().getGameName());
                        next.setRoomId((int) xVar.n().f());
                        next.setRoomType(xVar.n().getRoomType());
                        next.setPlayType(xVar.n().s0());
                    } else {
                        next.setGameId("");
                        next.setGameName("");
                        next.setRoomId(0);
                        next.setRoomType(0);
                        next.setPlayType(0);
                    }
                    next.setState(xVar.getStateValue());
                    friendBean = next;
                }
            }
            if (friendBean == null) {
                FriendBean friendBean2 = new FriendBean();
                friendBean2.setState(xVar.getStateValue());
                friendBean2.setNickName(g4.getNickname());
                friendBean2.setAvatar(g4.getAvatar());
                friendBean2.setUid(g4.d());
                friendBean2.setLevel(g4.h());
                friendBean2.setBanned(g4.z());
                if (xVar.n() != null) {
                    friendBean2.setGameId(xVar.n().getGameId() + "");
                    friendBean2.setGameName(xVar.n().getGameName());
                    friendBean2.setRoomId((int) xVar.n().f());
                    friendBean2.setRoomType(xVar.n().getRoomType());
                    friendBean2.setPlayType(xVar.n().s0());
                }
                this.f50420o.o().add(friendBean2);
                com.join.mgps.adapter.l0 l0Var2 = this.f50420o;
                l0Var2.E(l0Var2.n() + 1);
            }
            this.f50420o.K();
            this.f50420o.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(com.wufan.friend.chat.protocol.l1 l1Var) {
        if (l1Var == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (com.wufan.friend.chat.protocol.j1 j1Var : l1Var.H1()) {
            FriendBean l02 = l0(j1Var);
            l02.setState(0);
            arrayList.add(l02);
        }
        updateUi(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        if (this.f50417l == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.pop_friend_alive, (ViewGroup) null);
            this.f50417l = SmartPopupWindow.f.a((Activity) getContext(), inflate).e(true).b();
            inflate.findViewById(R.id.online).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.n1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u1.this.x0(view);
                }
            });
            inflate.findViewById(R.id.notDisturb).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.p1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u1.this.y0(view);
                }
            });
            this.f50417l.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.join.mgps.fragment.t1
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    u1.this.z0();
                }
            });
            this.f50417l.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp350));
            this.f50417l.setHeight(getResources().getDimensionPixelOffset(R.dimen.wdp193));
        }
        this.f50415j.setRotation(180.0f);
        boolean isFocusable = this.f50417l.isFocusable();
        e0();
        this.f50417l.C(this.f50409d, 2, 0, getResources().getDimensionPixelOffset(R.dimen.wdp80), 0);
        c0(isFocusable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        ShareBean shareBean = new ShareBean();
        shareBean.setTitle("邀请你一起联机对战");
        shareBean.setText("畅玩海量免费经典游戏，体验超爽联机！");
        shareBean.setQqUrl("https://tuis.12345fun.com/?aid=7Fp12l");
        com.join.mgps.Util.r.p(getContext(), 2, shareBean);
        Ext ext = new Ext();
        ext.setPosition("0");
        com.papa.sim.statistic.p.l(getContext()).K1(Event.InviteFriends, ext);
    }

    public void P0() {
        p0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).B();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0(int i2) {
        TextView textView = this.f50410e;
        if (textView == null) {
            return;
        }
        if (i2 < 1) {
            textView.setVisibility(4);
            return;
        }
        textView.setVisibility(0);
        if (i2 < 100) {
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.mygame_big_round);
            textView.setPadding(1, 0, 0, 1);
        } else {
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.message_round);
            textView.setPadding(1, 0, 2, 1);
        }
        textView.setText(i2 + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0(int i2) {
        TextView textView = this.f50409d;
        if (textView == null) {
            return;
        }
        if (i2 == 0) {
            textView.setText("在线");
            this.f50409d.setSelected(true);
            this.f50409d.setTextColor(Color.parseColor("#FF16DB16"));
        } else if (i2 == 1) {
            textView.setText("勿扰");
            this.f50409d.setTextColor(Color.parseColor("#FFC4C4C4"));
            this.f50409d.setSelected(false);
        } else {
            textView.setText("离线");
            this.f50409d.setTextColor(Color.parseColor("#FFC4C4C4"));
            this.f50409d.setSelected(false);
        }
    }

    void T0(View view) {
        if (view == null) {
            return;
        }
        view.setSystemUiVisibility(5894);
    }

    void U0(int i2) {
        String m4 = com.wufan.friend.chat.c.u().m(Integer.parseInt(AccountUtil_.getInstance_(getContext()).getUid()));
        if (i2 == 2) {
            ShareBean shareBean = new ShareBean();
            shareBean.setTitle("邀请你一起联机对战");
            shareBean.setText(m4);
            shareBean.setQqUrl("https://tuis.12345fun.com/?aid=7Fp12l");
            Ext ext = new Ext();
            ext.setPosition("0");
            com.papa.sim.statistic.p.l(getContext()).K1(Event.pasteInviteCode, ext);
        } else if (i2 == 0) {
            ShareBean shareBean2 = new ShareBean();
            shareBean2.setTitle("邀请你一起联机对战");
            shareBean2.setText(m4);
            shareBean2.setWechatShareUrl("https://tuis.12345fun.com/?aid=7Fp12l");
            com.join.mgps.Util.r.q(getContext(), 0, m4, 1, 0);
            Ext ext2 = new Ext();
            ext2.setPosition("1");
            com.papa.sim.statistic.p.l(getContext()).K1(Event.pasteInviteCode, ext2);
        }
        g0(m4);
        X0("已复制到粘贴板");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0() {
        Context context = getContext();
        if (f0(context, "com.tencent.mobileqq")) {
            W0(context);
        } else {
            Toast.makeText(context, "本机未安装QQ应用", 0).show();
        }
    }

    void W0(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", h0());
        intent.setType(HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE);
        try {
            intent.setClassName("com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity");
            Intent createChooser = Intent.createChooser(intent, "选择分享途径");
            if (createChooser == null) {
                return;
            }
            context.startActivity(createChooser);
        } catch (Exception unused) {
            context.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0(String str) {
        com.join.mgps.Util.i2.a(getContext()).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0() {
        if (IntentUtil.getInstance().isLogined(getContext()) && !IntentUtil.getInstance().isTourist(getContext())) {
            TextView textView = this.f50408c;
            if (textView != null) {
                textView.setVisibility(8);
            }
            TextView textView2 = this.f50407b;
            if (textView2 != null) {
                textView2.setVisibility(0);
            }
            TextView textView3 = this.f50409d;
            if (textView3 != null) {
                textView3.setVisibility(0);
            }
            View view = this.f50415j;
            if (view != null) {
                view.setVisibility(0);
            }
            TextView textView4 = this.f50407b;
            if (textView4 != null) {
                textView4.setText(this.f50419n.getNickname());
            }
            if (this.f50411f != null) {
                if (this.f50419n.getVip_level() > 0) {
                    this.f50411f.setVisibility(0);
                } else {
                    this.f50411f.setVisibility(8);
                }
            }
            SimpleDraweeView simpleDraweeView = this.f50406a;
            if (simpleDraweeView != null) {
                simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.m1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        u1.this.A0(view2);
                    }
                });
            }
            View view2 = this.f50412g;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.k1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        u1.this.B0(view3);
                    }
                });
            }
            View view3 = this.f50414i;
            if (view3 != null) {
                view3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.q1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        u1.this.C0(view4);
                    }
                });
                return;
            }
            return;
        }
        TextView textView5 = this.f50408c;
        if (textView5 != null) {
            textView5.setVisibility(0);
        }
        TextView textView6 = this.f50407b;
        if (textView6 != null) {
            textView6.setVisibility(4);
        }
        TextView textView7 = this.f50409d;
        if (textView7 != null) {
            textView7.setVisibility(4);
        }
        View view4 = this.f50415j;
        if (view4 != null) {
            view4.setVisibility(4);
        }
        View view5 = this.f50411f;
        if (view5 != null) {
            view5.setVisibility(4);
        }
        s1 s1Var = new View.OnClickListener() { // from class: com.join.mgps.fragment.s1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                u1.D0(view6);
            }
        };
        TextView textView8 = this.f50408c;
        if (textView8 != null) {
            textView8.setOnClickListener(s1Var);
        }
        SimpleDraweeView simpleDraweeView2 = this.f50406a;
        if (simpleDraweeView2 != null) {
            simpleDraweeView2.setOnClickListener(s1Var);
        }
        View view6 = this.f50412g;
        if (view6 != null) {
            view6.setOnClickListener(s1Var);
        }
        View view7 = this.f50414i;
        if (view7 != null) {
            view7.setOnClickListener(s1Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z(int i2) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(i2);
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            ResponseModel b4 = this.f50421p.b(friendReqBean);
            if (b4 != null) {
                if (b4.getError() == 0) {
                    a0(Boolean.TRUE);
                } else {
                    X0(b4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0(com.wufan.friend.chat.protocol.x xVar) {
        if (xVar == null) {
            return;
        }
        if (xVar.g().d() == AccountUtil_.getInstance_(getContext()).getAccountData().getUid()) {
            S0(xVar.getStateValue());
            return;
        }
        com.join.mgps.adapter.l0 l0Var = this.f50420o;
        if (l0Var != null) {
            for (FriendBean friendBean : l0Var.o()) {
                if (friendBean.getUid() == xVar.g().d()) {
                    friendBean.setState(xVar.getStateValue());
                    this.f50420o.notifyDataSetChanged();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0(Boolean bool) {
        if (bool.booleanValue()) {
            X0("已发送申请");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a1(FriendAccountInfo friendAccountInfo) {
        int i2;
        try {
            this.f50426u = friendAccountInfo;
            if (friendAccountInfo == null) {
                return;
            }
            com.wufan.friend.chat.c.u().S(this.f50426u);
            MyImageLoader.w(this.f50406a, this.f50426u.getAvatar());
            TextView textView = this.f50407b;
            if (textView != null) {
                textView.setText(this.f50426u.getNickname());
            }
            if ("OFFLINE".equals(this.f50426u.getOnLineStatus())) {
                i2 = 2;
            } else {
                i2 = (!"ONLINE".equals(this.f50426u.getOnLineStatus()) && "INVISIBLE".equals(this.f50426u.getOnLineStatus())) ? 1 : 0;
            }
            com.wufan.friend.chat.c.u().W(i2);
            S0(i2);
            int requestFriendCount = this.f50426u.getRequestFriendCount() + this.f50426u.getLikedCount();
            if (requestFriendCount > 0) {
                TextView textView2 = this.f50410e;
                if (textView2 != null) {
                    textView2.setVisibility(0);
                }
                R0(requestFriendCount);
            } else {
                TextView textView3 = this.f50410e;
                if (textView3 != null) {
                    textView3.setVisibility(8);
                }
            }
            if (this.f50411f != null) {
                if (friendAccountInfo.isVip()) {
                    this.f50411f.setVisibility(0);
                } else {
                    this.f50411f.setVisibility(8);
                }
            }
            Y0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        Context context = getContext();
        this.f50421p = com.join.mgps.rpc.impl.g.p();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(1);
        this.f50416k.setLayoutManager(linearLayoutManager);
        RecyclerView.ItemAnimator itemAnimator = this.f50416k.getItemAnimator();
        if (itemAnimator != null && (itemAnimator instanceof DefaultItemAnimator)) {
            ((DefaultItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        }
        com.join.mgps.adapter.l0 l0Var = new com.join.mgps.adapter.l0(context);
        this.f50420o = l0Var;
        this.f50416k.setAdapter(l0Var);
        if (context instanceof FriendActivity) {
            this.f50420o.J((FriendActivity) context);
        }
        this.f50420o.registerAdapterDataObserver(new a());
        b0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    public void b0() {
        AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        this.f50419n = accountData;
        MyImageLoader.w(this.f50406a, accountData.getAvatarSrc());
        Y0();
        o0();
        p0();
        n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1() {
        try {
            if (this.f50426u == null) {
                return;
            }
            com.wufan.friend.chat.c.u().S(this.f50426u);
            MyImageLoader.w(this.f50406a, this.f50426u.getAvatar());
            TextView textView = this.f50407b;
            if (textView != null) {
                textView.setText(this.f50426u.getNickname());
            }
            S0("ONLINE".equals(this.f50426u.getOnLineStatus()) ? 0 : 1);
            int requestFriendCount = this.f50426u.getRequestFriendCount() + this.f50426u.getLikedCount();
            if (requestFriendCount > 0) {
                TextView textView2 = this.f50410e;
                if (textView2 != null) {
                    textView2.setVisibility(0);
                }
                R0(requestFriendCount);
            } else {
                TextView textView3 = this.f50410e;
                if (textView3 != null) {
                    textView3.setVisibility(8);
                }
            }
            if (this.f50411f != null) {
                if (this.f50426u.isVip()) {
                    this.f50411f.setVisibility(0);
                } else {
                    this.f50411f.setVisibility(8);
                }
            }
            Y0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void c0(boolean z3) {
        r0(this.f50417l.getContentView());
        this.f50428w = z3;
        this.f50417l.update();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c1() {
        ShareBean shareBean = new ShareBean();
        shareBean.setTitle("邀请你一起联机对战");
        shareBean.setText("畅玩海量免费经典游戏，体验超爽联机！");
        shareBean.setWechatShareUrl("https://tuis.12345fun.com/?aid=7Fp12l");
        com.join.mgps.Util.r.p(getContext(), 0, shareBean);
        Ext ext = new Ext();
        ext.setPosition("1");
        com.papa.sim.statistic.p.l(getContext()).K1(Event.InviteFriends, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d0() {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).g0(AccountUtil_.getInstance_(getContext()).getUid());
        }
    }

    public boolean f0(Context context, String str) {
        if (str != null && !"".equals(str)) {
            try {
                context.getPackageManager().getApplicationInfo(str, 8192);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    FriendBean j0(com.wufan.friend.chat.protocol.r rVar) {
        FriendBean friendBean = new FriendBean();
        friendBean.setNickName(rVar.getAccount().getNickname());
        friendBean.setAvatar(rVar.getAccount().getAvatar());
        friendBean.setUid(rVar.getAccount().d());
        friendBean.setLevel(rVar.getAccount().h());
        friendBean.setVip(rVar.getAccount().getVip());
        friendBean.setBanned(rVar.getAccount().z());
        if (rVar.getState() != null) {
            friendBean.setGameId(rVar.getState().getGameId() + "");
            friendBean.setGameName(rVar.getState().getGameName());
            friendBean.setRoomId((int) rVar.getState().f());
            friendBean.setRoomType(rVar.getState().getRoomType());
            friendBean.setPlayType(rVar.getState().s0());
        }
        return friendBean;
    }

    FriendBean k0(com.wufan.friend.chat.protocol.t tVar) {
        FriendBean friendBean = new FriendBean();
        com.wufan.friend.chat.protocol.a g4 = tVar.g();
        friendBean.setNickName(g4.getNickname());
        friendBean.setAvatar(g4.getAvatar());
        friendBean.setUid(g4.d());
        friendBean.setLevel(g4.h());
        friendBean.setVip(g4.getVip());
        friendBean.setBanned(g4.z());
        friendBean.setState(tVar.T0().getNumber());
        com.wufan.friend.chat.protocol.d1 n4 = tVar.n();
        if (n4 != null) {
            friendBean.setGameId(n4.getGameId() + "");
            friendBean.setGameName(n4.getGameName());
            friendBean.setRoomId((int) n4.f());
            friendBean.setRoomType(n4.getRoomType());
            friendBean.setPlayType(n4.s0());
        }
        return friendBean;
    }

    FriendBean l0(com.wufan.friend.chat.protocol.j1 j1Var) {
        FriendBean friendBean = new FriendBean();
        friendBean.setRecommend(true);
        friendBean.setNickName(j1Var.getNickname());
        friendBean.setAvatar(j1Var.getAvatar());
        friendBean.setUid(j1Var.d());
        friendBean.setLevel(j1Var.h());
        friendBean.setBanned(j1Var.z());
        friendBean.setGameId(j1Var.getGameId() + "");
        friendBean.setGameName(j1Var.getGameName());
        return friendBean;
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    FriendBean m0(com.wufan.friend.chat.protocol.o1 o1Var) {
        FriendBean friendBean = new FriendBean();
        friendBean.setRecommend(true);
        com.wufan.friend.chat.protocol.a g4 = o1Var.g();
        friendBean.setNickName(g4.getNickname());
        friendBean.setAvatar(g4.getAvatar());
        friendBean.setUid(g4.d());
        friendBean.setLevel(g4.h());
        friendBean.setVip(g4.getVip());
        friendBean.setBanned(g4.z());
        friendBean.setState(o1Var.getState().getNumber());
        com.wufan.friend.chat.protocol.d1 n4 = o1Var.n();
        if (n4 != null) {
            friendBean.setGameId(n4.getGameId() + "");
            friendBean.setGameName(n4.getGameName());
            friendBean.setRoomId((int) n4.f());
            friendBean.setRoomType(n4.getRoomType());
            friendBean.setPlayType(n4.s0());
        }
        return friendBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = me.relex.photodraweeview.d.f72676b0)
    public void n0() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            com.join.mgps.rpc.i iVar = this.f50421p;
            ResponseModel<FriendAccountInfo> f4 = iVar.f(accountData.getUid() + "", accountData.getToken());
            if (f4 != null) {
                if (f4.getError() == 0 && f4.getData() != null) {
                    a1(f4.getData());
                } else {
                    X0(f4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 100)
    public void o0() {
        if (!this.f50418m.F()) {
            this.f50418m.L(this.f50419n.getUid(), this.f50419n.getToken());
        } else {
            this.f50418m.t();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!org.greenrobot.eventbus.c.f().m(this)) {
            com.join.mgps.Util.c0.a().d(this);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f50422q = arguments.getString("gameId");
            this.f50423r = arguments.getString("gameSeries");
            this.f50425t = arguments.getString("type");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.join.mgps.event.m mVar) {
        com.join.mgps.adapter.l0 l0Var;
        if (mVar == null || mVar.a() != 10 || (l0Var = this.f50420o) == null) {
            return;
        }
        l0Var.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(16:1|2|3|(1:11)|12|(2:15|13)|16|17|(8:22|(1:24)(2:37|(1:39)(2:40|(1:42)))|25|26|27|(1:29)|31|33)|43|25|26|27|(0)|31|33) */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a2, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a3, code lost:
        r2.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009b A[Catch: NumberFormatException -> 0x00a2, Exception -> 0x00af, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x00a2, blocks: (B:32:0x0093, B:34:0x009b), top: B:45:0x0093, outer: #0 }] */
    @org.androidannotations.annotations.Background(delay = me.relex.photodraweeview.d.f72676b0)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void p0() {
        /*
            r8 = this;
            java.lang.String r0 = r8.f50425t     // Catch: java.lang.Exception -> Laf
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> Laf
            java.lang.String r1 = "BATTLE_ROOM_LIST"
            if (r0 != 0) goto L2e
            java.lang.String r0 = r8.f50425t     // Catch: java.lang.Exception -> Laf
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Laf
            if (r0 == 0) goto L2e
            androidx.fragment.app.FragmentActivity r0 = r8.getActivity()     // Catch: java.lang.Exception -> Laf
            boolean r0 = r0 instanceof com.join.mgps.activity.arena.GameRoomListActivity     // Catch: java.lang.Exception -> Laf
            if (r0 == 0) goto L2e
            java.lang.String r0 = r8.f50423r     // Catch: java.lang.Exception -> Laf
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> Laf
            if (r0 == 0) goto L2e
            androidx.fragment.app.FragmentActivity r0 = r8.getActivity()     // Catch: java.lang.Exception -> Laf
            com.join.mgps.activity.arena.GameRoomListActivity r0 = (com.join.mgps.activity.arena.GameRoomListActivity) r0     // Catch: java.lang.Exception -> Laf
            java.lang.String r0 = r0.H2()     // Catch: java.lang.Exception -> Laf
            r8.f50423r = r0     // Catch: java.lang.Exception -> Laf
        L2e:
            g1.f r0 = g1.f.G()     // Catch: java.lang.Exception -> Laf
            java.util.List r0 = r0.u()     // Catch: java.lang.Exception -> Laf
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.Exception -> Laf
            r6.<init>()     // Catch: java.lang.Exception -> Laf
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> Laf
        L3f:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Exception -> Laf
            if (r2 == 0) goto L57
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Exception -> Laf
            com.github.snowdream.android.app.downloader.DownloadTask r2 = (com.github.snowdream.android.app.downloader.DownloadTask) r2     // Catch: java.lang.Exception -> Laf
            java.lang.String r2 = r2.getCrc_link_type_val()     // Catch: java.lang.Exception -> Laf
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Exception -> Laf
            r6.add(r2)     // Catch: java.lang.Exception -> Laf
            goto L3f
        L57:
            java.lang.String r0 = r8.f50425t     // Catch: java.lang.Exception -> Laf
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> Laf
            r2 = 0
            if (r0 != 0) goto L90
            java.lang.String r0 = r8.f50425t     // Catch: java.lang.Exception -> Laf
            java.lang.String r3 = "BATTLE_HOME_PAGE"
            boolean r0 = r0.equals(r3)     // Catch: java.lang.Exception -> Laf
            if (r0 == 0) goto L6b
            goto L90
        L6b:
            java.lang.String r0 = r8.f50425t     // Catch: java.lang.Exception -> Laf
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Laf
            if (r0 == 0) goto L76
            r0 = 1
            r7 = 1
            goto L91
        L76:
            java.lang.String r0 = r8.f50425t     // Catch: java.lang.Exception -> Laf
            java.lang.String r1 = "BATTLE_ROOM"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Laf
            if (r0 == 0) goto L83
            r0 = 2
            r7 = 2
            goto L91
        L83:
            java.lang.String r0 = r8.f50425t     // Catch: java.lang.Exception -> Laf
            java.lang.String r1 = "GAME_HOME_PAGE"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Laf
            if (r0 == 0) goto L90
            r0 = 3
            r7 = 3
            goto L91
        L90:
            r7 = 0
        L91:
            r0 = 0
            java.lang.String r2 = r8.f50422q     // Catch: java.lang.NumberFormatException -> La2 java.lang.Exception -> Laf
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.NumberFormatException -> La2 java.lang.Exception -> Laf
            if (r2 != 0) goto La6
            java.lang.String r2 = r8.f50422q     // Catch: java.lang.NumberFormatException -> La2 java.lang.Exception -> Laf
            long r0 = java.lang.Long.parseLong(r2)     // Catch: java.lang.NumberFormatException -> La2 java.lang.Exception -> Laf
            goto La6
        La2:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Exception -> Laf
        La6:
            r3 = r0
            com.wufan.friend.chat.c r2 = r8.f50418m     // Catch: java.lang.Exception -> Laf
            java.lang.String r5 = r8.f50423r     // Catch: java.lang.Exception -> Laf
            r2.y(r3, r5, r6, r7)     // Catch: java.lang.Exception -> Laf
            goto Lb3
        Laf:
            r0 = move-exception
            r0.printStackTrace()
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.u1.p0():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = me.relex.photodraweeview.d.f72676b0)
    public void q0() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (!TextUtils.isEmpty(this.f50425t) && this.f50425t.equals("BATTLE_ROOM_LIST") && (getActivity() instanceof GameRoomListActivity)) {
                if (TextUtils.isEmpty(this.f50423r)) {
                    this.f50423r = ((GameRoomListActivity) getActivity()).H2();
                }
                if (((GameRoomListActivity) getActivity()).I2() != null && ((GameRoomListActivity) getActivity()).I2().size() > 0) {
                    this.f50424s.clear();
                    this.f50424s.addAll(((GameRoomListActivity) getActivity()).I2());
                }
                if (TextUtils.isEmpty(this.f50423r)) {
                    return;
                }
            }
            ArrayList arrayList = new ArrayList();
            List<GameInfoBean> list = this.f50424s;
            if (list != null && list.size() > 0) {
                for (GameInfoBean gameInfoBean : this.f50424s) {
                    DownloadTask B = g1.f.G().B(gameInfoBean.getGame_id());
                    if (B != null) {
                        arrayList.add(B.getCrc_link_type_val());
                    }
                }
            }
            FriendRecommendRequest friendRecommendRequest = new FriendRecommendRequest();
            friendRecommendRequest.setUid(accountData.getUid());
            friendRecommendRequest.setToken(accountData.getToken());
            friendRecommendRequest.setPage(1);
            friendRecommendRequest.setGameId(this.f50422q);
            friendRecommendRequest.setGameSeries(this.f50423r);
            friendRecommendRequest.setLocationPageType(this.f50425t);
            friendRecommendRequest.setLocalDownloadGameIds(arrayList);
            ResponseModel<List<FriendBean>> d4 = this.f50421p.d(friendRecommendRequest);
            if (d4 != null) {
                if (d4.getError() == 0 && d4.getData() != null) {
                    updateUi(d4.getData());
                } else {
                    X0(d4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void r0(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            T0(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(getContext()).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void t0() {
        Context context = getContext();
        if (IntentUtil.getInstance().goLogin(context)) {
            return;
        }
        if (this.f50429x == null) {
            Dialog dialog = new Dialog(context, R.style.newtrans_floating_dialog);
            this.f50429x = dialog;
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.f50429x.getWindow().setAttributes(attributes);
            }
            View inflate = LayoutInflater.from(context).inflate(R.layout.layout_invite_battle1, (ViewGroup) null);
            this.f50431z = inflate.findViewById(R.id.iv_close);
            this.A = (ImageView) inflate.findViewById(R.id.button);
            this.B = (ImageView) inflate.findViewById(R.id.button1);
            this.C = (TextView) inflate.findViewById(R.id.txt);
            this.f50429x.setContentView(inflate);
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.wdp622);
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.wdp447);
            Window window = this.f50429x.getWindow();
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
            this.f50431z.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.r1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u1.this.u0(view);
                }
            });
        }
        this.A.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.l1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                u1.this.v0(view);
            }
        });
        this.B.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.o1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                u1.this.w0(view);
            }
        });
        this.C.setText(h0());
        if (this.f50429x.isShowing()) {
            return;
        }
        this.f50429x.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(List<FriendBean> list) {
        if (this.f50420o == null) {
            return;
        }
        if (list != null && list.size() != 0) {
            for (FriendBean friendBean : list) {
                friendBean.setState(0);
                friendBean.setRecommend(true);
            }
            this.f50420o.p().clear();
            this.f50420o.p().addAll(list);
            Iterator<FriendBean> it2 = this.f50420o.o().iterator();
            while (it2.hasNext()) {
                if (it2.next().isRecommend()) {
                    it2.remove();
                }
            }
            this.f50420o.o().addAll(list);
            this.f50420o.K();
            this.f50420o.notifyDataSetChanged();
            return;
        }
        this.f50420o.p().clear();
        F0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.wufan.friend.chat.protocol.w1 w1Var) {
        if (w1Var == null) {
            return;
        }
        if (w1Var.y() == 1) {
            if (w1Var.F() == 1) {
                if (w1Var.getData() != null && w1Var.getData().x2() != null && w1Var.getData().x2().C0()) {
                    S0(0);
                    com.wufan.friend.chat.c.u().T(true);
                    com.wufan.friend.chat.c.u().U(0);
                    this.f50418m.t();
                    this.f50427v = 1;
                } else if (this.f50427v > 0) {
                    n0();
                    this.f50427v--;
                }
                if (IntentUtil.getInstance().isLogined(getContext())) {
                    p0();
                }
            } else if (w1Var.F() == 5 && w1Var.getData() != null && w1Var.getData().getNotification() != null && w1Var.getData().getNotification().k2() != null) {
                Z0(w1Var.getData().getNotification().k2());
            }
        }
        if (w1Var.y() == 4 && (w1Var.F() == 11 || w1Var.F() == 12)) {
            L0(w1Var.getData().E1());
        }
        if (w1Var.getData() == null || w1Var.getData().getNotification() == null) {
            return;
        }
        com.wufan.friend.chat.protocol.y0 notification = w1Var.getData().getNotification();
        if (w1Var.A1() == 3) {
            J0(notification.K0());
        } else if (w1Var.A1() == 2) {
            K0(notification.k2());
        } else if (w1Var.A1() == 11) {
            if (notification.X1() != null) {
                H0(notification.X1());
            }
        } else if (w1Var.A1() == 7) {
            if (notification.u1() == null || this.f50426u == null) {
                return;
            }
            int count = notification.u1().getCount();
            if (notification.u1().getTypeValue() == 0) {
                FriendAccountInfo friendAccountInfo = this.f50426u;
                friendAccountInfo.setRequestFriendCount(friendAccountInfo.getRequestFriendCount() + count >= 0 ? this.f50426u.getRequestFriendCount() + count : 0);
            } else if (notification.u1().getTypeValue() == 1) {
                FriendAccountInfo friendAccountInfo2 = this.f50426u;
                friendAccountInfo2.setLikedCount(friendAccountInfo2.getLikedCount() + count >= 0 ? this.f50426u.getLikedCount() + count : 0);
            }
            b1();
        } else if (w1Var.A1() == 9) {
            if (notification.b1() != null) {
                com.wufan.friend.chat.protocol.t b12 = notification.b1();
                if (b12.T0().getNumber() == 0) {
                    FriendBean k02 = k0(b12);
                    com.join.mgps.adapter.l0 l0Var = this.f50420o;
                    l0Var.E(l0Var.n() + 1);
                    this.f50420o.o().add(k02);
                    this.f50420o.K();
                    this.f50420o.notifyDataSetChanged();
                }
            }
        } else if (w1Var.A1() == 12) {
            if (notification.p1() != null) {
                com.wufan.friend.chat.protocol.o1 p12 = notification.p1();
                List<FriendBean> p3 = this.f50420o.p();
                Iterator<FriendBean> it2 = p3.iterator();
                while (it2.hasNext()) {
                    FriendBean next = it2.next();
                    if (next.getUid() == p12.g().d()) {
                        if (p12.n() != null && p12.n().getGameId() != 0) {
                            com.wufan.friend.chat.protocol.d1 n4 = p12.n();
                            next.setGameId(n4.getGameId() + "");
                            next.setGameName(n4.getGameName());
                            next.setRoomId((int) n4.f());
                            next.setRoomType(n4.getRoomType());
                            next.setPlayType(n4.s0());
                        } else {
                            it2.remove();
                        }
                    }
                }
                F0();
                if (p3.size() == 0) {
                    p0();
                }
            }
        } else if (w1Var.A1() == 13) {
            if (notification.e2() == null || this.f50420o == null) {
                return;
            }
            com.wufan.friend.chat.protocol.z e22 = notification.e2();
            Iterator<FriendBean> it3 = this.f50420o.o().iterator();
            while (it3.hasNext()) {
                FriendBean next2 = it3.next();
                if (!next2.isRecommend() && next2.getUid() == e22.E()) {
                    it3.remove();
                }
            }
            this.f50420o.notifyDataSetChanged();
        } else if (w1Var.A1() == 14 && notification.O0() != null && notification.O0().P2() != null) {
            com.wufan.friend.chat.protocol.a P2 = notification.O0().P2();
            com.join.mgps.adapter.l0 l0Var2 = this.f50420o;
            if (l0Var2 != null) {
                for (FriendBean friendBean : l0Var2.o()) {
                    if (friendBean.getUid() == P2.d()) {
                        friendBean.setBanned(P2.z());
                    }
                }
                this.f50420o.notifyDataSetChanged();
            }
            FriendAccountInfo friendAccountInfo3 = this.f50426u;
            if (friendAccountInfo3 == null || friendAccountInfo3.getAccountId() != P2.d()) {
                return;
            }
            this.f50426u.setBanned(P2.z());
            b1();
        }
    }
}
