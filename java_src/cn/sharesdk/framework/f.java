package cn.sharesdk.framework;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import cn.sharesdk.framework.AgreementDialog;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ProvicyCanContinue;
import cn.sharesdk.framework.loopshare.MoblinkActionListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.tencent.qq.QQ;
import com.mob.MobSDK;
import com.mob.commons.ForbThrowable;
import com.mob.commons.dialog.PolicyThrowable;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.ResHelper;
import com.tencent.bugly.Bugly;
import java.lang.reflect.Field;
import java.util.HashMap;
/* compiled from: PlatformImpl.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private Platform f8851a;

    /* renamed from: b  reason: collision with root package name */
    private PlatformDb f8852b;

    /* renamed from: c  reason: collision with root package name */
    private d f8853c;

    /* renamed from: d  reason: collision with root package name */
    private int f8854d;

    /* renamed from: e  reason: collision with root package name */
    private int f8855e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8856f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f8857g = true;

    /* renamed from: h  reason: collision with root package name */
    private boolean f8858h;

    public f(Platform platform) {
        this.f8851a = platform;
        String name = platform.getName();
        this.f8852b = new PlatformDb(name, platform.getVersion());
        a(name);
        this.f8853c = new d();
        c.a();
    }

    private String b(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                switch (i2) {
                    case 5:
                        return "ACTION_SENDING_DIRECT_MESSAGE";
                    case 6:
                        return "ACTION_FOLLOWING_USER";
                    case 7:
                        return "ACTION_TIMELINE";
                    case 8:
                        return "ACTION_USER_INFOR";
                    case 9:
                        return "ACTION_SHARE";
                    case 10:
                        return "ACTION_GETTING_BILATERAL_LIST";
                    case 11:
                        return "ACTION_GETTING_FOLLOWER_LIST";
                    default:
                        return "ACTION_CUSTOMER";
                }
            }
            return "ACTION_GETTING_FRIEND_LIST";
        }
        return "ACTION_AUTHORIZING";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j() {
        if (ShareSDK.a()) {
            this.f8857g = !Bugly.SDK_IS_DEV.equals(a(this.f8851a.getPlatformId(), "covert_url", (String) null));
            this.f8851a.setNetworkDevinfo();
            return true;
        }
        try {
            if (ShareSDK.b()) {
                this.f8857g = !Bugly.SDK_IS_DEV.equals(a(this.f8851a.getPlatformId(), "covert_url", (String) null));
                this.f8851a.setNetworkDevinfo();
                return true;
            }
            return false;
        } catch (Throwable th) {
            SSDKLog.b().b(th);
            return false;
        }
    }

    private String k() {
        StringBuilder sb = new StringBuilder();
        try {
            if ("TencentWeibo".equals(this.f8851a.getName())) {
                SSDKLog.b().c("user id %s ==>>", g().getUserName());
                sb.append(Data.urlEncode(g().getUserName(), "utf-8"));
            } else {
                sb.append(Data.urlEncode(g().getUserId(), "utf-8"));
            }
            sb.append("|");
            sb.append(Data.urlEncode(g().get("secretType"), "utf-8"));
            sb.append("|");
            sb.append(Data.urlEncode(g().get("gender"), "utf-8"));
            sb.append("|");
            sb.append(Data.urlEncode(g().get("birthday"), "utf-8"));
            sb.append("|");
            sb.append(Data.urlEncode(g().get("educationJSONArrayStr"), "utf-8"));
            sb.append("|");
            sb.append(Data.urlEncode(g().get("workJSONArrayStr"), "utf-8"));
        } catch (Throwable th) {
            SSDKLog.b().b(th);
        }
        return sb.toString();
    }

    public boolean d() {
        return this.f8852b.isValid();
    }

    public boolean e() {
        return this.f8856f;
    }

    public boolean f() {
        return this.f8858h;
    }

    public PlatformDb g() {
        return this.f8852b;
    }

    public void h() {
        this.f8852b.removeAccount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PlatformActionListener i() {
        return this.f8853c;
    }

    public PlatformActionListener c() {
        return this.f8853c.a();
    }

    public String d(String str) {
        return ShareSDK.a(str);
    }

    public int b() {
        return this.f8855e;
    }

    protected void c(final int i2, final Object obj) {
        new Thread(a(i2)) { // from class: cn.sharesdk.framework.f.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (MobSDK.isForb() || !a.a()) {
                        return;
                    }
                    int isAuth = MobSDK.isAuth();
                    if (isAuth == 1 || isAuth == 2) {
                        f.this.j();
                        SSDKLog.b().a("The user is using the privacy version without a popup newThreadJob 001");
                    }
                } catch (Throwable th) {
                    SSDKLog b4 = SSDKLog.b();
                    b4.a("newThreadJob  " + th);
                }
            }
        }.start();
        new Thread() { // from class: cn.sharesdk.framework.f.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (MobSDK.isForb()) {
                        f fVar = f.this;
                        fVar.a(fVar.f8853c, i2);
                    } else {
                        try {
                            int isAuth = MobSDK.isAuth();
                            if (isAuth != 1 && isAuth != 2) {
                                if (f.this.f8853c != null) {
                                    f.this.f8853c.onError(f.this.f8851a, i2, new PolicyThrowable());
                                }
                            } else if (a.a()) {
                                if (f.this.f8851a.checkAuthorize(i2, obj)) {
                                    f.this.b(i2, obj);
                                    SSDKLog.b().a("The user is using the privacy version without a popup newThreadJob 002");
                                }
                            } else {
                                f fVar2 = f.this;
                                fVar2.b(fVar2.f8853c, i2);
                            }
                        } catch (Throwable unused) {
                            ProvicyCanContinue.a().a(new ProvicyCanContinue.OnBusinessListener() { // from class: cn.sharesdk.framework.f.4.1
                                @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                                public void onContinue() {
                                    if (a.a()) {
                                        Platform platform = f.this.f8851a;
                                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                        if (platform.checkAuthorize(i2, obj)) {
                                            AnonymousClass4 anonymousClass42 = AnonymousClass4.this;
                                            f.this.b(i2, obj);
                                        }
                                    } else {
                                        f fVar3 = f.this;
                                        fVar3.b(fVar3.f8853c, i2);
                                    }
                                    SSDKLog.b().a("The user is using the framed privacy version newThreadJob 002");
                                }

                                @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                                public void onError(Throwable th) {
                                    if (f.this.f8853c != null) {
                                        f.this.f8853c.onError(f.this.f8851a, i2, th);
                                    }
                                }

                                @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                                public void onStop() {
                                    if (f.this.f8853c != null) {
                                        f.this.f8853c.onError(f.this.f8851a, i2, new PolicyThrowable());
                                    }
                                }
                            });
                        }
                    }
                } catch (Throwable th) {
                    SSDKLog b4 = SSDKLog.b();
                    b4.a("new Thread(getThreadName(action)) " + th, new Object[0]);
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f6 -> B:61:0x0166). Please submit an issue!!! */
    public void b(int i2, Object obj) {
        Field[] fields;
        Object obj2;
        if (i2 == 1) {
            d dVar = this.f8853c;
            if (dVar != null) {
                dVar.onComplete(this.f8851a, 1, null);
            }
        } else if (i2 != 2) {
            switch (i2) {
                case 6:
                    this.f8851a.follow((String) obj);
                    return;
                case 7:
                    Object[] objArr = (Object[]) obj;
                    this.f8851a.timeline(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), (String) objArr[2]);
                    return;
                case 8:
                    this.f8851a.userInfor(obj != null ? (String) obj : null);
                    return;
                case 9:
                    final Platform.ShareParams shareParams = (Platform.ShareParams) obj;
                    HashMap<String, Object> map = shareParams.toMap();
                    for (Field field : shareParams.getClass().getFields()) {
                        if (map.get(field.getName()) == null) {
                            field.setAccessible(true);
                            try {
                                obj2 = field.get(shareParams);
                            } catch (Throwable th) {
                                SSDKLog.b().b(th);
                                obj2 = null;
                            }
                            if (obj2 != null) {
                                map.put(field.getName(), obj2);
                            }
                        }
                    }
                    d dVar2 = this.f8853c;
                    if (dVar2 instanceof d) {
                        dVar2.a(this.f8851a, shareParams);
                    }
                    try {
                        if (shareParams.getLoopshareCustomParams().size() > 0 && shareParams.getLoopshareCustomParams() != null) {
                            if (this.f8851a.getName().equals(QQ.NAME)) {
                                if (!TextUtils.isEmpty(shareParams.getTitleUrl())) {
                                    ShareSDK.mobLinkGetMobID(shareParams.getLoopshareCustomParams(), new MoblinkActionListener() { // from class: cn.sharesdk.framework.f.1
                                        @Override // cn.sharesdk.framework.loopshare.MoblinkActionListener
                                        public void onError(Throwable th2) {
                                            if (f.this.f8853c != null) {
                                                f.this.f8853c.onError(f.this.f8851a, 9, th2);
                                            }
                                        }

                                        @Override // cn.sharesdk.framework.loopshare.MoblinkActionListener
                                        public void onResult(Object obj3) {
                                            if (!TextUtils.isEmpty(Uri.parse(shareParams.getTitleUrl()).getEncodedQuery())) {
                                                Platform.ShareParams shareParams2 = shareParams;
                                                shareParams2.setTitleUrl(shareParams.getTitleUrl() + "&mobid=" + obj3);
                                            } else {
                                                Platform.ShareParams shareParams3 = shareParams;
                                                shareParams3.setTitleUrl(shareParams.getTitleUrl() + "?mobid=" + obj3);
                                            }
                                            new Thread() { // from class: cn.sharesdk.framework.f.1.1
                                                @Override // java.lang.Thread, java.lang.Runnable
                                                public void run() {
                                                    super.run();
                                                    f.this.f8851a.doShare(shareParams);
                                                }
                                            }.start();
                                        }
                                    });
                                } else if (this.f8853c != null) {
                                    this.f8853c.onError(this.f8851a, 9, new Throwable("TitleUrl cannot be empty if setLoopshareCustomParams is used in QQ"));
                                }
                            } else if (!TextUtils.isEmpty(shareParams.getUrl())) {
                                if (this.f8853c != null) {
                                    ShareSDK.mobLinkGetMobID(shareParams.getLoopshareCustomParams(), new MoblinkActionListener() { // from class: cn.sharesdk.framework.f.2
                                        @Override // cn.sharesdk.framework.loopshare.MoblinkActionListener
                                        public void onError(Throwable th2) {
                                            if (f.this.f8853c != null) {
                                                f.this.f8853c.onError(f.this.f8851a, 9, th2);
                                            }
                                        }

                                        @Override // cn.sharesdk.framework.loopshare.MoblinkActionListener
                                        public void onResult(Object obj3) {
                                            if (!TextUtils.isEmpty(Uri.parse(shareParams.getUrl()).getEncodedQuery())) {
                                                Platform.ShareParams shareParams2 = shareParams;
                                                shareParams2.setUrl(shareParams.getUrl() + "&mobid=" + obj3);
                                            } else {
                                                Platform.ShareParams shareParams3 = shareParams;
                                                shareParams3.setUrl(shareParams.getUrl() + "?mobid=" + obj3);
                                            }
                                            new Thread() { // from class: cn.sharesdk.framework.f.2.1
                                                @Override // java.lang.Thread, java.lang.Runnable
                                                public void run() {
                                                    super.run();
                                                    f.this.f8851a.doShare(shareParams);
                                                }
                                            }.start();
                                        }
                                    });
                                }
                            } else if (this.f8853c != null) {
                                this.f8853c.onError(this.f8851a, 9, new Throwable("SetUrl cannot be empty if setLoopshareCustomParams is used"));
                            }
                        } else {
                            this.f8851a.doShare(shareParams);
                        }
                    } catch (Throwable th2) {
                        SSDKLog.b().a("PlatformImpl platform.doshare() " + th2, new Object[0]);
                    }
                    return;
                default:
                    Object[] objArr2 = (Object[]) obj;
                    this.f8851a.doCustomerProtocol(String.valueOf(objArr2[0]), String.valueOf(objArr2[1]), i2, (HashMap) objArr2[2], (HashMap) objArr2[3]);
                    return;
            }
        } else {
            Object[] objArr3 = (Object[]) obj;
            this.f8851a.getFriendList(((Integer) objArr3[0]).intValue(), ((Integer) objArr3[1]).intValue(), (String) objArr3[2]);
        }
    }

    public void a(String str) {
        try {
            this.f8854d = ResHelper.parseInt(String.valueOf(ShareSDK.getDevinfo(str, "Id")).trim());
        } catch (Throwable unused) {
            if (!(this.f8851a instanceof CustomPlatform)) {
                SSDKLog b4 = SSDKLog.b();
                b4.a(this.f8851a.getName() + " failed to parse Id, this will cause method getId() always returens 0", new Object[0]);
            }
        }
        try {
            this.f8855e = ResHelper.parseInt(String.valueOf(ShareSDK.getDevinfo(str, "SortId")).trim());
        } catch (Throwable unused2) {
            if (!(this.f8851a instanceof CustomPlatform)) {
                SSDKLog b5 = SSDKLog.b();
                b5.a(this.f8851a.getName() + " failed to parse SortId, this won't cause any problem, don't worry", new Object[0]);
            }
        }
        String devinfo = ShareSDK.getDevinfo(str, "Enable");
        if (devinfo == null) {
            this.f8858h = true;
            if (!(this.f8851a instanceof CustomPlatform)) {
                SSDKLog b6 = SSDKLog.b();
                b6.a(this.f8851a.getName() + " failed to parse Enable, this will cause platform always be enable", new Object[0]);
            }
        } else {
            this.f8858h = "true".equals(devinfo.trim());
        }
        this.f8851a.initDevInfo(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Platform.ShareParams shareParams) {
        try {
            if (shareParams == null) {
                d dVar = this.f8853c;
                if (dVar != null) {
                    dVar.onError(this.f8851a, 9, new NullPointerException());
                    return;
                }
                return;
            }
            try {
                if (!shareParams.getOpenCustomEven()) {
                    ShareSDK.logDemoEvent(3, this.f8851a);
                }
            } catch (Throwable unused) {
            }
            c(9, shareParams);
        } catch (Throwable th) {
            SSDKLog.b().d(th);
        }
    }

    public void c(String str) {
        c(8, str);
    }

    public int a() {
        return this.f8854d;
    }

    public void a(PlatformActionListener platformActionListener) {
        this.f8853c.a(platformActionListener);
    }

    public void a(boolean z3) {
        this.f8856f = z3;
    }

    private String a(int i2) {
        return "ShareSDK_" + this.f8851a.getName() + "_" + b(i2);
    }

    public String a(int i2, String str, String str2) {
        String a4 = ShareSDK.a(i2, str);
        if (TextUtils.isEmpty(a4) || "null".equals(a4)) {
            Platform platform = this.f8851a;
            return platform.getDevinfo(platform.getName(), str2);
        }
        return a4;
    }

    public void a(int i2, Object obj) {
        this.f8853c.a(this.f8851a, i2, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(d dVar, int i2) {
        if (dVar != null) {
            dVar.onError(this.f8851a, i2, new ForbThrowable());
        }
    }

    public void a(final Platform.ShareParams shareParams) {
        if (shareParams == null) {
            d dVar = this.f8853c;
            if (dVar != null) {
                dVar.onError(this.f8851a, 9, new NullPointerException());
                return;
            }
            return;
        }
        new Thread(a(1)) { // from class: cn.sharesdk.framework.f.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    f.this.f8851a.subscribeAuth(shareParams);
                    SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "subscribeAuth start on PlatformImpl");
                } catch (Throwable th) {
                    SSDKLog b4 = SSDKLog.b();
                    b4.a(OnekeyShare.SHARESDK_TAG, " subscribeAuth catch " + th);
                }
            }
        }.start();
    }

    public void a(final String[] strArr) {
        try {
            if (MobSDK.isGppVer() && !cn.sharesdk.framework.a.a.e.a().h("no_use_gpp")) {
                if (!cn.sharesdk.framework.a.a.e.a().h("gpp_ver_sent")) {
                    AgreementDialog agreementDialog = new AgreementDialog();
                    agreementDialog.setShareParam(new AgreementDialog.OnDialogDismiss() { // from class: cn.sharesdk.framework.f.6
                        @Override // cn.sharesdk.framework.AgreementDialog.OnDialogDismiss
                        public void consent() {
                            cn.sharesdk.framework.a.a.e.a().a(true);
                            f.this.b(strArr);
                        }

                        @Override // cn.sharesdk.framework.AgreementDialog.OnDialogDismiss
                        public void refuse() {
                            if (f.this.f8853c != null) {
                                f.this.f8853c.onError(f.this.f8851a, 21, null);
                            }
                        }
                    });
                    agreementDialog.show(MobSDK.getContext(), null);
                } else {
                    b(strArr);
                }
            } else {
                b(strArr);
            }
        } catch (Throwable th) {
            SSDKLog.b().b(th);
            b(strArr);
        }
    }

    public void a(String str, int i2, int i4) {
        c(7, new Object[]{Integer.valueOf(i2), Integer.valueOf(i4), str});
    }

    public void a(int i2, int i4, String str) {
        c(2, new Object[]{Integer.valueOf(i2), Integer.valueOf(i4), str});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(d dVar, int i2) {
        if (dVar != null) {
            dVar.onError(this.f8851a, i2, new Throwable("'appkey' is illegal"));
        }
    }

    public void a(String str, String str2, short s3, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        c(s3 | 655360, new Object[]{str, str2, hashMap, hashMap2});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final String[] strArr) {
        new Thread(a(1)) { // from class: cn.sharesdk.framework.f.7
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (MobSDK.isForb() || !a.a()) {
                        return;
                    }
                    int isAuth = MobSDK.isAuth();
                    if (isAuth == 1 || isAuth == 2) {
                        f.this.j();
                        SSDKLog.b().a("The user is using the privacy version without a popup authorize 001");
                    }
                } catch (Throwable th) {
                    SSDKLog b4 = SSDKLog.b();
                    b4.a("authorize(final String[] permissions) " + th, new Object[0]);
                }
            }
        }.start();
        new Thread() { // from class: cn.sharesdk.framework.f.8
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (MobSDK.isForb()) {
                        f fVar = f.this;
                        fVar.a(fVar.f8853c, 1);
                    } else {
                        try {
                            int isAuth = MobSDK.isAuth();
                            if (isAuth != 1 && isAuth != 2) {
                                if (f.this.f8853c != null) {
                                    f.this.f8853c.onError(f.this.f8851a, 1, new PolicyThrowable());
                                }
                            } else if (a.a()) {
                                f.this.f8851a.doAuthorize(strArr);
                            } else {
                                f fVar2 = f.this;
                                fVar2.b(fVar2.f8853c, 1);
                            }
                        } catch (Throwable unused) {
                            ProvicyCanContinue.a().a(new ProvicyCanContinue.OnBusinessListener() { // from class: cn.sharesdk.framework.f.8.1
                                @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                                public void onContinue() {
                                    if (a.a()) {
                                        f.this.f8851a.doAuthorize(strArr);
                                    } else {
                                        f fVar3 = f.this;
                                        fVar3.b(fVar3.f8853c, 1);
                                    }
                                    SSDKLog.b().a("The user is using the privacy version with a pop-up box authorize 002");
                                }

                                @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                                public void onError(Throwable th) {
                                    if (f.this.f8853c != null) {
                                        f.this.f8853c.onError(f.this.f8851a, 1, new PolicyThrowable());
                                    }
                                }

                                @Override // cn.sharesdk.framework.ProvicyCanContinue.OnBusinessListener
                                public void onStop() {
                                    if (f.this.f8853c != null) {
                                        f.this.f8853c.onError(f.this.f8851a, 1, new PolicyThrowable());
                                    }
                                }
                            });
                        }
                    }
                } catch (Throwable th) {
                    SSDKLog b4 = SSDKLog.b();
                    b4.a("new Thread Platform.ACTION_AUTHORIZING " + th, new Object[0]);
                }
            }
        }.start();
    }

    public String a(String str, boolean z3) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!this.f8857g) {
            SSDKLog b4 = SSDKLog.b();
            b4.b("getShortLintk use time: " + (System.currentTimeMillis() - currentTimeMillis));
            return str;
        } else if (TextUtils.isEmpty(str)) {
            SSDKLog b5 = SSDKLog.b();
            b5.b("getShortLintk use time: " + (System.currentTimeMillis() - currentTimeMillis));
            return str;
        } else {
            String a4 = ShareSDK.a(str, z3, this.f8851a.getPlatformId(), k());
            SSDKLog b6 = SSDKLog.b();
            b6.b("getShortLintk use time: " + (System.currentTimeMillis() - currentTimeMillis));
            return a4;
        }
    }

    public void b(final Platform.ShareParams shareParams) {
        try {
            if (MobSDK.isGppVer() && !cn.sharesdk.framework.a.a.e.a().h("no_use_gpp")) {
                if (!cn.sharesdk.framework.a.a.e.a().h("gpp_ver_sent")) {
                    AgreementDialog agreementDialog = new AgreementDialog();
                    agreementDialog.setShareParam(new AgreementDialog.OnDialogDismiss() { // from class: cn.sharesdk.framework.f.9
                        @Override // cn.sharesdk.framework.AgreementDialog.OnDialogDismiss
                        public void consent() {
                            cn.sharesdk.framework.a.a.e.a().a(true);
                            f.this.c(shareParams);
                        }

                        @Override // cn.sharesdk.framework.AgreementDialog.OnDialogDismiss
                        public void refuse() {
                            if (f.this.f8853c != null) {
                                f.this.f8853c.onError(f.this.f8851a, 21, new Throwable("The user rejected the request to read the applist"));
                            }
                        }
                    });
                    agreementDialog.show(MobSDK.getContext(), null);
                    return;
                }
                c(shareParams);
                return;
            }
            c(shareParams);
        } catch (Throwable unused) {
            c(shareParams);
        }
    }

    public String a(Bitmap bitmap) {
        return ShareSDK.a(bitmap);
    }

    public void b(String str) {
        c(6, str);
    }
}
