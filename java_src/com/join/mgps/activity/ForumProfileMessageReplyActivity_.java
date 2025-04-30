package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.RewardType;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.ForumBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumProfileMessageReplyActivity_ extends ForumProfileMessageReplyActivity implements g3.a, i3.a, i3.b {
    private final i3.c U0 = new i3.c();
    private final Map<Class<?>, Object> V0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30629a;

        a(String str) {
            this.f30629a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showToast(this.f30629a);
        }
    }

    /* loaded from: classes3.dex */
    class a0 extends a.c {
        a0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.H1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RewardType f30632a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30633b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f30634c;

        b(RewardType rewardType, int i2, int i4) {
            this.f30632a = rewardType;
            this.f30633b = i2;
            this.f30634c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.U1(this.f30632a, this.f30633b, this.f30634c);
        }
    }

    /* loaded from: classes3.dex */
    class b0 extends a.c {
        b0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.Q1();
        }
    }

    /* loaded from: classes3.dex */
    class c0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30638a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30638a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.W0(this.f30638a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.u1();
        }
    }

    /* loaded from: classes3.dex */
    class d0 extends a.c {
        d0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.v1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30642a;

        e(String str) {
            this.f30642a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.error(this.f30642a);
        }
    }

    /* loaded from: classes3.dex */
    class e0 extends a.c {
        e0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.I1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.c1();
        }
    }

    /* loaded from: classes3.dex */
    class f0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30646a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30646a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.X0(this.f30646a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f30648a;

        g(ForumBean.ForumCommentBean forumCommentBean) {
            this.f30648a = forumCommentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.z1(this.f30648a);
        }
    }

    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30651a;

        h(int i2) {
            this.f30651a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.w1(this.f30651a);
        }
    }

    /* loaded from: classes3.dex */
    class h0 extends a.c {
        h0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.d1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30654a;

        i(int i2) {
            this.f30654a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.C1(this.f30654a);
        }
    }

    /* loaded from: classes3.dex */
    class i0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30656a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30657b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String str, long j4, String str2, int i2, int i4) {
            super(str, j4, str2);
            this.f30656a = i2;
            this.f30657b = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.e1(this.f30656a, this.f30657b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentReplyBean f30659a;

        j(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
            this.f30659a = forumCommentReplyBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.x1(this.f30659a);
        }
    }

    /* loaded from: classes3.dex */
    class j0 extends a.c {
        j0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.Y0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class k0 implements View.OnClickListener {
        k0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentReplyBean f30664a;

        l(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
            this.f30664a = forumCommentReplyBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.y1(this.f30664a);
        }
    }

    /* loaded from: classes3.dex */
    class l0 implements Runnable {
        l0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.T0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30667a;

        m(int i2) {
            this.f30667a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.A1(this.f30667a);
        }
    }

    /* loaded from: classes3.dex */
    class m0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f30669a;

        m0(ForumBean.ForumCommentBean forumCommentBean) {
            this.f30669a = forumCommentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.Y1(this.f30669a);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.U0();
        }
    }

    /* loaded from: classes3.dex */
    class n0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30672a;

        n0(int i2) {
            this.f30672a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.R0(this.f30672a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30674a;

        o(int i2) {
            this.f30674a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.V1(this.f30674a);
        }
    }

    /* loaded from: classes3.dex */
    class o0 implements Runnable {
        o0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.W1();
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.g1();
        }
    }

    /* loaded from: classes3.dex */
    class p0 implements Runnable {
        p0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.s1();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f30679a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30680b;

        q(View view, int i2) {
            this.f30679a = view;
            this.f30680b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.R1(this.f30679a, this.f30680b);
        }
    }

    /* loaded from: classes3.dex */
    public static class q0 extends org.androidannotations.api.builder.a<q0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30682a;

        public q0(Context context) {
            super(context, ForumProfileMessageReplyActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30682a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public q0(Fragment fragment) {
            super(fragment.getActivity(), ForumProfileMessageReplyActivity_.class);
            this.f30682a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f30683a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f30684b;

        r(boolean z3, boolean z4) {
            this.f30683a = z3;
            this.f30684b = z4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.L1(this.f30683a, this.f30684b);
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f30686a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30687b;

        s(boolean z3, int i2) {
            this.f30686a = z3;
            this.f30687b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.r1(this.f30686a, this.f30687b);
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30689a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30690b;

        t(int i2, int i4) {
            this.f30689a = i2;
            this.f30690b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.T1(this.f30689a, this.f30690b);
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.N1();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity_.this.n1();
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30694a;

        w(String str) {
            this.f30694a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showMessage(this.f30694a);
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30696a;

        x(int i2) {
            this.f30696a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.S1(this.f30696a);
        }
    }

    /* loaded from: classes3.dex */
    class y extends a.c {
        y(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.p1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class z extends a.c {
        z(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.f1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static q0 M2(Context context) {
        return new q0(context);
    }

    public static q0 N2(Fragment fragment) {
        return new q0(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f30602w = resources.getString(R.string.net_excption);
        this.f30604x = resources.getString(R.string.connect_server_excption);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void A1(int i2) {
        org.androidannotations.api.b.e("", new m(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void C1(int i2) {
        org.androidannotations.api.b.e("", new i(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void H1() {
        org.androidannotations.api.a.l(new a0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void I1() {
        org.androidannotations.api.a.l(new e0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void L1(boolean z3, boolean z4) {
        org.androidannotations.api.b.e("", new r(z3, z4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void N1() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void Q1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void R0(int i2) {
        org.androidannotations.api.b.e("", new n0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void R1(View view, int i2) {
        org.androidannotations.api.b.e("", new q(view, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void S1(int i2) {
        org.androidannotations.api.b.e("", new x(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void T0() {
        org.androidannotations.api.b.e("", new l0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void T1(int i2, int i4) {
        org.androidannotations.api.b.e("", new t(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void U0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void U1(RewardType rewardType, int i2, int i4) {
        org.androidannotations.api.b.e("", new b(rewardType, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void V1(int i2) {
        org.androidannotations.api.b.e("", new o(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void W0(int i2) {
        org.androidannotations.api.a.l(new c0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void W1() {
        org.androidannotations.api.b.e("", new o0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void X0(int i2) {
        org.androidannotations.api.a.l(new f0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void Y0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void Y1(ForumBean.ForumCommentBean forumCommentBean) {
        org.androidannotations.api.b.e("", new m0(forumCommentBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void c1() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void d1() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void e1(int i2, int i4) {
        org.androidannotations.api.a.l(new i0("", 0L, "", i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new e(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void f1() {
        org.androidannotations.api.a.l(new z("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void g1() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.V0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.U0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_profile_message_reply_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30571a = (RelativeLayout) aVar.internalFindViewById(R.id.layout_forum_posts_title);
        this.f30572b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f30573c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f30574d = (TextView) aVar.internalFindViewById(R.id.layout_title_right);
        this.f30575e = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f30576f = (ClearEditText) aVar.internalFindViewById(R.id.edit_user_comment);
        this.f30577g = (Button) aVar.internalFindViewById(R.id.btn_chat_praise);
        this.f30578h = (Button) aVar.internalFindViewById(R.id.btn_chat_send);
        this.f30579i = (TextView) aVar.internalFindViewById(R.id.edit_comment_count);
        this.f30580j = (ImageView) aVar.internalFindViewById(R.id.image_add);
        this.f30581k = (TextView) aVar.internalFindViewById(R.id.footer_tip);
        this.f30582l = (Button) aVar.internalFindViewById(R.id.btn_chat_extension);
        this.f30583m = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_more);
        this.f30584n = aVar.internalFindViewById(R.id.chat_layout_extension);
        this.f30586o = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_extension_container);
        this.f30588p = (HListView) aVar.internalFindViewById(R.id.matchListView);
        this.f30590q = (XListView) aVar.internalFindViewById(R.id.mg_forum_profile_message_list);
        ImageView imageView = this.f30572b;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        TextView textView = this.f30574d;
        if (textView != null) {
            textView.setOnClickListener(new v());
        }
        Button button = this.f30577g;
        if (button != null) {
            button.setOnClickListener(new g0());
        }
        Button button2 = this.f30578h;
        if (button2 != null) {
            button2.setOnClickListener(new k0());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void p1() {
        org.androidannotations.api.a.l(new y("", 0L, ""));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.V0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void r1(boolean z3, int i2) {
        org.androidannotations.api.b.e("", new s(z3, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void s1() {
        org.androidannotations.api.b.e("", new p0(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.U0.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new w(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new b0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void u1() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void v1() {
        org.androidannotations.api.a.l(new d0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void w1(int i2) {
        org.androidannotations.api.b.e("", new h(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void x1(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        org.androidannotations.api.b.e("", new j(forumCommentReplyBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void y1(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        org.androidannotations.api.b.e("", new l(forumCommentReplyBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void z1(ForumBean.ForumCommentBean forumCommentBean) {
        org.androidannotations.api.b.e("", new g(forumCommentBean), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.U0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.U0.a(this);
    }
}
