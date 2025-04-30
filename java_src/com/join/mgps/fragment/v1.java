package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: FriendFragment_.java */
/* loaded from: classes4.dex */
public final class v1 extends u1 implements g3.a, i3.a, i3.b {
    private View E;
    private final i3.c D = new i3.c();
    private final Map<Class<?>, Object> F = new HashMap();
    private final IntentFilter G = new IntentFilter();
    private final BroadcastReceiver H = new k();

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendAccountInfo f50509a;

        a(FriendAccountInfo friendAccountInfo) {
            this.f50509a = friendAccountInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.a1(this.f50509a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.E0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.Y0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.d0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.b1();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.O0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50516a;

        d(int i2) {
            this.f50516a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.R0(this.f50516a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.c1();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50519a;

        e(List list) {
            this.f50519a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.updateUi(this.f50519a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.t0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.F0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    public static class f0 extends org.androidannotations.api.builder.d<f0, u1> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public u1 build() {
            v1 v1Var = new v1();
            v1Var.setArguments(this.args);
            return v1Var;
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50523a;

        g(String str) {
            this.f50523a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.X0(this.f50523a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.wufan.friend.chat.protocol.v f50525a;

        h(com.wufan.friend.chat.protocol.v vVar) {
            this.f50525a = vVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.J0(this.f50525a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.wufan.friend.chat.protocol.e f50527a;

        i(com.wufan.friend.chat.protocol.e eVar) {
            this.f50527a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.H0(this.f50527a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.wufan.friend.chat.protocol.l1 f50529a;

        j(com.wufan.friend.chat.protocol.l1 l1Var) {
            this.f50529a = l1Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.L0(this.f50529a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            v1.this.b0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.wufan.friend.chat.protocol.g f50532a;

        l(com.wufan.friend.chat.protocol.g gVar) {
            this.f50532a = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.I0(this.f50532a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.wufan.friend.chat.protocol.x f50534a;

        m(com.wufan.friend.chat.protocol.x xVar) {
            this.f50534a = xVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.K0(this.f50534a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.wufan.friend.chat.protocol.x f50536a;

        n(com.wufan.friend.chat.protocol.x xVar) {
            this.f50536a = xVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.Z0(this.f50536a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50538a;

        o(int i2) {
            this.f50538a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.S0(this.f50538a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50540a;

        p(String str) {
            this.f50540a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.showToast(this.f50540a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.V0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Boolean f50543a;

        r(Boolean bool) {
            this.f50543a = bool;
        }

        @Override // java.lang.Runnable
        public void run() {
            v1.super.a0(this.f50543a);
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class s extends a.c {
        s(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v1.super.o0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class t extends a.c {
        t(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v1.super.p0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class u extends a.c {
        u(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v1.super.q0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.Q0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class w extends a.c {
        w(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v1.super.n0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class x extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50550a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f50550a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v1.super.Z(this.f50550a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.N0();
        }
    }

    /* compiled from: FriendFragment_.java */
    /* loaded from: classes4.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.M0();
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.G.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
    }

    public static f0 z1() {
        return new f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void F0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void H0(com.wufan.friend.chat.protocol.e eVar) {
        org.androidannotations.api.b.e("", new i(eVar), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void I0(com.wufan.friend.chat.protocol.g gVar) {
        org.androidannotations.api.b.e("", new l(gVar), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void J0(com.wufan.friend.chat.protocol.v vVar) {
        org.androidannotations.api.b.e("", new h(vVar), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void K0(com.wufan.friend.chat.protocol.x xVar) {
        org.androidannotations.api.b.e("", new m(xVar), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void L0(com.wufan.friend.chat.protocol.l1 l1Var) {
        org.androidannotations.api.b.e("", new j(l1Var), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void R0(int i2) {
        org.androidannotations.api.b.e("", new d(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void S0(int i2) {
        org.androidannotations.api.b.e("", new o(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void V0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void X0(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void Y0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void Z(int i2) {
        org.androidannotations.api.a.l(new x("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void Z0(com.wufan.friend.chat.protocol.x xVar) {
        org.androidannotations.api.b.e("", new n(xVar), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void a0(Boolean bool) {
        org.androidannotations.api.b.e("", new r(bool), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void a1(FriendAccountInfo friendAccountInfo) {
        org.androidannotations.api.b.e("", new a(friendAccountInfo), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void b1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.F.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.E;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void n0() {
        org.androidannotations.api.a.l(new w("", 200L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void o0() {
        org.androidannotations.api.a.l(new s("", 100L, ""));
    }

    @Override // com.join.mgps.fragment.u1, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.D);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.H, this.G);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.E = onCreateView;
        if (onCreateView == null) {
            this.E = layoutInflater.inflate(R.layout.fragment_friend_my, viewGroup, false);
        }
        return this.E;
    }

    @Override // com.join.mgps.fragment.u1, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.H);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.E = null;
        this.f50406a = null;
        this.f50407b = null;
        this.f50408c = null;
        this.f50409d = null;
        this.f50410e = null;
        this.f50411f = null;
        this.f50412g = null;
        this.f50413h = null;
        this.f50414i = null;
        this.f50415j = null;
        this.f50416k = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50406a = (SimpleDraweeView) aVar.internalFindViewById(R.id.avatar);
        this.f50407b = (TextView) aVar.internalFindViewById(R.id.nickname);
        this.f50408c = (TextView) aVar.internalFindViewById(R.id.unlogin);
        this.f50409d = (TextView) aVar.internalFindViewById(R.id.onlineState);
        this.f50410e = (TextView) aVar.internalFindViewById(R.id.msgCount);
        this.f50411f = aVar.internalFindViewById(R.id.icVip);
        this.f50412g = aVar.internalFindViewById(R.id.msg);
        this.f50413h = aVar.internalFindViewById(R.id.noRecord);
        this.f50414i = aVar.internalFindViewById(R.id.searchFriend);
        this.f50415j = aVar.internalFindViewById(R.id.onlineStateArr);
        this.f50416k = (RecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        View internalFindViewById = aVar.internalFindViewById(R.id.qq);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.wechat);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.inviteFriend);
        View view = this.f50414i;
        if (view != null) {
            view.setOnClickListener(new v());
        }
        View view2 = this.f50415j;
        if (view2 != null) {
            view2.setOnClickListener(new y());
        }
        TextView textView = this.f50409d;
        if (textView != null) {
            textView.setOnClickListener(new z());
        }
        View view3 = this.f50412g;
        if (view3 != null) {
            view3.setOnClickListener(new a0());
        }
        SimpleDraweeView simpleDraweeView = this.f50406a;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new b0());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d0());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new e0());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.D.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void p0() {
        org.androidannotations.api.a.l(new t("", 200L, ""));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.F.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void q0() {
        org.androidannotations.api.a.l(new u("", 200L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new p(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void updateUi(List<FriendBean> list) {
        org.androidannotations.api.b.e("", new e(list), 0L);
    }
}
