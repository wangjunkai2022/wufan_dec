package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.RewardType;
import com.join.mgps.customview.XListView4ForumPost;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumPostsActivity_ extends ForumPostsActivity implements g3.a, i3.a, i3.b {

    /* renamed from: t2  reason: collision with root package name */
    public static final String f30190t2 = "extBean";

    /* renamed from: p2  reason: collision with root package name */
    private final i3.c f30191p2 = new i3.c();

    /* renamed from: q2  reason: collision with root package name */
    private final Map<Class<?>, Object> f30192q2 = new HashMap();

    /* renamed from: r2  reason: collision with root package name */
    private final IntentFilter f30193r2 = new IntentFilter();

    /* renamed from: s2  reason: collision with root package name */
    private final BroadcastReceiver f30194s2 = new k();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.h1();
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumPostsBean f30196a;

        a0(ForumBean.ForumPostsBean forumPostsBean) {
            this.f30196a = forumPostsBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.c3(this.f30196a);
        }
    }

    /* loaded from: classes3.dex */
    class a1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30198a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a1(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f30198a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.W0(this.f30198a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.r3();
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.K2();
        }
    }

    /* loaded from: classes3.dex */
    class b1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30202a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b1(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f30202a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.O2(this.f30202a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30204a;

        c(int i2) {
            this.f30204a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.e1(this.f30204a);
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsListView f30206a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30207b;

        c0(AbsListView absListView, int i2) {
            this.f30206a = absListView;
            this.f30207b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.x3(this.f30206a, this.f30207b);
        }
    }

    /* loaded from: classes3.dex */
    class c1 implements View.OnClickListener {
        c1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.b1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30210a;

        d(int i2) {
            this.f30210a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.n3(this.f30210a);
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsListView f30212a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30213b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f30214c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f30215d;

        d0(AbsListView absListView, int i2, int i4, int i5) {
            this.f30212a = absListView;
            this.f30213b = i2;
            this.f30214c = i4;
            this.f30215d = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.w3(this.f30212a, this.f30213b, this.f30214c, this.f30215d);
        }
    }

    /* loaded from: classes3.dex */
    class d1 extends a.c {
        d1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.X2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.p1();
        }
    }

    /* loaded from: classes3.dex */
    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.d3();
        }
    }

    /* loaded from: classes3.dex */
    class e1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30220a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30221b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f30222c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e1(String str, long j4, String str2, String str3, int i2, String str4) {
            super(str, j4, str2);
            this.f30220a = str3;
            this.f30221b = i2;
            this.f30222c = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.q2(this.f30220a, this.f30221b, this.f30222c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30224a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30225b;

        f(int i2, int i4) {
            this.f30224a = i2;
            this.f30225b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.l3(this.f30224a, this.f30225b);
        }
    }

    /* loaded from: classes3.dex */
    class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30227a;

        f0(String str) {
            this.f30227a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showMessage(this.f30227a);
        }
    }

    /* loaded from: classes3.dex */
    class f1 implements View.OnClickListener {
        f1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.K1();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f30230a;

        g(CharSequence charSequence) {
            this.f30230a = charSequence;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.o3(this.f30230a);
        }
    }

    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class g1 implements View.OnClickListener {
        g1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.o2();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RewardType f30234a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30235b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f30236c;

        h(RewardType rewardType, int i2, int i4) {
            this.f30234a = rewardType;
            this.f30235b = i2;
            this.f30236c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.m3(this.f30234a, this.f30235b, this.f30236c);
        }
    }

    /* loaded from: classes3.dex */
    class h0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f30238a;

        h0(DetailResultBean detailResultBean) {
            this.f30238a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.startDown(this.f30238a);
        }
    }

    /* loaded from: classes3.dex */
    class h1 implements View.OnClickListener {
        h1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.n2();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.H1();
        }
    }

    /* loaded from: classes3.dex */
    class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30242a;

        i0(String str) {
            this.f30242a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.e2(this.f30242a);
        }
    }

    /* loaded from: classes3.dex */
    class i1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f30244a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30245b;

        i1(boolean z3, int i2) {
            this.f30244a = z3;
            this.f30245b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.a2(this.f30244a, this.f30245b);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.b2();
        }
    }

    /* loaded from: classes3.dex */
    class j0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30248a;

        j0(String str) {
            this.f30248a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.f2(this.f30248a);
        }
    }

    /* loaded from: classes3.dex */
    public static class j1 extends org.androidannotations.api.builder.a<j1> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30250a;

        public j1(Context context) {
            super(context, ForumPostsActivity_.class);
        }

        public j1 a(ExtBean extBean) {
            return (j1) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30250a;
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

        public j1(Fragment fragment) {
            super(fragment.getActivity(), ForumPostsActivity_.class);
            this.f30250a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f30251b = "gameData";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumPostsActivity_.this.i2((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class k0 extends a.c {
        k0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.r2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f30254a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30255b;

        l(List list, int i2) {
            this.f30254a = list;
            this.f30255b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.v2(this.f30254a, this.f30255b);
        }
    }

    /* loaded from: classes3.dex */
    class l0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30257a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30257a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.W1(this.f30257a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.Z1();
        }
    }

    /* loaded from: classes3.dex */
    class m0 extends a.c {
        m0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.S2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30261a;

        n(int i2) {
            this.f30261a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.j3(this.f30261a);
        }
    }

    /* loaded from: classes3.dex */
    class n0 extends a.c {
        n0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30264a;

        o(String str) {
            this.f30264a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.error(this.f30264a);
        }
    }

    /* loaded from: classes3.dex */
    class o0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30266a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30266a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.j1(this.f30266a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30268a;

        p(int i2) {
            this.f30268a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.F2(this.f30268a);
        }
    }

    /* loaded from: classes3.dex */
    class p0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30270a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30271b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p0(String str, long j4, String str2, int i2, int i4) {
            super(str, j4, str2);
            this.f30270a = i2;
            this.f30271b = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.G1(this.f30270a, this.f30271b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f30273a;

        q(ForumBean.ForumCommentBean forumCommentBean) {
            this.f30273a = forumCommentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.y2(this.f30273a);
        }
    }

    /* loaded from: classes3.dex */
    class q0 extends a.c {
        q0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.T2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30276a;

        r(int i2) {
            this.f30276a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.t2(this.f30276a);
        }
    }

    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.d1();
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30279a;

        s(int i2) {
            this.f30279a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.u2(this.f30279a);
        }
    }

    /* loaded from: classes3.dex */
    class s0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30281a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30281a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.k1(this.f30281a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentReplyBean f30283a;

        t(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
            this.f30283a = forumCommentReplyBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.w2(this.f30283a);
        }
    }

    /* loaded from: classes3.dex */
    class t0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ListView f30285a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30286b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f30287c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f30288d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t0(String str, long j4, String str2, ListView listView, int i2, int i4, int i5) {
            super(str, j4, str2);
            this.f30285a = listView;
            this.f30286b = i2;
            this.f30287c = i4;
            this.f30288d = i5;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.s2(this.f30285a, this.f30286b, this.f30287c, this.f30288d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentReplyBean f30290a;

        u(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
            this.f30290a = forumCommentReplyBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.x2(this.f30290a);
        }
    }

    /* loaded from: classes3.dex */
    class u0 extends a.c {
        u0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.r1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.c1();
        }
    }

    /* loaded from: classes3.dex */
    class v0 extends a.c {
        v0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.s1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30295a;

        w(int i2) {
            this.f30295a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.z2(this.f30295a);
        }
    }

    /* loaded from: classes3.dex */
    class w0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30297a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30298b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w0(String str, long j4, String str2, int i2, int i4) {
            super(str, j4, str2);
            this.f30297a = i2;
            this.f30298b = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.t1(this.f30297a, this.f30298b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.h3();
        }
    }

    /* loaded from: classes3.dex */
    class x0 extends a.c {
        x0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.l1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.M2();
        }
    }

    /* loaded from: classes3.dex */
    class y0 extends a.c {
        y0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.q1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.L2();
        }
    }

    /* loaded from: classes3.dex */
    class z0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30305a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z0(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f30305a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.x1(this.f30305a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static j1 A4(Fragment fragment) {
        return new j1(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f30065n0 = resources.getString(R.string.net_excption);
        this.f30068o0 = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        supportRequestWindowFeature(10);
        this.f30193r2.addAction(f1.a.H);
        this.f30193r2.addAction(f1.a.F);
        registerReceiver(this.f30194s2, this.f30193r2);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.f30074q0 = (ExtBean) extras.getSerializable("extBean");
    }

    public static j1 z4(Context context) {
        return new j1(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void F2(int i2) {
        org.androidannotations.api.b.e("", new p(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void G1(int i2, int i4) {
        org.androidannotations.api.a.l(new p0("", 0L, "", i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void H1() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void K2() {
        org.androidannotations.api.b.e("", new b0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void L2() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void M2() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void O2(String str) {
        org.androidannotations.api.a.l(new b1("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void S2() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void T2() {
        org.androidannotations.api.a.l(new q0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void W0(String str) {
        org.androidannotations.api.a.l(new a1("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void W1(int i2) {
        org.androidannotations.api.a.l(new l0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void X2() {
        org.androidannotations.api.a.l(new d1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void Z1() {
        org.androidannotations.api.b.e("", new m(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void a2(boolean z3, int i2) {
        org.androidannotations.api.b.e("", new i1(z3, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void b2() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void c3(ForumBean.ForumPostsBean forumPostsBean) {
        org.androidannotations.api.b.e("", new a0(forumPostsBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void d3() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void e1(int i2) {
        org.androidannotations.api.b.e("", new c(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void e2(String str) {
        org.androidannotations.api.b.e("", new i0(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void f2(String str) {
        org.androidannotations.api.b.e("", new j0(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f30192q2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void h1() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void h3() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void j1(int i2) {
        org.androidannotations.api.a.l(new o0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void j3(int i2) {
        org.androidannotations.api.b.e("", new n(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void k1(int i2) {
        org.androidannotations.api.a.l(new s0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void l1() {
        org.androidannotations.api.a.l(new x0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void l3(int i2, int i4) {
        org.androidannotations.api.b.e("", new f(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void m3(RewardType rewardType, int i2, int i4) {
        org.androidannotations.api.b.e("", new h(rewardType, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void n3(int i2) {
        org.androidannotations.api.b.e("", new d(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void o3(CharSequence charSequence) {
        org.androidannotations.api.b.e("", new g(charSequence), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f30191p2);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_post_activity);
    }

    @Override // com.join.mgps.activity.ForumPostsActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f30194s2);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30030a = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f30033b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f30036c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f30039d = (XListView4ForumPost) aVar.internalFindViewById(R.id.mg_forum_post_comment_list);
        this.f30042e = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f30045f = (LinearLayout) aVar.internalFindViewById(R.id.postFunction);
        this.f30048g = (TextView) aVar.internalFindViewById(R.id.postFuncHost);
        this.f30051h = (LinearLayout) aVar.internalFindViewById(R.id.postFuncMore);
        this.f30054i = (LinearLayout) aVar.internalFindViewById(R.id.layout_chat_cell_container);
        this.f30056j = (ClearEditText) aVar.internalFindViewById(R.id.edit_user_comment);
        this.f30058k = (Button) aVar.internalFindViewById(R.id.btn_chat_praise);
        this.f30060l = (Button) aVar.internalFindViewById(R.id.btn_chat_send);
        this.f30062m = (TextView) aVar.internalFindViewById(R.id.edit_comment_count);
        this.f30064n = (ImageView) aVar.internalFindViewById(R.id.image_add);
        this.f30067o = (TextView) aVar.internalFindViewById(R.id.footer_tip);
        this.f30070p = (Button) aVar.internalFindViewById(R.id.btn_chat_extension);
        this.f30073q = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_more);
        this.f30076r = aVar.internalFindViewById(R.id.chat_layout_extension);
        this.f30079s = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_extension_container);
        this.f30082t = (HListView) aVar.internalFindViewById(R.id.matchListView);
        this.C1 = (FrameLayout) aVar.internalFindViewById(R.id.videoContainer);
        this.D1 = (RelativeLayout) aVar.internalFindViewById(R.id.videoLayout);
        this.E1 = (MyVideoView) aVar.internalFindViewById(R.id.video);
        this.F1 = (SimpleDraweeView) aVar.internalFindViewById(R.id.cover);
        this.G1 = (ImageView) aVar.internalFindViewById(R.id.play);
        this.H1 = (LinearLayout) aVar.internalFindViewById(R.id.loadingLayout);
        this.Y1 = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        Button button = this.f30058k;
        if (button != null) {
            button.setOnClickListener(new v());
        }
        ImageView imageView = this.f30033b;
        if (imageView != null) {
            imageView.setOnClickListener(new g0());
        }
        Button button2 = this.f30060l;
        if (button2 != null) {
            button2.setOnClickListener(new r0());
        }
        Button button3 = this.f30070p;
        if (button3 != null) {
            button3.setOnClickListener(new c1());
        }
        ImageView imageView2 = this.f30064n;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new f1());
        }
        LinearLayout linearLayout = this.f30051h;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new g1());
        }
        TextView textView = this.f30048g;
        if (textView != null) {
            textView.setOnClickListener(new h1());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void p1() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f30192q2.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void q1() {
        org.androidannotations.api.a.l(new y0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void q2(String str, int i2, String str2) {
        org.androidannotations.api.a.l(new e1("", 0L, "", str, i2, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void r1() {
        org.androidannotations.api.a.l(new u0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void r2() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void r3() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void s1() {
        org.androidannotations.api.a.l(new v0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void s2(ListView listView, int i2, int i4, int i5) {
        org.androidannotations.api.a.l(new t0("", 0L, "", listView, i2, i4, i5));
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f30191p2.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new f0(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void startDown(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new h0(detailResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void t1(int i2, int i4) {
        org.androidannotations.api.a.l(new w0("", 0L, "", i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void t2(int i2) {
        org.androidannotations.api.b.e("", new r(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void u2(int i2) {
        org.androidannotations.api.b.e("", new s(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void v2(List<ForumBean.ForumCommentBean> list, int i2) {
        org.androidannotations.api.b.e("", new l(list, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void w2(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        org.androidannotations.api.b.e("", new t(forumCommentReplyBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void w3(AbsListView absListView, int i2, int i4, int i5) {
        org.androidannotations.api.b.e("", new d0(absListView, i2, i4, i5), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void x1(String str) {
        org.androidannotations.api.a.l(new z0("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void x2(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        org.androidannotations.api.b.e("", new u(forumCommentReplyBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void x3(AbsListView absListView, int i2) {
        org.androidannotations.api.b.e("", new c0(absListView, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void y2(ForumBean.ForumCommentBean forumCommentBean) {
        org.androidannotations.api.b.e("", new q(forumCommentBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void z2(int i2) {
        org.androidannotations.api.b.e("", new w(i2), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f30191p2.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f30191p2.a(this);
    }
}
