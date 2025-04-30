package com.ss.android.downloadad.api.a;

import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.DeepLink;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadEventConfig;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.j;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: NativeDownloadModel.java */
/* loaded from: classes4.dex */
public class b implements a {
    private long A;
    private long B;
    private long C;
    private int D;
    private int E;
    private String F;
    private boolean G;
    private String H;
    private boolean I;
    private boolean J;
    private boolean K;
    private String L;
    private String M;
    private boolean N;
    private boolean O;
    private int P;
    @AdBaseConstants.FunnelType
    private int Q;
    private long R;
    private long S;
    private boolean T;
    private boolean U;
    private String V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private long Z;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f56983a;
    private transient boolean aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private boolean af;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f56984b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicBoolean f56985c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f56986d;

    /* renamed from: e  reason: collision with root package name */
    private long f56987e;

    /* renamed from: f  reason: collision with root package name */
    private long f56988f;

    /* renamed from: g  reason: collision with root package name */
    private String f56989g;

    /* renamed from: h  reason: collision with root package name */
    private int f56990h;

    /* renamed from: i  reason: collision with root package name */
    private String f56991i;

    /* renamed from: j  reason: collision with root package name */
    private String f56992j;

    /* renamed from: k  reason: collision with root package name */
    private String f56993k;

    /* renamed from: l  reason: collision with root package name */
    private String f56994l;

    /* renamed from: m  reason: collision with root package name */
    private int f56995m;

    /* renamed from: n  reason: collision with root package name */
    private int f56996n;

    /* renamed from: o  reason: collision with root package name */
    private int f56997o;

    /* renamed from: p  reason: collision with root package name */
    private int f56998p;

    /* renamed from: q  reason: collision with root package name */
    private String f56999q;

    /* renamed from: r  reason: collision with root package name */
    private String f57000r;

    /* renamed from: s  reason: collision with root package name */
    private String f57001s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f57002t;

    /* renamed from: u  reason: collision with root package name */
    private long f57003u;

    /* renamed from: v  reason: collision with root package name */
    private JSONObject f57004v;

    /* renamed from: w  reason: collision with root package name */
    private int f57005w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f57006x;

    /* renamed from: y  reason: collision with root package name */
    private int f57007y;

    /* renamed from: z  reason: collision with root package name */
    private int f57008z;

    private b() {
        this.f56990h = 1;
        this.f57002t = true;
        this.f57006x = false;
        this.f57007y = 0;
        this.f57008z = 0;
        this.G = false;
        this.I = false;
        this.J = true;
        this.K = true;
        this.f56983a = true;
        this.f56984b = true;
        this.f56985c = new AtomicBoolean(false);
        this.f56986d = new AtomicBoolean(false);
        this.Q = 1;
        this.T = true;
        this.Z = -1L;
    }

    public synchronized void A() {
        this.f57008z++;
    }

    public long B() {
        long j4 = this.A;
        return j4 == 0 ? this.f57003u : j4;
    }

    public long C() {
        return this.B;
    }

    public int D() {
        return this.D;
    }

    public int E() {
        return this.E;
    }

    public String F() {
        return this.F;
    }

    public int G() {
        return this.f56990h;
    }

    public long H() {
        return this.f57003u;
    }

    public int I() {
        return this.f56998p;
    }

    public String J() {
        return this.f56999q;
    }

    public int K() {
        return this.P;
    }

    public boolean L() {
        return this.f57006x;
    }

    public long M() {
        return this.Z;
    }

    public String N() {
        return this.f57000r;
    }

    public int O() {
        return this.f56996n;
    }

    public String P() {
        return this.V;
    }

    public boolean Q() {
        return this.X;
    }

    public boolean R() {
        return this.O;
    }

    public boolean S() {
        return this.Y;
    }

    public long T() {
        return this.R;
    }

    public long U() {
        return this.S;
    }

    public boolean V() {
        return this.G;
    }

    public String W() {
        return this.H;
    }

    public boolean X() {
        return this.I;
    }

    public boolean Y() {
        return this.aa;
    }

    public boolean Z() {
        return this.ab;
    }

    public void a(int i2) {
        this.f57007y = i2;
    }

    public boolean aa() {
        return this.ad;
    }

    public boolean ab() {
        return this.ac;
    }

    public boolean ac() {
        return this.ae;
    }

    public boolean ad() {
        return this.af;
    }

    public JSONObject ae() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mId", this.f56987e);
            jSONObject.put("mExtValue", this.f56988f);
            jSONObject.put("mLogExtra", this.f56989g);
            jSONObject.put("mDownloadStatus", this.f56990h);
            jSONObject.put("mPackageName", this.f56991i);
            jSONObject.put("mIsAd", this.f57002t);
            jSONObject.put("mTimeStamp", this.f57003u);
            jSONObject.put("mExtras", this.f57004v);
            jSONObject.put("mVersionCode", this.f56998p);
            jSONObject.put("mVersionName", this.f56999q);
            jSONObject.put("mDownloadId", this.f57005w);
            jSONObject.put("mIsV3Event", this.N);
            jSONObject.put("mScene", this.P);
            jSONObject.put("mEventTag", this.L);
            jSONObject.put("mEventRefer", this.M);
            jSONObject.put("mDownloadUrl", this.f56992j);
            jSONObject.put("mEnableBackDialog", this.f57006x);
            jSONObject.put("hasSendInstallFinish", this.f56985c.get());
            jSONObject.put("hasSendDownloadFailedFinally", this.f56986d.get());
            jSONObject.put("mLastFailedErrCode", this.E);
            jSONObject.put("mLastFailedErrMsg", this.F);
            jSONObject.put("mOpenUrl", this.f56993k);
            jSONObject.put("mLinkMode", this.f56996n);
            jSONObject.put("mDownloadMode", this.f56997o);
            jSONObject.put("mModelType", this.f56995m);
            jSONObject.put("mAppName", this.f57000r);
            jSONObject.put("mAppIcon", this.f57001s);
            jSONObject.put("mDownloadFailedTimes", this.f57007y);
            long j4 = this.A;
            if (j4 == 0) {
                j4 = this.f57003u;
            }
            jSONObject.put("mRecentDownloadResumeTime", j4);
            jSONObject.put("mClickPauseTimes", this.f57008z);
            jSONObject.put("mJumpInstallTime", this.B);
            jSONObject.put("mCancelInstallTime", this.C);
            jSONObject.put("mLastFailedResumeCount", this.D);
            jSONObject.put("mIsUpdateDownload", this.G);
            jSONObject.put("mOriginMimeType", this.H);
            jSONObject.put("mIsPatchApplyHandled", this.I);
            jSONObject.put("downloadFinishReason", this.V);
            jSONObject.put("clickDownloadTime", this.R);
            jSONObject.put("clickDownloadSize", this.S);
            jSONObject.put("installAfterCleanSpace", this.O);
            jSONObject.put("funnelType", this.Q);
            jSONObject.put("webUrl", this.f56994l);
            jSONObject.put("enableShowComplianceDialog", this.T);
            jSONObject.put("isAutoDownloadOnCardShow", this.U);
            int i2 = 1;
            jSONObject.put("enable_new_activity", this.J ? 1 : 0);
            jSONObject.put("enable_pause", this.K ? 1 : 0);
            jSONObject.put("enable_ah", this.f56983a ? 1 : 0);
            if (!this.f56984b) {
                i2 = 0;
            }
            jSONObject.put("enable_am", i2);
        } catch (Exception e4) {
            j.s().a(e4, "NativeDownloadModel toJson");
        }
        return jSONObject;
    }

    public AdDownloadModel af() {
        return new AdDownloadModel.Builder().setAdId(this.f56987e).setExtraValue(this.f56988f).setLogExtra(this.f56989g).setPackageName(this.f56991i).setExtra(this.f57004v).setIsAd(this.f57002t).setVersionCode(this.f56998p).setVersionName(this.f56999q).setDownloadUrl(this.f56992j).setModelType(this.f56995m).setMimeType(this.H).setAppName(this.f57000r).setAppIcon(this.f57001s).setDeepLink(new DeepLink(this.f56993k, this.f56994l, null)).build();
    }

    public AdDownloadEventConfig ag() {
        return new AdDownloadEventConfig.Builder().setClickButtonTag(this.L).setRefer(this.M).setIsEnableV3Event(this.N).build();
    }

    public AdDownloadController ah() {
        return new AdDownloadController.Builder().setIsEnableBackDialog(this.f57006x).setLinkMode(this.f56996n).setDownloadMode(this.f56997o).setEnableShowComplianceDialog(this.T).setEnableAH(this.f56983a).setEnableAM(this.f56984b).build();
    }

    public void b(int i2) {
        this.f57008z = i2;
    }

    public void c(long j4) {
        this.C = j4;
    }

    public void d(int i2) {
        this.E = i2;
    }

    public void e(long j4) {
        this.f56988f = j4;
    }

    public void f(long j4) {
        if (j4 > 0) {
            this.f57003u = j4;
        }
    }

    @Override // com.ss.android.downloadad.api.a.a
    public JSONObject g() {
        return this.f57004v;
    }

    public void h(int i2) {
        this.P = i2;
    }

    public void i(int i2) {
        this.Q = i2;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String j() {
        return this.L;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public JSONObject k() {
        return null;
    }

    public void k(String str) {
        this.f57001s = str;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public long l() {
        return this.f56988f;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public boolean m() {
        return this.N;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public List<String> n() {
        return null;
    }

    public void n(boolean z3) {
        this.ae = z3;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public Object o() {
        return null;
    }

    public void o(boolean z3) {
        this.af = z3;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public JSONObject p() {
        return null;
    }

    public void p(boolean z3) {
        this.T = z3;
    }

    public void q(boolean z3) {
        this.U = z3;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public JSONObject r() {
        return null;
    }

    public void r(boolean z3) {
        this.J = z3;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public int s() {
        return this.f57005w;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public int t() {
        return -1;
    }

    public void t(boolean z3) {
        this.f56983a = z3;
    }

    public void u(boolean z3) {
        this.f56984b = z3;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public DownloadEventConfig v() {
        return ag();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public DownloadController w() {
        return ah();
    }

    public int x() {
        return this.f57007y;
    }

    public synchronized void y() {
        this.f57007y++;
    }

    public int z() {
        return this.f57008z;
    }

    public void a(long j4) {
        this.A = j4;
    }

    public void b(long j4) {
        this.B = j4;
    }

    public void c(int i2) {
        this.D = i2;
    }

    public void d(long j4) {
        this.f56987e = j4;
    }

    public void e(int i2) {
        this.f56990h = i2;
    }

    public void f(int i2) {
        this.f56998p = i2;
    }

    public void g(int i2) {
        this.f57005w = i2;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public int h() {
        return this.Q;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String i() {
        return this.M;
    }

    public void j(String str) {
        this.f57000r = str;
    }

    public void k(int i2) {
        this.f56997o = i2;
    }

    public void l(int i2) {
        this.f56995m = i2;
    }

    public void m(String str) {
        this.H = str;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public boolean q() {
        return this.J;
    }

    public void s(boolean z3) {
        this.K = z3;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public DownloadModel u() {
        return af();
    }

    public void a(String str) {
        this.F = str;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public long b() {
        return this.f56987e;
    }

    public void c(String str) {
        this.f56989g = str;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String d() {
        return this.f56989g;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String e() {
        return this.f56991i;
    }

    public void f(String str) {
        this.L = str;
    }

    public void g(String str) {
        this.M = str;
    }

    public void h(String str) {
        this.f56992j = str;
    }

    public void i(String str) {
        this.f56993k = str;
    }

    public void j(int i2) {
        this.f56996n = i2;
    }

    public void k(boolean z3) {
        this.ab = z3;
    }

    public void l(String str) {
        this.V = str;
    }

    public void m(boolean z3) {
        this.ac = z3;
    }

    public void a(boolean z3) {
        this.f57002t = z3;
    }

    public void b(String str) {
        this.f56991i = str;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public boolean c() {
        return this.f57002t;
    }

    public void d(String str) {
        this.f56999q = str;
    }

    public void e(String str) {
        this.f56994l = str;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String f() {
        return this.f56993k;
    }

    public void g(long j4) {
        this.Z = j4;
    }

    public void h(long j4) {
        this.R = j4;
    }

    public void i(long j4) {
        this.S = j4;
    }

    public void j(boolean z3) {
        this.aa = z3;
    }

    public void l(boolean z3) {
        this.ad = z3;
    }

    public void a(JSONObject jSONObject) {
        this.f57004v = jSONObject;
    }

    public void b(boolean z3) {
        this.N = z3;
    }

    public void c(boolean z3) {
        this.f57006x = z3;
    }

    public void d(boolean z3) {
        this.W = z3;
    }

    public void e(boolean z3) {
        this.X = z3;
    }

    public void f(boolean z3) {
        this.O = z3;
    }

    public void g(boolean z3) {
        this.Y = z3;
    }

    public void h(boolean z3) {
        this.G = z3;
    }

    public void i(boolean z3) {
        this.I = z3;
    }

    public static b b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        b bVar = new b();
        try {
            bVar.d(com.ss.android.download.api.c.b.a(jSONObject, "mId"));
            bVar.e(com.ss.android.download.api.c.b.a(jSONObject, "mExtValue"));
            bVar.c(jSONObject.optString("mLogExtra"));
            bVar.e(jSONObject.optInt("mDownloadStatus"));
            bVar.b(jSONObject.optString("mPackageName"));
            boolean z3 = true;
            bVar.a(jSONObject.optBoolean("mIsAd", true));
            bVar.f(com.ss.android.download.api.c.b.a(jSONObject, "mTimeStamp"));
            bVar.f(jSONObject.optInt("mVersionCode"));
            bVar.d(jSONObject.optString("mVersionName"));
            bVar.g(jSONObject.optInt("mDownloadId"));
            bVar.b(jSONObject.optBoolean("mIsV3Event"));
            bVar.h(jSONObject.optInt("mScene"));
            bVar.f(jSONObject.optString("mEventTag"));
            bVar.g(jSONObject.optString("mEventRefer"));
            bVar.h(jSONObject.optString("mDownloadUrl"));
            bVar.c(jSONObject.optBoolean("mEnableBackDialog"));
            bVar.f56985c.set(jSONObject.optBoolean("hasSendInstallFinish"));
            bVar.f56986d.set(jSONObject.optBoolean("hasSendDownloadFailedFinally"));
            bVar.d(jSONObject.optInt("mLastFailedErrCode"));
            bVar.a(jSONObject.optString("mLastFailedErrMsg"));
            bVar.i(jSONObject.optString("mOpenUrl"));
            bVar.j(jSONObject.optInt("mLinkMode"));
            bVar.k(jSONObject.optInt("mDownloadMode"));
            bVar.l(jSONObject.optInt("mModelType"));
            bVar.j(jSONObject.optString("mAppName"));
            bVar.k(jSONObject.optString("mAppIcon"));
            bVar.a(jSONObject.optInt("mDownloadFailedTimes", 0));
            bVar.a(com.ss.android.download.api.c.b.a(jSONObject, "mRecentDownloadResumeTime"));
            bVar.b(jSONObject.optInt("mClickPauseTimes"));
            bVar.b(com.ss.android.download.api.c.b.a(jSONObject, "mJumpInstallTime"));
            bVar.c(com.ss.android.download.api.c.b.a(jSONObject, "mCancelInstallTime"));
            bVar.c(jSONObject.optInt("mLastFailedResumeCount"));
            bVar.l(jSONObject.optString("downloadFinishReason"));
            bVar.i(jSONObject.optLong("clickDownloadSize"));
            bVar.h(jSONObject.optLong("clickDownloadTime"));
            bVar.h(jSONObject.optBoolean("mIsUpdateDownload"));
            bVar.m(jSONObject.optString("mOriginMimeType"));
            bVar.i(jSONObject.optBoolean("mIsPatchApplyHandled"));
            bVar.f(jSONObject.optBoolean("installAfterCleanSpace"));
            bVar.i(jSONObject.optInt("funnelType", 1));
            bVar.e(jSONObject.optString("webUrl"));
            bVar.p(jSONObject.optBoolean("enableShowComplianceDialog", true));
            bVar.q(jSONObject.optBoolean("isAutoDownloadOnCardShow"));
            bVar.r(jSONObject.optInt("enable_new_activity", 1) == 1);
            bVar.s(jSONObject.optInt("enable_pause", 1) == 1);
            bVar.t(jSONObject.optInt("enable_ah", 1) == 1);
            if (jSONObject.optInt("enable_am", 1) != 1) {
                z3 = false;
            }
            bVar.u(z3);
            bVar.a(jSONObject.optJSONObject("mExtras"));
        } catch (Exception e4) {
            j.s().a(e4, "NativeDownloadModel fromJson");
        }
        return bVar;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String a() {
        return this.f56992j;
    }

    public b(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        this(downloadModel, downloadEventConfig, downloadController, 0);
    }

    public b(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, int i2) {
        this.f56990h = 1;
        this.f57002t = true;
        this.f57006x = false;
        this.f57007y = 0;
        this.f57008z = 0;
        this.G = false;
        this.I = false;
        this.J = true;
        this.K = true;
        this.f56983a = true;
        this.f56984b = true;
        this.f56985c = new AtomicBoolean(false);
        this.f56986d = new AtomicBoolean(false);
        this.Q = 1;
        this.T = true;
        this.Z = -1L;
        this.f56987e = downloadModel.getId();
        this.f56988f = downloadModel.getExtraValue();
        this.f56989g = downloadModel.getLogExtra();
        this.f56991i = downloadModel.getPackageName();
        this.f57004v = downloadModel.getExtra();
        this.f57002t = downloadModel.isAd();
        this.f56998p = downloadModel.getVersionCode();
        this.f56999q = downloadModel.getVersionName();
        this.f56992j = downloadModel.getDownloadUrl();
        if (downloadModel.getDeepLink() != null) {
            this.f56993k = downloadModel.getDeepLink().getOpenUrl();
            this.f56994l = downloadModel.getDeepLink().getWebUrl();
        }
        this.f56995m = downloadModel.getModelType();
        this.f57000r = downloadModel.getName();
        this.f57001s = downloadModel.getAppIcon();
        this.H = downloadModel.getMimeType();
        this.L = downloadEventConfig.getClickButtonTag();
        this.M = downloadEventConfig.getRefer();
        this.N = downloadEventConfig.isEnableV3Event();
        this.f57006x = downloadController.isEnableBackDialog();
        this.f56996n = downloadController.getLinkMode();
        this.f56997o = downloadController.getDownloadMode();
        this.T = downloadController.enableShowComplianceDialog();
        this.U = downloadController.isAutoDownloadOnCardShow();
        this.J = downloadController.enableNewActivity();
        this.f56983a = downloadController.enableAH();
        this.f56984b = downloadController.enableAM();
        this.f57005w = i2;
        long currentTimeMillis = System.currentTimeMillis();
        this.f57003u = currentTimeMillis;
        this.A = currentTimeMillis;
        this.I = downloadModel.shouldDownloadWithPatchApply();
    }
}
