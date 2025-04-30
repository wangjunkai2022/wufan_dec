package com.ss.android.socialbase.appdownloader;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.downloader.constants.EnqueueType;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.af;
import com.ss.android.socialbase.downloader.depend.m;
import com.ss.android.socialbase.downloader.depend.n;
import com.ss.android.socialbase.downloader.depend.r;
import com.ss.android.socialbase.downloader.depend.x;
import com.ss.android.socialbase.downloader.downloader.s;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: AppTaskBuilder.java */
/* loaded from: classes4.dex */
public class f {
    private boolean A;
    private int C;
    private boolean D;
    private String E;
    private boolean G;
    private boolean H;
    private boolean I;
    private int L;
    private x N;
    private n O;
    private com.ss.android.socialbase.appdownloader.c.e P;
    private IDownloadFileUriProvider Q;
    private r R;
    private boolean S;
    private af T;
    private boolean U;
    private JSONObject V;
    private String W;
    private int Y;
    private long Z;

    /* renamed from: a  reason: collision with root package name */
    private Activity f57657a;
    private int aa;
    private boolean ab;
    private String ae;
    private int[] af;

    /* renamed from: b  reason: collision with root package name */
    private Context f57658b;

    /* renamed from: c  reason: collision with root package name */
    private String f57659c;

    /* renamed from: d  reason: collision with root package name */
    private List<String> f57660d;

    /* renamed from: e  reason: collision with root package name */
    private String f57661e;

    /* renamed from: f  reason: collision with root package name */
    private String f57662f;

    /* renamed from: g  reason: collision with root package name */
    private String f57663g;

    /* renamed from: h  reason: collision with root package name */
    private List<com.ss.android.socialbase.downloader.model.c> f57664h;

    /* renamed from: m  reason: collision with root package name */
    private IDownloadListener f57669m;

    /* renamed from: n  reason: collision with root package name */
    private IDownloadListener f57670n;

    /* renamed from: o  reason: collision with root package name */
    private String f57671o;

    /* renamed from: q  reason: collision with root package name */
    private boolean f57673q;

    /* renamed from: r  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.g f57674r;

    /* renamed from: s  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.h f57675s;

    /* renamed from: t  reason: collision with root package name */
    private s f57676t;

    /* renamed from: u  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.notification.a f57677u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f57678v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f57679w;

    /* renamed from: x  reason: collision with root package name */
    private String f57680x;

    /* renamed from: y  reason: collision with root package name */
    private String f57681y;

    /* renamed from: z  reason: collision with root package name */
    private long f57682z;

    /* renamed from: i  reason: collision with root package name */
    private boolean f57665i = true;

    /* renamed from: j  reason: collision with root package name */
    private boolean f57666j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f57667k = true;

    /* renamed from: l  reason: collision with root package name */
    private boolean f57668l = false;

    /* renamed from: p  reason: collision with root package name */
    private String f57672p = AdBaseConstants.MIME_APK;
    private int B = 5;
    private boolean F = true;
    private EnqueueType J = EnqueueType.ENQUEUE_NONE;
    private int K = 150;
    private boolean M = true;
    private List<m> X = new ArrayList();
    private boolean ac = true;
    private boolean ad = true;

    public f(@NonNull Context context, @NonNull String str) {
        this.f57658b = context.getApplicationContext();
        this.f57659c = str;
    }

    public boolean A() {
        return this.F;
    }

    public boolean B() {
        return this.G;
    }

    public s C() {
        return this.f57676t;
    }

    public int D() {
        return this.K;
    }

    public int E() {
        return this.L;
    }

    public boolean F() {
        return this.H;
    }

    public boolean G() {
        return this.I;
    }

    public boolean H() {
        return this.M;
    }

    public boolean I() {
        return this.S;
    }

    public EnqueueType J() {
        return this.J;
    }

    public boolean K() {
        return this.A;
    }

    public String L() {
        return this.f57662f;
    }

    public x M() {
        return this.N;
    }

    public n N() {
        return this.O;
    }

    public com.ss.android.socialbase.appdownloader.c.e O() {
        return this.P;
    }

    public IDownloadFileUriProvider P() {
        return this.Q;
    }

    public af Q() {
        return this.T;
    }

    public List<m> R() {
        return this.X;
    }

    public boolean S() {
        return this.U;
    }

    public int T() {
        return this.Y;
    }

    public long U() {
        return this.Z;
    }

    public boolean V() {
        return this.ad;
    }

    public String W() {
        return this.ae;
    }

    public int[] X() {
        return this.af;
    }

    public boolean Y() {
        return this.ab;
    }

    public boolean Z() {
        return this.ac;
    }

    public String a() {
        return this.f57659c;
    }

    public String aa() {
        return this.W;
    }

    public List<String> ab() {
        return this.f57660d;
    }

    public r ac() {
        return this.R;
    }

    public JSONObject ad() {
        return this.V;
    }

    public String b() {
        return this.f57661e;
    }

    public String c() {
        return this.f57663g;
    }

    public List<com.ss.android.socialbase.downloader.model.c> d() {
        return this.f57664h;
    }

    public boolean e() {
        return this.f57665i;
    }

    public boolean f() {
        return this.f57666j;
    }

    public boolean g() {
        return this.f57667k;
    }

    public Activity getActivity() {
        return this.f57657a;
    }

    public Context getContext() {
        return this.f57658b;
    }

    public boolean h() {
        return this.f57668l;
    }

    public IDownloadListener i() {
        return this.f57669m;
    }

    public IDownloadListener j() {
        return this.f57670n;
    }

    public String k() {
        return this.f57671o;
    }

    public String l() {
        return this.f57672p;
    }

    public boolean m() {
        return this.f57673q;
    }

    public com.ss.android.socialbase.downloader.notification.a n() {
        return this.f57677u;
    }

    public com.ss.android.socialbase.downloader.downloader.h o() {
        return this.f57675s;
    }

    public com.ss.android.socialbase.downloader.downloader.g p() {
        return this.f57674r;
    }

    public boolean q() {
        return this.f57678v;
    }

    public boolean r() {
        return this.f57679w;
    }

    public int s() {
        return this.aa;
    }

    public String t() {
        return this.f57680x;
    }

    public String u() {
        return this.f57681y;
    }

    public long v() {
        return this.f57682z;
    }

    public int w() {
        return this.B;
    }

    public int x() {
        return this.C;
    }

    public boolean y() {
        return this.D;
    }

    public String z() {
        return this.E;
    }

    public void a(int i2) {
        this.aa = i2;
    }

    public f b(String str) {
        this.f57662f = str;
        return this;
    }

    public f c(@NonNull String str) {
        this.f57663g = str;
        return this;
    }

    public f d(String str) {
        this.f57671o = str;
        return this;
    }

    public f e(String str) {
        this.f57672p = str;
        return this;
    }

    public f f(boolean z3) {
        this.f57679w = z3;
        return this;
    }

    public f g(String str) {
        this.f57681y = str;
        return this;
    }

    public f h(String str) {
        this.E = str;
        return this;
    }

    public f i(boolean z3) {
        this.F = z3;
        return this;
    }

    public f j(boolean z3) {
        this.G = z3;
        return this;
    }

    public f k(boolean z3) {
        this.H = z3;
        return this;
    }

    public f l(boolean z3) {
        this.I = z3;
        return this;
    }

    public f m(boolean z3) {
        this.M = z3;
        return this;
    }

    public f n(boolean z3) {
        this.A = z3;
        return this;
    }

    public f o(boolean z3) {
        this.ab = z3;
        return this;
    }

    public f p(boolean z3) {
        this.ac = z3;
        return this;
    }

    public f a(String str) {
        this.f57661e = str;
        return this;
    }

    public f b(boolean z3) {
        this.f57666j = z3;
        return this;
    }

    public f c(boolean z3) {
        this.f57668l = z3;
        return this;
    }

    public f d(boolean z3) {
        this.f57673q = z3;
        return this;
    }

    public f e(boolean z3) {
        this.f57678v = z3;
        return this;
    }

    public f f(String str) {
        this.f57680x = str;
        return this;
    }

    public f g(boolean z3) {
        this.D = z3;
        return this;
    }

    public f h(boolean z3) {
        this.S = z3;
        return this;
    }

    public f i(String str) {
        this.ae = str;
        return this;
    }

    public f j(String str) {
        this.W = str;
        return this;
    }

    public f a(List<com.ss.android.socialbase.downloader.model.c> list) {
        this.f57664h = list;
        return this;
    }

    public f b(int i2) {
        this.B = i2;
        return this;
    }

    public f c(int i2) {
        this.C = i2;
        return this;
    }

    public f d(int i2) {
        this.K = i2;
        return this;
    }

    public f e(int i2) {
        this.L = i2;
        return this;
    }

    public f f(int i2) {
        this.Y = i2;
        return this;
    }

    public f a(boolean z3) {
        this.f57665i = z3;
        return this;
    }

    public f b(List<String> list) {
        this.f57660d = list;
        return this;
    }

    public f a(IDownloadListener iDownloadListener) {
        this.f57669m = iDownloadListener;
        return this;
    }

    public f a(long j4) {
        this.f57682z = j4;
        return this;
    }

    public f a(EnqueueType enqueueType) {
        this.J = enqueueType;
        return this;
    }

    public f a(IDownloadFileUriProvider iDownloadFileUriProvider) {
        this.Q = iDownloadFileUriProvider;
        return this;
    }

    public f a(r rVar) {
        this.R = rVar;
        return this;
    }

    public f a(JSONObject jSONObject) {
        this.V = jSONObject;
        return this;
    }

    public f a(m mVar) {
        synchronized (this.X) {
            if (mVar != null) {
                if (!this.X.contains(mVar)) {
                    this.X.add(mVar);
                    return this;
                }
            }
            return this;
        }
    }
}
