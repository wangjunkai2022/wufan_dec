package com.papa.sim.statistic;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.g0;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
/* compiled from: StatCore.java */
/* loaded from: classes4.dex */
public class o {

    /* renamed from: o  reason: collision with root package name */
    private static o f55549o;

    /* renamed from: c  reason: collision with root package name */
    private com.papa.sim.statistic.db.b f55555c;

    /* renamed from: d  reason: collision with root package name */
    private Context f55556d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55557e;

    /* renamed from: j  reason: collision with root package name */
    private static Map<String, String> f55544j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    public static String f55545k = "http://datainterface.5fun.com";

    /* renamed from: l  reason: collision with root package name */
    public static String f55546l = "http://cjapi.5fun.com";

    /* renamed from: m  reason: collision with root package name */
    public static String f55547m = "http://anv9.ctapi.5fun.com";

    /* renamed from: n  reason: collision with root package name */
    public static String f55548n = "http://anv9.ctapi.5fun.com";

    /* renamed from: p  reason: collision with root package name */
    public static String f55550p = "";

    /* renamed from: q  reason: collision with root package name */
    public static String f55551q = "";

    /* renamed from: r  reason: collision with root package name */
    public static String f55552r = "";

    /* renamed from: a  reason: collision with root package name */
    private String f55553a = "StatCore";

    /* renamed from: b  reason: collision with root package name */
    private boolean f55554b = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f55558f = false;

    /* renamed from: g  reason: collision with root package name */
    boolean f55559g = false;

    /* renamed from: h  reason: collision with root package name */
    boolean f55560h = false;

    /* renamed from: i  reason: collision with root package name */
    boolean f55561i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatCore.java */
    /* loaded from: classes4.dex */
    public class a implements com.papa.sim.statistic.http.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f55562a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.db.d f55563b;

        a(Context context, com.papa.sim.statistic.db.d dVar) {
            this.f55562a = context;
            this.f55563b = dVar;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            exc.printStackTrace();
            if (this.f55563b.f() == 0) {
                String unused = o.this.f55553a;
                StringBuilder sb = new StringBuilder();
                sb.append("method [onFailure]:send failed. statisticTable.id= ");
                sb.append(this.f55563b.e());
                sb.append(";time=");
                sb.append(this.f55563b.i());
                o.this.f55555c.v(this.f55563b.getType(), this.f55563b.i());
                return;
            }
            String unused2 = o.this.f55553a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("method [onFailure]:send failed. statisticTable.id= ");
            sb2.append(this.f55563b.e());
            sb2.append(";time=");
            sb2.append(this.f55563b.i());
            o.this.f55555c.r(this.f55563b);
        }

        @Override // com.papa.sim.statistic.http.a
        public void onSuccess(Object obj) {
            File file = new File(o.this.g(this.f55562a, this.f55563b).getExt().getLogFile());
            if (file.exists()) {
                file.delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatCore.java */
    /* loaded from: classes4.dex */
    public class b implements com.papa.sim.statistic.http.a<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.db.d f55565a;

        b(com.papa.sim.statistic.db.d dVar) {
            this.f55565a = dVar;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            exc.printStackTrace();
            if (this.f55565a.f() == 0) {
                String unused = o.this.f55553a;
                StringBuilder sb = new StringBuilder();
                sb.append("method [onFailure]:send failed. statisticTable.id= ");
                sb.append(this.f55565a.e());
                sb.append(";time=");
                sb.append(this.f55565a.i());
                o.this.f55555c.v(this.f55565a.getType(), this.f55565a.i());
                return;
            }
            String unused2 = o.this.f55553a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("method [onFailure]:send failed. statisticTable.id= ");
            sb2.append(this.f55565a.e());
            sb2.append(";time=");
            sb2.append(this.f55565a.i());
            o.this.f55555c.r(this.f55565a);
        }

        @Override // com.papa.sim.statistic.http.a
        /* renamed from: b */
        public void onSuccess(String str) {
            if (this.f55565a.f() == 0) {
                String unused = o.this.f55553a;
                o.this.f55555c.delete(this.f55565a);
                return;
            }
            String unused2 = o.this.f55553a;
            o.this.f55555c.e(this.f55565a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatCore.java */
    /* loaded from: classes4.dex */
    public class c implements com.papa.sim.statistic.http.a<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.db.d f55567a;

        c(com.papa.sim.statistic.db.d dVar) {
            this.f55567a = dVar;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            if (this.f55567a.f() == 0) {
                String unused = o.this.f55553a;
                StringBuilder sb = new StringBuilder();
                sb.append("method [onFailure]:send failed. statisticTable.id= ");
                sb.append(this.f55567a.e());
                sb.append(";time=");
                sb.append(this.f55567a.i());
                o.this.f55555c.v(this.f55567a.getType(), this.f55567a.i());
                return;
            }
            String unused2 = o.this.f55553a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("method [onFailure]:send failed. statisticTable.id= ");
            sb2.append(this.f55567a.e());
            sb2.append(";time=");
            sb2.append(this.f55567a.i());
            o.this.f55555c.r(this.f55567a);
        }

        @Override // com.papa.sim.statistic.http.a
        /* renamed from: b */
        public void onSuccess(String str) {
            if (this.f55567a.f() == 0) {
                String unused = o.this.f55553a;
                o.this.f55555c.delete(this.f55567a);
                return;
            }
            String unused2 = o.this.f55553a;
            o.this.f55555c.e(this.f55567a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatCore.java */
    /* loaded from: classes4.dex */
    public class d implements com.papa.sim.statistic.http.a<StatResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.db.d f55569a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f55570b;

        d(com.papa.sim.statistic.db.d dVar, Context context) {
            this.f55569a = dVar;
            this.f55570b = context;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            exc.printStackTrace();
            if (this.f55569a.getType().equals(Event.appPageVisit) || this.f55569a.getType().equals(Event.appPageClick) || this.f55569a.getType().equals(Event.appPageDownload)) {
                return;
            }
            try {
                if (this.f55569a.f() == 0) {
                    String unused = o.this.f55553a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("method [onFailure]:send failed. statisticTable.id= ");
                    sb.append(this.f55569a.e());
                    sb.append(";time=");
                    sb.append(this.f55569a.i());
                    o.this.f55555c.v(this.f55569a.getType(), this.f55569a.i());
                } else {
                    String unused2 = o.this.f55553a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                    sb2.append(this.f55569a.e());
                    sb2.append(";time=");
                    sb2.append(this.f55569a.i());
                    o.this.f55555c.r(this.f55569a);
                }
            } catch (Exception unused3) {
            }
        }

        @Override // com.papa.sim.statistic.http.a
        /* renamed from: b */
        public void onSuccess(StatResult statResult) {
            if (statResult == null) {
                return;
            }
            String unused = o.this.f55553a;
            StringBuilder sb = new StringBuilder();
            sb.append("statResult=");
            sb.append(JsonMapper.e().toJson(statResult));
            if ("ok".equals(statResult.getStatus())) {
                if (this.f55569a.getType().equals(Event.startApp.name())) {
                    com.papa.sim.statistic.pref.b.j(this.f55570b).I(this.f55569a.i());
                } else if (this.f55569a.getType().equals(Event.gameList.name())) {
                    com.papa.sim.statistic.pref.b.j(this.f55570b).A(this.f55569a.i());
                }
                if (this.f55569a.f() == 0) {
                    String unused2 = o.this.f55553a;
                    o.this.f55555c.delete(this.f55569a);
                    return;
                }
                String unused3 = o.this.f55553a;
                o.this.f55555c.e(this.f55569a);
            } else if (this.f55569a.getType().equals(Event.appPageVisit) || this.f55569a.getType().equals(Event.appPageClick) || this.f55569a.getType().equals(Event.appPageDownload)) {
            } else {
                if (this.f55569a.f() == 0) {
                    String unused4 = o.this.f55553a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("method [onSuccess]:send failed. send to 1.statisticTable.id= ");
                    sb2.append(this.f55569a.e());
                    sb2.append(";time=");
                    sb2.append(this.f55569a.i());
                    o.this.f55555c.v(this.f55569a.getType(), this.f55569a.i());
                    return;
                }
                String unused5 = o.this.f55553a;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("method [onSuccess]:send failed.save it to db .statisticTable.id= ");
                sb3.append(this.f55569a.e());
                sb3.append(";time=");
                sb3.append(this.f55569a.i());
                o.this.f55555c.r(this.f55569a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatCore.java */
    /* loaded from: classes4.dex */
    public class e implements com.papa.sim.statistic.http.a<StatResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f55572a;

        e(List list) {
            this.f55572a = list;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            exc.printStackTrace();
            String unused = o.this.f55553a;
            try {
                ArrayList arrayList = new ArrayList();
                for (com.papa.sim.statistic.db.d dVar : this.f55572a) {
                    if (!dVar.getType().equals(Event.appPageVisit) && !dVar.getType().equals(Event.appPageClick) && !dVar.getType().equals(Event.appPageDownload)) {
                        if (dVar.f() == 0) {
                            String unused2 = o.this.f55553a;
                            StringBuilder sb = new StringBuilder();
                            sb.append("method [onFailure]:send failed. statisticTable.id= ");
                            sb.append(dVar.e());
                            sb.append(";time=");
                            sb.append(dVar.i());
                            try {
                                o.this.f55555c.v(dVar.getType(), dVar.i());
                            } catch (Exception unused3) {
                            }
                        } else {
                            String unused4 = o.this.f55553a;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                            sb2.append(dVar.e());
                            sb2.append(";time=");
                            sb2.append(dVar.i());
                            arrayList.add(dVar);
                        }
                    }
                    return;
                }
                o.this.f55555c.s(arrayList);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            o.this.f55558f = false;
        }

        @Override // com.papa.sim.statistic.http.a
        /* renamed from: b */
        public void onSuccess(StatResult statResult) {
            if (statResult != null) {
                try {
                    String unused = o.this.f55553a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("statResult=");
                    sb.append(JsonMapper.e().toJson(statResult));
                    ArrayList arrayList = new ArrayList();
                    for (com.papa.sim.statistic.db.d dVar : this.f55572a) {
                        if ("ok".equals(statResult.getStatus())) {
                            if (dVar.getType().equals(Event.startApp.name())) {
                                com.papa.sim.statistic.pref.b.j(o.this.f55556d).I(dVar.i());
                            } else if (dVar.getType().equals(Event.gameList.name())) {
                                com.papa.sim.statistic.pref.b.j(o.this.f55556d).A(dVar.i());
                            }
                            if (dVar.f() == 0) {
                                String unused2 = o.this.f55553a;
                                o.this.f55555c.delete(dVar);
                            } else {
                                String unused3 = o.this.f55553a;
                                o.this.f55555c.e(dVar);
                            }
                        } else {
                            if (!dVar.getType().equals(Event.appPageVisit) && !dVar.getType().equals(Event.appPageClick) && !dVar.getType().equals(Event.appPageDownload)) {
                                if (dVar.f() == 0) {
                                    String unused4 = o.this.f55553a;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("method [onSuccess]:send failed. send to 1.statisticTable.id= ");
                                    sb2.append(dVar.e());
                                    sb2.append(";time=");
                                    sb2.append(dVar.i());
                                    o.this.f55555c.v(dVar.getType(), dVar.i());
                                } else {
                                    String unused5 = o.this.f55553a;
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("method [onSuccess]:send failed.save it to db .statisticTable.id= ");
                                    sb3.append(dVar.e());
                                    sb3.append(";time=");
                                    sb3.append(dVar.i());
                                    arrayList.add(dVar);
                                }
                            }
                            return;
                        }
                    }
                    List<com.papa.sim.statistic.db.d> k4 = o.this.f55555c.k();
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(k4.size());
                    sb4.append("");
                    o.this.f55555c.s(arrayList);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            o.this.f55558f = false;
            String unused6 = o.this.f55553a;
        }
    }

    /* compiled from: StatCore.java */
    /* loaded from: classes4.dex */
    class f implements com.papa.sim.statistic.http.a<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f55574a;

        f(List list) {
            this.f55574a = list;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            ArrayList arrayList = new ArrayList();
            for (com.papa.sim.statistic.db.d dVar : this.f55574a) {
                if (dVar.f() == 0) {
                    String unused = o.this.f55553a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("method [onFailure]:send failed. statisticTable.id= ");
                    sb.append(dVar.e());
                    sb.append(";time=");
                    sb.append(dVar.i());
                    o.this.f55555c.v(dVar.getType(), dVar.i());
                } else {
                    String unused2 = o.this.f55553a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("method [onFailure]:send failed. statisticTable.id= ");
                    sb2.append(dVar.e());
                    sb2.append(";time=");
                    sb2.append(dVar.i());
                    arrayList.add(dVar);
                }
            }
            if (arrayList.size() > 0) {
                o.this.f55555c.s(arrayList);
            }
            if (exc != null) {
                exc.printStackTrace();
            }
        }

        @Override // com.papa.sim.statistic.http.a
        /* renamed from: b */
        public void onSuccess(String str) {
            for (com.papa.sim.statistic.db.d dVar : this.f55574a) {
                if (dVar.f() == 0) {
                    String unused = o.this.f55553a;
                    o.this.f55555c.delete(dVar);
                } else {
                    String unused2 = o.this.f55553a;
                    o.this.f55555c.e(dVar);
                }
            }
        }
    }

    private o(Context context) {
        this.f55556d = context;
        this.f55555c = com.papa.sim.statistic.db.b.o(context);
    }

    private void X(List<com.papa.sim.statistic.db.d> list) {
        if (com.papa.sim.statistic.pref.b.j(this.f55556d).r()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (com.papa.sim.statistic.db.d dVar : list) {
            if (Event.pluginPlayTime.name().equals(dVar.getType())) {
                StringBuilder sb = new StringBuilder();
                sb.append("sendAllData: ");
                sb.append(JsonMapper.toJsonString(dVar));
                list.remove(dVar);
            } else {
                StatRequest g4 = g(this.f55556d, dVar);
                if (g4.getUid() == 0 || g4.getExt().getUid() == 0) {
                    try {
                        g4.setUid(Integer.parseInt(p.l(this.f55556d).n().a(this.f55556d)));
                        g4.getExt().setUid(Integer.parseInt(p.l(this.f55556d).n().a(this.f55556d)));
                    } catch (Exception unused) {
                    }
                }
                arrayList.add(g4);
            }
        }
        String json = JsonMapper.e().toJson(arrayList);
        try {
            json = com.papa.sim.statistic.a.b(json, "");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.papa.sim.statistic.http.c c4 = com.papa.sim.statistic.http.c.c();
        c4.g(f55545k + "/data/batch/v3", json, new e(list));
    }

    private void f() {
        if (this.f55557e) {
            return;
        }
        this.f55557e = com.papa.sim.statistic.http.c.c().f(this.f55556d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(30:1|(3:2|3|4)|(15:6|(2:28|(2:30|(2:32|(2:34|(2:36|(2:38|(2:40|(2:42|(2:44|(2:46|(2:48|(2:50|(2:52|(2:54|(2:56|(2:58|(2:60|(2:62|(2:64|(2:66|(2:68|(2:70|(2:72|(2:74|(2:76|(2:78|(2:80|(2:82|(2:84|(2:86|(2:88|(2:90|(2:92|(2:94|(2:96|(2:98|(2:100|(2:102|(2:104|(2:106|(2:108|(2:110|(2:112|(2:114|(2:116|(2:118|(2:120|(2:122|(2:124|(2:126|(2:128|(2:130|(2:132|(2:134|(1:136)))))))))))))))))))))))))))))))))))))))))))))))))))))))|138|139|(5:160|161|163|164|165)|141|142|143|144|145|146|147|148|(2:152|153)|150)|176|177|178|(1:429)(2:182|183)|184|(1:186)|187|188|189|191|192|(13:197|198|199|(1:414)|203|204|(1:206)(2:208|(2:210|(4:214|(1:216)|217|(1:219)))(2:220|(1:222)(4:223|(2:228|(1:230)(2:231|(6:234|(3:239|(2:246|(3:248|(1:250)|251)(6:252|(9:257|258|(3:269|(1:271)(2:274|(3:276|277|278)(2:283|(1:285)(3:286|(2:291|(2:293|294)(2:295|(1:297)(2:298|(1:300)(5:301|(2:306|(1:308)(3:309|(3:322|(2:327|(1:329)(3:330|(3:355|(2:370|(1:372)(3:373|(1:375)|376))|377)|378))|379)|380))|381|382|383))))|386)))|272)|387|388|389|(1:391)|393|272)|396|397|398|399))|402)|403|404|(1:406)(1:409)|407)(1:233)))|411|412)))|207|146|147|148|(0)|150)|418|198|199|(1:201)|414|203|204|(0)(0)|207|146|147|148|(0)|150|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(8:258|(3:269|(1:271)(2:274|(3:276|277|278)(2:283|(1:285)(3:286|(2:291|(2:293|294)(2:295|(1:297)(2:298|(1:300)(5:301|(2:306|(1:308)(3:309|(3:322|(2:327|(1:329)(3:330|(3:355|(2:370|(1:372)(3:373|(1:375)|376))|377)|378))|379)|380))|381|382|383))))|386)))|272)|387|388|389|(1:391)|393|272) */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0433, code lost:
        if (r18.getType().equals(com.papa.sim.statistic.Event.gameUnzip.name()) == false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x059f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x05a1, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x05bd, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x05bf, code lost:
        r0.getMessage();
        r0.printStackTrace();
        r7.setAd(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x05df, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x05e1, code lost:
        r0.getMessage();
        r7.setCountType(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0dfd, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0dfe, code lost:
        r2 = r0;
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0e03, code lost:
        r2.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:195:0x066f A[Catch: Exception -> 0x0dfd, TryCatch #12 {Exception -> 0x0dfd, blocks: (B:152:0x0539, B:154:0x053f, B:163:0x055a, B:165:0x0575, B:166:0x057a, B:193:0x05e7, B:195:0x066f, B:389:0x0dde, B:196:0x0687, B:198:0x068e, B:200:0x0698, B:202:0x06a8, B:204:0x06ae, B:205:0x06ca, B:207:0x06d0, B:208:0x06f5, B:210:0x0705, B:211:0x072b, B:213:0x073b, B:216:0x074d, B:218:0x075d, B:219:0x0766, B:222:0x0778, B:224:0x0788, B:227:0x079a, B:229:0x07aa, B:231:0x07ba, B:234:0x07cc, B:236:0x07dc, B:239:0x07e3, B:240:0x07f7, B:242:0x0807, B:245:0x0819, B:247:0x0829, B:249:0x0839, B:251:0x0849, B:253:0x0859, B:256:0x086b, B:260:0x08ac, B:262:0x08bc, B:267:0x08cc, B:268:0x08d4, B:270:0x08e4, B:271:0x08fc, B:273:0x090c, B:276:0x091e, B:278:0x092e, B:281:0x0958, B:283:0x0968, B:284:0x09b4, B:286:0x09c4, B:287:0x09d5, B:289:0x09e5, B:292:0x09f7, B:296:0x0a31, B:298:0x0a41, B:300:0x0a51, B:302:0x0a61, B:304:0x0a71, B:306:0x0a81, B:309:0x0a93, B:311:0x0aa3, B:314:0x0ab5, B:316:0x0ac5, B:317:0x0add, B:319:0x0aed, B:321:0x0afd, B:323:0x0b0d, B:325:0x0b1d, B:327:0x0b2d, B:329:0x0b3d, B:331:0x0b4d, B:333:0x0b5d, B:335:0x0b6d, B:337:0x0b7d, B:339:0x0b8d, B:342:0x0b9f, B:344:0x0baf, B:346:0x0bbf, B:348:0x0bcf, B:350:0x0bdf, B:352:0x0bef, B:354:0x0bff, B:357:0x0c10, B:359:0x0c20, B:360:0x0c30, B:362:0x0c3e, B:363:0x0c49, B:364:0x0c65, B:365:0x0c81, B:371:0x0d0b, B:372:0x0d12, B:379:0x0d52, B:381:0x0d62, B:382:0x0d6a, B:391:0x0dee, B:192:0x05e1, B:182:0x05bf, B:171:0x05a1, B:161:0x0550, B:162:0x0557, B:157:0x0546, B:263:0x08c1, B:183:0x05c8, B:185:0x05ce, B:188:0x05d7, B:187:0x05d4, B:167:0x0593, B:172:0x05a4, B:174:0x05aa, B:177:0x05b1, B:178:0x05b9), top: B:438:0x0539, inners: #1, #4, #7, #8, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0687 A[Catch: Exception -> 0x0dfd, TryCatch #12 {Exception -> 0x0dfd, blocks: (B:152:0x0539, B:154:0x053f, B:163:0x055a, B:165:0x0575, B:166:0x057a, B:193:0x05e7, B:195:0x066f, B:389:0x0dde, B:196:0x0687, B:198:0x068e, B:200:0x0698, B:202:0x06a8, B:204:0x06ae, B:205:0x06ca, B:207:0x06d0, B:208:0x06f5, B:210:0x0705, B:211:0x072b, B:213:0x073b, B:216:0x074d, B:218:0x075d, B:219:0x0766, B:222:0x0778, B:224:0x0788, B:227:0x079a, B:229:0x07aa, B:231:0x07ba, B:234:0x07cc, B:236:0x07dc, B:239:0x07e3, B:240:0x07f7, B:242:0x0807, B:245:0x0819, B:247:0x0829, B:249:0x0839, B:251:0x0849, B:253:0x0859, B:256:0x086b, B:260:0x08ac, B:262:0x08bc, B:267:0x08cc, B:268:0x08d4, B:270:0x08e4, B:271:0x08fc, B:273:0x090c, B:276:0x091e, B:278:0x092e, B:281:0x0958, B:283:0x0968, B:284:0x09b4, B:286:0x09c4, B:287:0x09d5, B:289:0x09e5, B:292:0x09f7, B:296:0x0a31, B:298:0x0a41, B:300:0x0a51, B:302:0x0a61, B:304:0x0a71, B:306:0x0a81, B:309:0x0a93, B:311:0x0aa3, B:314:0x0ab5, B:316:0x0ac5, B:317:0x0add, B:319:0x0aed, B:321:0x0afd, B:323:0x0b0d, B:325:0x0b1d, B:327:0x0b2d, B:329:0x0b3d, B:331:0x0b4d, B:333:0x0b5d, B:335:0x0b6d, B:337:0x0b7d, B:339:0x0b8d, B:342:0x0b9f, B:344:0x0baf, B:346:0x0bbf, B:348:0x0bcf, B:350:0x0bdf, B:352:0x0bef, B:354:0x0bff, B:357:0x0c10, B:359:0x0c20, B:360:0x0c30, B:362:0x0c3e, B:363:0x0c49, B:364:0x0c65, B:365:0x0c81, B:371:0x0d0b, B:372:0x0d12, B:379:0x0d52, B:381:0x0d62, B:382:0x0d6a, B:391:0x0dee, B:192:0x05e1, B:182:0x05bf, B:171:0x05a1, B:161:0x0550, B:162:0x0557, B:157:0x0546, B:263:0x08c1, B:183:0x05c8, B:185:0x05ce, B:188:0x05d7, B:187:0x05d4, B:167:0x0593, B:172:0x05a4, B:174:0x05aa, B:177:0x05b1, B:178:0x05b9), top: B:438:0x0539, inners: #1, #4, #7, #8, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0e23 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.papa.sim.statistic.StatRequest g(android.content.Context r17, com.papa.sim.statistic.db.d r18) {
        /*
            Method dump skipped, instructions count: 3684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa.sim.statistic.o.g(android.content.Context, com.papa.sim.statistic.db.d):com.papa.sim.statistic.StatRequest");
    }

    public static String i(String str, String str2) {
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://service.kingnetdc.com/mqs").openConnection();
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setInstanceFollowRedirects(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Accept", HttpHeaders.Values.APPLICATION_JSON);
                httpURLConnection.setRequestProperty("Content-Type", HttpHeaders.Values.APPLICATION_JSON);
                httpURLConnection.setRequestProperty(com.alipay.sdk.packet.d.f9786g, "1");
                httpURLConnection.setRequestProperty("Topic", "papa_plat");
                String str3 = "[{\"key\":\"" + str2 + "\",\"message\":" + str + "}]";
                httpURLConnection.setRequestProperty("Authorization", j.a("9c708c7fce87abaa544b221898769baapapa_plat19c708c7fce87abaa544b221898769baa" + str3));
                httpURLConnection.connect();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8");
                outputStreamWriter.append((CharSequence) str3);
                outputStreamWriter.flush();
                outputStreamWriter.close();
                int contentLength = httpURLConnection.getContentLength();
                InputStream inputStream = httpURLConnection.getInputStream();
                if (contentLength == -1) {
                    return "-1";
                }
                byte[] bArr = new byte[contentLength];
                byte[] bArr2 = new byte[512];
                int i4 = 0;
                while (true) {
                    int read = inputStream.read(bArr2);
                    if (read > 0) {
                        System.arraycopy(bArr2, 0, bArr, i4, read);
                        i4 += read;
                    } else {
                        String str4 = new String(bArr, "UTF-8");
                        System.out.println(str4);
                        return str4;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return "-1";
    }

    public static String k(String str) {
        return f55544j.get(str);
    }

    public static void k0(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        f55544j.put(str, str2);
    }

    public static o l(Context context) {
        if (f55549o == null) {
            f55549o = new o(context);
        }
        return f55549o;
    }

    private String o(int i2) {
        return (i2 & 255) + g0.f27568a + ((i2 >> 8) & 255) + g0.f27568a + ((i2 >> 16) & 255) + g0.f27568a + ((i2 >> 24) & 255);
    }

    private void p0(StatRequest statRequest) {
        statRequest.setTime(System.currentTimeMillis());
        try {
            this.f55556d.startService(new Intent(this.f55556d, StatService.class));
        } catch (Exception unused) {
        }
        if (statRequest.getEvent() == null || statRequest.getEvent().equals("")) {
            return;
        }
        String event = statRequest.getEvent();
        Event event2 = Event.joyStickConfigPost;
        if (!event.equals(event2.name()) && !statRequest.getEvent().equals(Event.joyStickInfoPost.name())) {
            if (!statRequest.getEvent().equals(Event.setpapaerror.name()) && !statRequest.getEvent().equals(Event.setemuerror.name())) {
                if (statRequest.getEvent().equals(Event.gameWorldData.name())) {
                    new com.papa.sim.statistic.db.d().t(statRequest.getEvent().toString());
                }
                com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
                dVar.t(statRequest.getEvent().toString());
                String type = dVar.getType();
                if (statRequest.isRequest()) {
                    dVar.q(2);
                    dVar.l(JsonMapper.toJsonString(statRequest));
                } else if (statRequest.isNew()) {
                    dVar.q(1);
                    dVar.l(JsonMapper.toJsonString(statRequest.getExt()));
                } else if (type.equals(Event.visitSearchPage.name())) {
                    dVar.l(statRequest.getData().getWhere().toString());
                } else if (statRequest.getEvent().equals(Event.gameList.name())) {
                    dVar.l(JsonMapper.f().toJson(statRequest));
                } else if (!statRequest.getEvent().equals(Event.plugEfficiency.name()) && !statRequest.getEvent().equals(Event.pluginPlayTime.name())) {
                    if (statRequest.getEvent().equals(Event.onMainPageShow.name())) {
                        dVar.l(JsonMapper.e().toJson(statRequest));
                    } else {
                        if (!statRequest.getEvent().equals(Event.visitIndexAdEvent.name()) && !statRequest.getEvent().equals(Event.clickIndexAdEvent.name()) && !statRequest.getEvent().equals(Event.gameRequest.name())) {
                            String event3 = statRequest.getEvent();
                            Event event4 = Event.gameDownload;
                            if (!event3.equals(event4.name()) && !statRequest.getEvent().equals(Event.startDownloadPlug.name()) && !statRequest.getEvent().equals(Event.downloadPlugCompleted.name()) && !statRequest.getEvent().equals(Event.installPlugCompleted.name()) && !statRequest.getEvent().equals(Event.gameOut.name()) && !statRequest.getEvent().equals(Event.netBattleMatchFinish.name()) && !statRequest.getEvent().equals(Event.netBattleMatchStart.name()) && !statRequest.getEvent().equals(Event.startShare.name()) && !statRequest.getEvent().equals(Event.shareChannel.name()) && !statRequest.getEvent().equals(Event.shareResult.name()) && !statRequest.getEvent().equals(Event.f2fRequestCreateQrcode.name()) && !statRequest.getEvent().equals(Event.f2fCreateQrcodeSuccess.name()) && !statRequest.getEvent().equals(Event.liveResDownloaded.name()) && !statRequest.getEvent().equals(Event.clickVsBtn.name()) && !statRequest.getEvent().equals(Event.clickVsHallBtn.name()) && !statRequest.getEvent().equals(Event.visitVsRoomPage.name()) && !statRequest.getEvent().equals(Event.visitVsMainPage.name()) && !statRequest.getEvent().equals(Event.clickVsForumBtn.name()) && !statRequest.getEvent().equals(Event.clickVsAdvBtn.name()) && !statRequest.getEvent().equals(Event.clickVsCreateRoom.name()) && !statRequest.getEvent().equals(Event.clickVsQuickJoin.name()) && !statRequest.getEvent().equals(Event.VsCreateWaitOver.name()) && !statRequest.getEvent().equals(Event.VsGameOverSuccess.name()) && !statRequest.getEvent().equals(Event.VsSelectSilentBtn.name()) && !statRequest.getEvent().equals(Event.VsCreateSilentRoom.name()) && !statRequest.getEvent().equals(Event.VsSilentTransform.name()) && !statRequest.getEvent().equals(Event.clickVsLocalBat.name()) && !statRequest.getEvent().equals(Event.clickVsNetBattleMatch.name()) && !statRequest.getEvent().equals(Event.f2fRequestScanQrcode.name()) && !statRequest.getEvent().equals(Event.f2fConnectQrcodeSuccess.name()) && !statRequest.getEvent().equals(Event.sharePasteClick.name()) && !statRequest.getEvent().equals(Event.f2fTransferGameDone.name()) && !statRequest.getEvent().equals(Event.f2fInterruptTransferGame.name()) && !statRequest.getEvent().equals(Event.visitAppInternalPage.name()) && !statRequest.getEvent().equals(Event.arenaGameList.name()) && !statRequest.getEvent().equals(Event.arenaGameListBanner.name()) && !statRequest.getEvent().equals(Event.arenaGameListItem.name()) && !statRequest.getEvent().equals(Event.areaRoomFromInvite.name()) && !dVar.getType().equals(Event.requestEvent.name()) && !dVar.getType().equals(Event.clickButtonEvent.name()) && !dVar.getType().equals(Event.clickHomePageEvent.name()) && !dVar.getType().equals(Event.clickShopHomeEvent.name()) && !dVar.getType().equals(Event.findButtonEvent.name()) && !dVar.getType().equals(Event.pspMemberADDialog.name()) && !dVar.getType().equals(Event.clickGameDetailModel.name()) && !dVar.getType().equals(Event.enterUserGameList.name()) && !dVar.getType().equals(Event.clickSearchAdPosition.name()) && !dVar.getType().equals(Event.downloadFromSearchResult.name()) && !dVar.getType().equals(event4.name()) && !dVar.getType().equals(Event.indexGameStart.name())) {
                                String type2 = dVar.getType();
                                Event event5 = Event.visitGamePage;
                                if (!type2.equals(event5.name()) && !dVar.getType().equals(Event.clickDetailFromSearchResult.name()) && !dVar.getType().equals(Event.gameStart.name()) && !dVar.getType().equals(Event.gameUnzip.name())) {
                                    if (!type.equals(Event.gameDownload.name()) && !type.equals(Event.gameDownloadCompleted.name())) {
                                        if (type.equals(Event.gameWorldData.name())) {
                                            dVar.l(statRequest.getData().getModel());
                                        } else if (!type.equals(Event.memberClickRegister.name()) && !type.equals(Event.joystickJoinApp.name()) && !type.equals(Event.joystickJoin.name())) {
                                            if (!type.equals(Event.md5error.name()) && !type.equals(Event.filenumerror.name())) {
                                                if (!type.equals(Event.articleClickPraise.name()) && !type.equals(Event.articleClickDownload.name())) {
                                                    if (!type.equals(Event.startDownloadPlug.name()) && !type.equals(Event.downloadPlugCompleted.name()) && !type.equals(Event.installPlugCompleted.name())) {
                                                        if (!statRequest.getEvent().equals(Event.gameOut.name()) && !statRequest.getEvent().equals(Event.startLocalNetBattleSuccessEmu.name()) && !statRequest.getEvent().equals(Event.endLocalNetBattleSuccessEmu.name()) && !statRequest.getEvent().equals(Event.netBattleMatchFinish.name()) && !statRequest.getEvent().equals(Event.netBattleMatchStart.name())) {
                                                            if (statRequest.getEvent().equals(Event.appUseTime.name())) {
                                                                dVar.l(statRequest.getData().getLocation());
                                                                dVar.u(statRequest.getExt().getUid() + "");
                                                                dVar.m(statRequest.getUid() + "");
                                                            } else if (statRequest.getEvent().equals(Event.appPageVisit.name())) {
                                                                dVar.l(JsonMapper.e().toJson(statRequest.getExt()));
                                                                dVar.u(statRequest.getExt().getUid() + "");
                                                            } else if (!statRequest.getEvent().equals(Event.appPageClick.name()) && !statRequest.getEvent().equals(Event.appPageDownload.name())) {
                                                                if (statRequest.getEvent().equals(Event.netBattleMatchEfficiency.name())) {
                                                                    dVar.l(statRequest.getData().getLocation());
                                                                    dVar.m(statRequest.getUid() + "");
                                                                    dVar.u(statRequest.getExt().getUid() + "");
                                                                } else if (statRequest.getEvent().equals(Event.submitPost.name())) {
                                                                    dVar.l(statRequest.getExt().getUid() + "");
                                                                    dVar.u(statRequest.getExt().getUid() + "");
                                                                } else if (statRequest.getEvent().equals(Event.installAndroidCompleted.name())) {
                                                                    dVar.u(statRequest.getUid() + "");
                                                                    dVar.l(statRequest.getData().getGameId() + "");
                                                                    dVar.m(statRequest.getExt().getGameFlag() + "");
                                                                } else if (statRequest.getEvent().equals(Event.startArchiveManagement.name())) {
                                                                    dVar.u(statRequest.getUid() + "");
                                                                    dVar.l(statRequest.getData().getGameId() + "");
                                                                    dVar.m(statRequest.getExt().getNodeId());
                                                                } else if (statRequest.getEvent().equals(event5.name())) {
                                                                    dVar.l(statRequest.getData().getGameId() + "");
                                                                    dVar.m(statRequest.getExt().getFrom());
                                                                } else if (!statRequest.getEvent().equals(Event.expGameAdPage.name()) && !statRequest.getEvent().equals(Event.pullDownModelExp.name()) && !statRequest.getEvent().equals(Event.expSmallGameAdPage.name()) && !statRequest.getEvent().equals(Event.smallGameStartSDK.name()) && !statRequest.getEvent().equals(Event.smallRequestAdSDK.name()) && !statRequest.getEvent().equals(Event.smallExpAdSDK.name()) && !statRequest.getEvent().equals(Event.smallVideoDoneAdSDK.name())) {
                                                                    if (type.equals(Event.clickSearchButton.name())) {
                                                                        dVar.l(statRequest.getData().getWhere().toString());
                                                                        dVar.m(statRequest.getExt().getPage());
                                                                    } else if (!statRequest.getEvent().equals(Event.listShowBigPicUPPage.name()) && !statRequest.getEvent().equals(Event.listShowIconHotList.name()) && !statRequest.getEvent().equals(Event.listClickBigPicStaus.name()) && !statRequest.getEvent().equals(Event.listClickIconStatus.name()) && !statRequest.getEvent().equals(Event.listClickBigPicSlideUPDown.name()) && !statRequest.getEvent().equals(Event.listClickIconSlideUPDown.name()) && !statRequest.getEvent().equals(Event.gameClickBigModelGet.name()) && !statRequest.getEvent().equals(Event.gameClickBigPicGoDetail.name()) && !statRequest.getEvent().equals(Event.gameClickIconModelClick.name()) && !statRequest.getEvent().equals(Event.game_strategy_panel.name()) && !statRequest.getEvent().equals(Event.gameClickBigPicGoWYDetail.name()) && !statRequest.getEvent().equals(Event.gameClickIconModelWYClick.name())) {
                                                                        if (statRequest.getEvent().equals(Event.unzipFailed.name())) {
                                                                            dVar.m(statRequest.getExt().getGameFlag() + "");
                                                                        }
                                                                        dVar.l(statRequest.getData().getGameId() + "");
                                                                    } else {
                                                                        dVar.l(JsonMapper.toJsonString(statRequest.getExt()));
                                                                        dVar.m(String.valueOf(statRequest.getData().getGameId()));
                                                                    }
                                                                } else {
                                                                    dVar.l(JsonMapper.toJsonString(statRequest.getExt()));
                                                                    dVar.m(String.valueOf(statRequest.getData().getGameId()));
                                                                }
                                                            } else {
                                                                dVar.l(JsonMapper.e().toJson(statRequest.getExt()));
                                                                dVar.u(statRequest.getExt().getUid() + "");
                                                            }
                                                        } else {
                                                            dVar.u(statRequest.getExt().getUid() + "");
                                                            dVar.l(statRequest.getData().getGameId() + "");
                                                            try {
                                                                dVar.m(JsonMapper.e().toJson(statRequest.getExt()));
                                                            } catch (Exception unused2) {
                                                            }
                                                        }
                                                    } else {
                                                        dVar.u(statRequest.getExt().getUid() + "");
                                                        dVar.l(statRequest.getData().getPlugId() + "");
                                                    }
                                                } else {
                                                    dVar.u(statRequest.getExt().getUid() + "");
                                                    dVar.l(statRequest.getExt().getArticleId() + "");
                                                }
                                            } else {
                                                Ext ext = statRequest.getExt();
                                                String json = JsonMapper.f().toJson(ext);
                                                dVar.u(ext.getUid() + "");
                                                dVar.l(json);
                                            }
                                        } else {
                                            Ext ext2 = statRequest.getExt();
                                            String json2 = JsonMapper.f().toJson(ext2);
                                            dVar.u(ext2.getUid() + "");
                                            dVar.l(json2);
                                        }
                                    } else {
                                        StatJsonRawData statJsonRawData = new StatJsonRawData();
                                        statJsonRawData.setGameId(statRequest.getData().getGameId());
                                        statJsonRawData.setInterrupt(statRequest.getExt().getInterrupt());
                                        statJsonRawData.setDuration(statRequest.getExt().getDuration());
                                        statJsonRawData.setZipCost(statRequest.getExt().getZipCost());
                                        statJsonRawData.setUid(statRequest.getExt().getUid());
                                        statJsonRawData.setWhere(statRequest.getData().getWhere());
                                        statJsonRawData.setArticleId(statRequest.getExt().getArticleId());
                                        statJsonRawData.setFrom(statRequest.getExt().getFrom());
                                        statJsonRawData.setPosition(statRequest.getExt().getPosition());
                                        statJsonRawData.setGameFlag(statRequest.getExt().getGameFlag());
                                        dVar.u(statRequest.getExt().getUid() + "");
                                        dVar.l(JsonMapper.e().toJson(statJsonRawData));
                                    }
                                }
                            }
                        }
                        dVar.l(JsonMapper.e().toJson(statRequest));
                    }
                } else {
                    dVar.l(JsonMapper.f().toJson(statRequest));
                }
                dVar.s(statRequest.getTime() + "");
                dVar.k(k.a(this.f55556d));
                dVar.n(k.c(this.f55556d));
                dVar.u(statRequest.getUid() + "");
                if (dVar.j() == null || dVar.j().equals("") || dVar.j().equals("0")) {
                    dVar.u(statRequest.getExt().getUid() + "");
                }
                this.f55555c.r(dVar);
                try {
                    s(this.f55556d, this.f55555c.n(type, dVar.i()));
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            com.papa.sim.statistic.db.a aVar = new com.papa.sim.statistic.db.a();
            aVar.n(statRequest.getEvent());
            aVar.i(statRequest.getData().getWhere());
            aVar.j(statRequest.getData().getLocation());
            aVar.m(statRequest.getTime() + "");
            aVar.h(k.a(this.f55556d));
            aVar.k(k.c(this.f55556d));
            this.f55555c.t(aVar);
            return;
        }
        com.papa.sim.statistic.db.a aVar2 = new com.papa.sim.statistic.db.a();
        aVar2.n(statRequest.getEvent());
        if (aVar2.getType().equals(event2.name())) {
            this.f55555c.c(event2);
        }
        aVar2.i(statRequest.getData().getLocation() + "");
        aVar2.m(statRequest.getTime() + "");
        aVar2.h(k.a(this.f55556d));
        aVar2.k(k.c(this.f55556d));
        this.f55555c.t(aVar2);
    }

    public static void u(String str) {
        if (str != null) {
            f55544j.remove(str);
        }
    }

    public void A(Event event, StatRequest statRequest) {
        if (!event.name().equals(Event.indexGameStart.name()) && !event.name().equals(Event.clickIndexAdEvent.name()) && !event.name().equals(Event.visitIndexAdEvent.name()) && !event.name().equals(Event.gameRequest.name()) && !event.name().equals(Event.gameDownload.name()) && !event.name().equals(Event.startDownloadPlug.name()) && !event.name().equals(Event.downloadPlugCompleted.name()) && !event.name().equals(Event.installPlugCompleted.name()) && !event.name().equals(Event.gameOut.name()) && !event.name().equals(Event.startLocalNetBattleSuccessEmu.name()) && !event.name().equals(Event.endLocalNetBattleSuccessEmu.name()) && !event.name().equals(Event.netBattleMatchFinish.name()) && !event.name().equals(Event.netBattleMatchStart.name()) && !event.name().equals(Event.startShare.name()) && !event.name().equals(Event.shareChannel.name()) && !event.name().equals(Event.shareResult.name()) && !event.name().equals(Event.f2fRequestCreateQrcode.name()) && !event.name().equals(Event.f2fCreateQrcodeSuccess.name()) && !event.name().equals(Event.liveResDownloaded.name()) && !event.name().equals(Event.clickVsBtn.name()) && !event.name().equals(Event.clickVsHallBtn.name()) && !event.name().equals(Event.visitVsRoomPage.name()) && !event.name().equals(Event.visitVsMainPage.name()) && !event.name().equals(Event.clickVsForumBtn.name()) && !event.name().equals(Event.clickVsAdvBtn.name()) && !event.name().equals(Event.clickVsCreateRoom.name()) && !event.name().equals(Event.clickVsQuickJoin.name()) && !event.name().equals(Event.VsCreateWaitOver.name()) && !event.name().equals(Event.VsGameOverSuccess.name()) && !event.name().equals(Event.VsSelectSilentBtn.name()) && !event.name().equals(Event.VsCreateSilentRoom.name()) && !event.name().equals(Event.VsSilentTransform.name()) && !event.name().equals(Event.clickVsLocalBat.name()) && !event.name().equals(Event.clickVsNetBattleMatch.name()) && !event.name().equals(Event.f2fRequestScanQrcode.name()) && !event.name().equals(Event.f2fConnectQrcodeSuccess.name()) && !event.name().equals(Event.sharePasteClick.name()) && !event.name().equals(Event.f2fRequestTransferGame.name()) && !event.name().equals(Event.f2fTransferGameDone.name()) && !event.name().equals(Event.f2fInterruptTransferGame.name()) && !event.name().equals(Event.visitAppInternalPage.name()) && !event.name().equals(Event.arenaGameList.name()) && !event.name().equals(Event.arenaGameListBanner.name()) && !event.name().equals(Event.arenaGameListItem.name()) && !event.name().equals(Event.areaRoomFromInvite.name()) && !event.name().equals(Event.onMainPageShow.name()) && !event.name().equals(Event.requestEvent.name()) && !event.name().equals(Event.clickButtonEvent.name()) && !event.name().equals(Event.clickHomePageEvent.name()) && !event.name().equals(Event.clickShopHomeEvent.name()) && !event.name().equals(Event.findButtonEvent.name()) && !event.name().equals(Event.startStoreArchive.name()) && !event.name().equals(Event.startMeArchive.name()) && !event.name().equals(Event.makeStoreArchive.name()) && !event.name().equals(Event.downloadCloudArchive.name()) && !event.name().equals(Event.backupLocalArchive.name()) && !event.name().equals(Event.shareArchive.name()) && !event.name().equals(Event.startArchiveManagement.name()) && !event.name().equals(Event.md5error.name()) && !event.name().equals(Event.filenumerror.name()) && !event.name().equals(Event.visitGamePage.name()) && !event.name().equals(Event.clickGameDetailModel.name()) && !event.name().equals(Event.enterUserGameList.name()) && !event.name().equals(Event.clickSearchAdPosition.name()) && !event.name().equals(Event.downloadFromSearchResult.name()) && !event.name().equals(Event.clickDetailFromSearchResult.name()) && !event.name().equals(Event.showCopyright.name()) && !event.name().equals(Event.closeCopyright.name()) && !event.name().equals(Event.downloadCopyright.name()) && !event.name().equals(Event.openSourceUrl.name()) && !event.name().equals(Event.smallGameStartSDK.name()) && !event.name().equals(Event.smallRequestAdSDK.name()) && !event.name().equals(Event.smallExpAdSDK.name()) && !event.name().equals(Event.smallVideoDoneAdSDK.name())) {
            String name = event.name();
            Event event2 = Event.homeSuccessUpRedBag;
            if (!name.equals(event2.name())) {
                String name2 = event.name();
                Event event3 = Event.tabStartSuccessUpRedBag;
                if (!name2.equals(event3.name())) {
                    String name3 = event.name();
                    Event event4 = Event.quitSingleSuccessUpRedBag;
                    if (!name3.equals(event4.name())) {
                        String name4 = event.name();
                        Event event5 = Event.tabStartViewSuccessTips;
                        if (!name4.equals(event5.name())) {
                            String name5 = event.name();
                            Event event6 = Event.clickTabGameTipsUpRedBag;
                            if (!name5.equals(event6.name())) {
                                String name6 = event.name();
                                Event event7 = Event.clickOpenPopUpRedBag;
                                if (!name6.equals(event7.name()) && !event.name().equals(Event.listShowBigPicUPPage.name()) && !event.name().equals(Event.listShowIconHotList.name()) && !event.name().equals(Event.listClickBigPicStaus.name()) && !event.name().equals(Event.listClickIconStatus.name()) && !event.name().equals(Event.listClickBigPicSlideUPDown.name()) && !event.name().equals(Event.listClickIconSlideUPDown.name()) && !event.name().equals(Event.gameClickBigModelGet.name()) && !event.name().equals(Event.gameClickBigPicGoDetail.name()) && !event.name().equals(Event.gameClickIconModelClick.name()) && !event.name().equals(Event.game_strategy_panel.name()) && !event.name().equals(Event.gameClickBigPicGoWYDetail.name()) && !event.name().equals(Event.gameClickIconModelWYClick.name()) && !event.name().equals(event2.name()) && !event.name().equals(event3.name()) && !event.name().equals(event4.name()) && !event.name().equals(event5.name()) && !event.name().equals(event6.name()) && !event.name().equals(event7.name())) {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        p0(statRequest);
    }

    void B(Event event, Where where) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        data.setWhere(where.name());
        statRequest.setData(data);
        p0(statRequest);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C(Event event, Where where, String str) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        data.setWhere(where.name());
        if (str != null && !str.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str));
                statRequest.getExt().setUid(Integer.parseInt(str));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        statRequest.setData(data);
        p0(statRequest);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(Event event, String str) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        String name = event.name();
        Event event2 = Event.gameWorldData;
        if (name.equals(event2.name())) {
            statRequest.setData(data);
            p0(statRequest);
            return;
        }
        str = (str == null || str.equals("")) ? "0" : "0";
        try {
            if (event.name().equals(Event.installPlugCompleted.name())) {
                data.setPlugId(Integer.parseInt(str));
            }
            if (event.name().equals(Event.startApp.name())) {
                data.setLocation(str);
            } else if (event.name().equals(event2.name())) {
                data.setModel(str);
            } else {
                if (!event.name().equals(Event.joyStickConfigPost.name()) && !event.name().equals(Event.joyStickInfoPost.name())) {
                    if (event.name().equals(Event.submitPost.name())) {
                        statRequest.getExt().setUid(Integer.parseInt(str));
                    } else if (!str.equals("")) {
                        data.setGameId(Long.parseLong(str));
                    }
                }
                data.setLocation(str);
            }
        } catch (Exception unused) {
            data.setGameId(0L);
        }
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void E(Event event, String str, int i2, int i4) {
        StatRequest statRequest = new StatRequest();
        statRequest.setUid(Integer.parseInt(str));
        statRequest.getExt().setUid(Integer.parseInt(str));
        statRequest.getExt().setEmuCount(i2);
        statRequest.getExt().setApkCount(i4);
        statRequest.setTime(System.currentTimeMillis());
        com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
        dVar.t(event.name());
        dVar.s(System.currentTimeMillis() + "");
        dVar.k(k.a(this.f55556d));
        dVar.n(k.c(this.f55556d));
        dVar.u(statRequest.getUid() + "");
        dVar.l(JsonMapper.e().toJson(statRequest));
        this.f55555c.r(dVar);
        try {
            s(this.f55556d, this.f55555c.n(event.name(), dVar.i()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void F(Event event, String str, long j4, int i2, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Ext ext = statRequest.getExt();
        Data data = new Data();
        try {
            data.setGameId(Long.parseLong(str));
            ext.setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        ext.setDuration(j4);
        ext.setInterrupt(i2);
        statRequest.setExt(ext);
        statRequest.setData(data);
        p0(statRequest);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G(Event event, String str, long j4, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        try {
            data.setGameId(Long.parseLong(str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        statRequest.getExt().setDuration(j4);
        data.setUid(str2);
        statRequest.setData(data);
        p0(statRequest);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H(Event event, String str, long j4, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.getExt().setArticleId(str3);
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        try {
            data.setGameId(Long.parseLong(str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        statRequest.getExt().setDuration(j4);
        data.setUid(str2);
        statRequest.setData(data);
        p0(statRequest);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I(Event event, String str, String str2) {
        i0(event, str, str2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(Event event, String str, String str2, int i2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        if (str2 != null && !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
                Ext ext = statRequest.getExt();
                ext.setFrom(i2 + "");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        try {
            data.setGameId(Long.parseLong(str));
        } catch (Exception unused) {
            data.setGameId(0L);
        }
        statRequest.setData(data);
        p0(statRequest);
    }

    public void K(Event event, String str, String str2, int i2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setUid(Integer.parseInt(str2));
        try {
            statRequest.getData().setGameId(Long.parseLong(str));
            statRequest.getExt().setPlugVersion(str3);
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        String str4 = "local";
        if (event.name().equals("clickLocalNetBattleJoinRoomBtn") || event.name().equals("joinLocalNetBattleRoomSuccess")) {
            str4 = i2 == 2 ? "qrcode" : "default";
        } else if (event.name().equals("inviteBattleShareSuccess")) {
            str4 = i2 == 1 ? "weixin" : "qq";
        } else if (i2 == 7) {
            str4 = "netMatch";
        } else if (i2 == 2) {
            str4 = "inviteMatch";
        } else if (i2 != 3) {
            if (i2 == 9) {
                str4 = "multiBattle";
            } else if (i2 == 10) {
                str4 = "fastStart";
            }
        }
        statRequest.getExt().setMode(str4);
        statRequest.getExt().setUid(statRequest.getUid());
        com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
        dVar.t(event.name());
        dVar.s(System.currentTimeMillis() + "");
        dVar.k(k.a(this.f55556d));
        dVar.n(k.c(this.f55556d));
        dVar.u(statRequest.getUid() + "");
        dVar.l(JsonMapper.e().toJson(statRequest));
        this.f55555c.r(dVar);
        try {
            s(this.f55556d, this.f55555c.n(event.name(), dVar.i()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void L(Event event, String str, String str2, long j4, int i2, String str3, long j5, int i4, int i5, int i6) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str3 != null || !str3.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str3));
                statRequest.getExt().setUid(Integer.parseInt(str3));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Ext ext = statRequest.getExt();
        Data data = new Data();
        try {
            data.setGameId(Long.parseLong(str));
            ext.setUid(Integer.parseInt(str3));
        } catch (Exception unused) {
        }
        data.setWhere(str2);
        ext.setZipCost(j5);
        ext.setDuration(j4);
        ext.setInterrupt(i2);
        ext.setFrom(i4 + "");
        ext.setKeyWord(str2 + "");
        if (i4 == 101) {
            ext.setPosition(i5 + "");
        }
        ext.setGameFlag(i6);
        statRequest.setExt(ext);
        statRequest.setData(data);
        p0(statRequest);
    }

    public void M(Event event, String str, String str2, long j4, int i2, String str3, String str4, long j5, int i4, int i5, int i6) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str3 != null || !str3.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str3));
                statRequest.getExt().setUid(Integer.parseInt(str3));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Ext ext = statRequest.getExt();
        Data data = new Data();
        try {
            data.setGameId(Long.parseLong(str));
            ext.setUid(Integer.parseInt(str3));
        } catch (Exception unused) {
        }
        ext.setZipCost(j5);
        ext.setArticleId(str4);
        data.setWhere(str2);
        ext.setDuration(j4);
        ext.setInterrupt(i2);
        ext.setFrom(i4 + "");
        if (i4 == 101) {
            ext.setPosition(i5 + "");
        }
        ext.setGameFlag(i6);
        statRequest.setExt(ext);
        statRequest.setData(data);
        p0(statRequest);
    }

    public void N(Event event, String str, String str2, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setExt(ext);
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Data data = new Data();
        try {
            data.setGameId(Long.parseLong(str));
            ext.setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        data.setWhere(ext.getKeyWord());
        statRequest.setData(data);
        p0(statRequest);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O(Event event, String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        try {
            statRequest.setUid(Integer.parseInt(str3));
        } catch (Exception unused) {
        }
        if (!event.name().equals(Event.appPageClick.name()) && !event.name().equals(Event.appPageDownload.name())) {
            if (!event.name().equals(Event.plugEfficiency.name()) && !event.name().equals(Event.pluginPlayTime.name())) {
                Data data = new Data();
                try {
                    data.setGameId(Long.parseLong((str2 == null || str2.isEmpty()) ? "0" : "0"));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (str3 != null && !str3.equals("")) {
                    try {
                        statRequest.setUid(Integer.parseInt(str3));
                        statRequest.getExt().setUid(Integer.parseInt(str3));
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                data.setWhere(str);
                statRequest.setData(data);
            } else {
                try {
                    Data data2 = new Data();
                    try {
                        data2.setGameId(Long.parseLong(str));
                        data2.setWhere(str2);
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                    statRequest.setUid(Integer.parseInt(str3));
                    statRequest.setData(data2);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        } else {
            statRequest.getExt().setPage(str);
            statRequest.getExt().setUid(Integer.parseInt(str3));
            statRequest.getExt().setPosition(str2);
        }
        p0(statRequest);
    }

    public void P(Event event, String str, String str2, String str3, long j4, int i2, String str4, long j5, int i4) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str4 != null || !str4.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str4));
                statRequest.getExt().setUid(Integer.parseInt(str4));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Ext ext = statRequest.getExt();
        Data data = new Data();
        try {
            data.setGameId(Long.parseLong(str));
            ext.setUid(Integer.parseInt(str4));
        } catch (Exception unused) {
        }
        ext.setZipCost(j5);
        ext.setArticleId(str2);
        data.setWhere(str3);
        ext.setDuration(j4);
        ext.setInterrupt(i2);
        ext.setGameFlag(i4);
        statRequest.setExt(ext);
        statRequest.setData(data);
        p0(statRequest);
    }

    public void Q(Event event, String str, String str2, String str3, String str4, String str5) {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.setUid(Integer.parseInt(str5));
        } catch (Exception unused) {
        }
        statRequest.getExt().setFrom(str);
        statRequest.getExt().setPosition(str2);
        statRequest.getExt().setPage(str3);
        statRequest.getExt().setModule(str4);
        com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
        dVar.t(event.name());
        dVar.s(System.currentTimeMillis() + "");
        dVar.k(k.a(this.f55556d));
        dVar.n(k.c(this.f55556d));
        dVar.u(statRequest.getUid() + "");
        dVar.l(JsonMapper.e().toJson(statRequest));
        this.f55555c.r(dVar);
        try {
            s(this.f55556d, this.f55555c.n(event.name(), dVar.i()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(String str, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setNew(true);
        Data data = new Data();
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void S(String str, Ext ext, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setNew(true);
        Data data = new Data();
        data.setWhere(str2);
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T(String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        if (str3 != null || !str3.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str3));
                statRequest.getExt().setUid(Integer.parseInt(str3));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Data data = new Data();
        try {
            data.setGameId(Long.parseLong((str2 == null || str2.equals("")) ? "0" : "0"));
        } catch (Exception unused) {
            data.setGameId(0L);
        }
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(String str, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Data data = new Data();
        Ext ext = statRequest.getExt();
        ext.setUid(Integer.parseInt(str2));
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V(String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Data data = new Data();
        Ext ext = statRequest.getExt();
        ext.setUid(Integer.parseInt(str2));
        ext.setBtn(str3);
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W(String str, String str2, String str3, String str4, String str5, String str6) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        if (str2 != null || !str2.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str2));
                statRequest.getExt().setUid(Integer.parseInt(str2));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        Data data = new Data();
        Ext ext = statRequest.getExt();
        str3 = (str3 == null || str3.equals("")) ? "0" : "0";
        ext.setUid(Integer.parseInt(str2));
        ext.setGameId(str3);
        ext.setBtn(str4);
        ext.setPosition(str5);
        ext.setPicName(str6);
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public void Y(Context context, List<com.papa.sim.statistic.db.d> list) {
        ArrayList arrayList = new ArrayList();
        for (com.papa.sim.statistic.db.d dVar : list) {
            StringBuilder sb = new StringBuilder();
            sb.append("sendAllPlugPlayData: ");
            sb.append(JsonMapper.toJsonString(dVar));
            StatRequest g4 = g(context, dVar);
            if (g4.getUid() == 0 || g4.getExt().getUid() == 0) {
                try {
                    g4.setUid(Integer.parseInt(p.l(context).n().a(context)));
                    g4.getExt().setUid(Integer.parseInt(p.l(context).n().a(context)));
                } catch (Exception unused) {
                }
            }
            arrayList.add(g4);
        }
        if (arrayList.size() > 0) {
            com.papa.sim.statistic.http.c c4 = com.papa.sim.statistic.http.c.c();
            c4.h(context, f55548n + "/simulator/simulator_play_game_log", ((StatRequest) arrayList.get(0)).getExt().getArticleId(), new f(list), arrayList);
        }
    }

    public void Z(StatDataCenterReq statDataCenterReq) {
        try {
            statDataCenterReq.setNettype(m(this.f55556d));
            statDataCenterReq.setCarrier(j(this.f55556d) + "");
            String jsonString = JsonMapper.toJsonString(statDataCenterReq);
            if (i(jsonString, statDataCenterReq.getDid()).equals("-1")) {
                com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
                dVar.t(statDataCenterReq.getEvent());
                dVar.l(jsonString);
                dVar.s(statDataCenterReq.getGame_time() + "");
                dVar.p(1);
                if (this.f55555c.n(statDataCenterReq.getEvent(), dVar.i()) == null) {
                    this.f55555c.r(dVar);
                }
            }
        } catch (Exception unused) {
        }
    }

    public boolean a0(com.papa.sim.statistic.db.a aVar) {
        try {
            if (aVar.getType().equals(Event.setemuerror.name())) {
                EmuErrorDto emuErrorDto = (EmuErrorDto) JsonMapper.e().fromJson(aVar.b(), EmuErrorDto.class);
                if (emuErrorDto == null) {
                    return false;
                }
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                HttpPost httpPost = new HttpPost(f55545k + "/add/commitpluginerrorinfo");
                httpPost.addHeader("Content-Type", HttpHeaders.Values.APPLICATION_JSON);
                q.f(this.f55556d);
                String b4 = q.f(this.f55556d).b();
                String g4 = q.f(this.f55556d).g();
                WifiInfo connectionInfo = ((WifiManager) this.f55556d.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
                if (b4 == null || b4.equals("")) {
                    b4 = j.a(g4);
                }
                String str = b4;
                String a4 = j.a(str + "gzRN53VWRF9BYUXomg2014");
                String[] p3 = q.f(this.f55556d).p();
                emuErrorDto.setModel(Build.MODEL);
                emuErrorDto.setMac(g4.replaceAll(":", "_"));
                emuErrorDto.setIp(o(connectionInfo.getIpAddress()));
                emuErrorDto.setTimes((Long.parseLong(aVar.f()) / 1000) + "");
                String json = JsonMapper.e().toJson(new ErrorRequestBean(p3[0] + "_" + p3[1], str, "add", a4, new ErrorRequestMessage("commitPluginErrorInfo", emuErrorDto)));
                StringBuilder sb = new StringBuilder();
                sb.append("paramsJson=");
                sb.append(json);
                httpPost.setEntity(new StringEntity(json));
                HttpResponse execute = defaultHttpClient.execute(httpPost);
                if (execute.getStatusLine().getStatusCode() == 200) {
                    ResultMainBean resultMainBean = (ResultMainBean) JsonMapper.e().fromJson(EntityUtils.toString(execute.getEntity()), ResultMainBean.class);
                    if (resultMainBean != null) {
                        resultMainBean.getFlag();
                    }
                }
            }
            return true;
        } catch (UnknownHostException e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e4.getClass().getName());
            sb2.append(":");
            sb2.append(e4.getMessage());
            return false;
        } catch (Exception e5) {
            e5.printStackTrace();
            return false;
        }
    }

    public void b0(Event event, String str, String str2) {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.setUid(Integer.parseInt(str2));
            statRequest.getData().setGameId(Long.parseLong(str));
            statRequest.getExt().setUid(Integer.parseInt(str2));
        } catch (Exception unused) {
        }
        statRequest.getExt().setPlugVersion(p.f55577h);
        com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
        dVar.t(event.name());
        dVar.s(System.currentTimeMillis() + "");
        dVar.k(k.a(this.f55556d));
        dVar.n(k.c(this.f55556d));
        dVar.u(statRequest.getUid() + "");
        dVar.l(JsonMapper.e().toJson(statRequest));
        this.f55555c.r(dVar);
        try {
            s(this.f55556d, this.f55555c.n(event.name(), dVar.i()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void c0(Event event, String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setUid(Integer.parseInt(str2));
        statRequest.setTime(System.currentTimeMillis());
        try {
            statRequest.getData().setGameId(Long.parseLong(str));
        } catch (Exception unused) {
        }
        statRequest.getExt().setUid(Integer.parseInt(str2));
        statRequest.getExt().setPlugVersion(str3);
        com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
        dVar.t(event.name());
        dVar.s(System.currentTimeMillis() + "");
        dVar.k(k.a(this.f55556d));
        dVar.n(k.c(this.f55556d));
        dVar.u(statRequest.getUid() + "");
        dVar.l(JsonMapper.e().toJson(statRequest));
        this.f55555c.r(dVar);
        try {
            s(this.f55556d, this.f55555c.n(event.name(), dVar.i()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d0(String str, Ext ext, String str2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        if (!TextUtils.isEmpty(str2)) {
            data.setGameId(Long.parseLong(str2));
        }
        statRequest.setExt(ext);
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e0(String str, String str2, String str3) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        Ext ext = new Ext();
        ext.setPage(str3);
        statRequest.setExt(ext);
        Data data = new Data();
        data.setWhere(str2);
        statRequest.setData(data);
        try {
            p0(statRequest);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f0(String str, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setExt(ext);
        statRequest.setData(new Data());
        try {
            p0(statRequest);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g0(String str, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(str);
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setNew(true);
        statRequest.setExt(ext);
        statRequest.setData(new Data());
        try {
            p0(statRequest);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void h(StatRequest statRequest) {
        this.f55555c.delete(statRequest.getId());
        StringBuilder sb = new StringBuilder();
        sb.append("发送成功之后删除数据 deleStat ");
        sb.append(statRequest.getEvent());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h0(StatRequest statRequest) {
        try {
            p0(statRequest);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i0(Event event, String str, String str2, int i2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        statRequest.getExt().setGameFlag(i2);
        if (event.name().equals(Event.gameList.name())) {
            statRequest.setUid(Integer.parseInt(str2));
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setGameList(str);
            p0(statRequest);
            return;
        }
        Data data = new Data();
        if (!event.name().equals(Event.setpapaerror.name()) && !event.name().equals(Event.setemuerror.name())) {
            if (str2 != null && !str2.equals("")) {
                try {
                    statRequest.setUid(Integer.parseInt(str2));
                    statRequest.getExt().setUid(Integer.parseInt(str2));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (!event.name().equals(Event.gameStart.name())) {
                String name = event.name();
                Event event2 = Event.startLocalNetBattleSuccess;
                if (!name.equals(event2.name()) && !event.name().equals(Event.gameDownload.name()) && !event.name().equals(Event.clickLocalNetBattleStartBtn.name()) && !event.name().equals(Event.createLocalNetBattleRoomSuccess.name()) && !event.name().equals(Event.joinLocalNetBattleRoomSuccess.name()) && !event.name().equals(Event.clickCreateLocalNetBattleRoomBtn.name()) && !event.name().equals(Event.clickLocalNetBattleJoinRoomBtn.name()) && !event.name().equals(Event.clickLocalNetBattleRoomStartBtn.name()) && !event.name().equals(Event.visitGamePage.name()) && !event.name().equals(event2.name()) && !event.name().equals(Event.netBattleMatchStart.name()) && !event.name().equals(Event.netBattleMatchFinish.name()) && !event.name().equals(Event.gameRequest.name()) && !event.name().equals(Event.gameRemove.name()) && !event.name().equals(Event.downloadStop.name()) && !event.name().equals(Event.gameRemove1.name()) && !event.name().equals(Event.gameRemove2.name()) && !event.name().equals(Event.unzipFailed.name()) && !event.name().equals(Event.unzipIndexFailed.name()) && !event.name().equals(Event.unzipIOFailed.name()) && !event.name().equals(Event.gameUnzip.name()) && !event.name().equals(Event.installAndroidCompleted.name()) && !event.name().equals(Event.netMatchBtnClick.name()) && !event.name().equals(Event.inviteBattleAutoJoinSuccess.name())) {
                    if (event.name().equals(Event.appUseTime.name())) {
                        data.setLocation(str);
                    } else if (event.name().equals(Event.netBattleMatchEfficiency.name())) {
                        data.setLocation(str);
                    } else if (!event.name().equals(Event.joyStickInfoPost.name()) && !event.name().equals(Event.joyStickConfigPost.name())) {
                        if (!event.name().equals(Event.startDownloadPlug.name()) && !event.name().equals(Event.downloadPlugCompleted.name())) {
                            if (event.name().equals(Event.appPageVisit.name())) {
                                statRequest.getExt().setPage(str);
                            }
                        } else {
                            try {
                                data.setPlugId(Integer.parseInt(str));
                            } catch (Exception unused) {
                            }
                        }
                    } else {
                        data.setLocation(str);
                    }
                }
            }
            try {
                data.setGameId(Long.parseLong(str));
            } catch (Exception unused2) {
                data.setGameId(0L);
            }
        } else {
            data.setWhere(str);
            data.setLocation(str2);
        }
        statRequest.setData(data);
        p0(statRequest);
    }

    public int j(Context context) {
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator == null) {
            return 0;
        }
        if (simOperator.equals("46000") || simOperator.equals("46002")) {
            return 2;
        }
        if (simOperator.equals("46001")) {
            return 3;
        }
        return simOperator.equals("46003") ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j0(Event event, String str, String str2, int i2, StatRequest statRequest) {
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        statRequest.getExt().setGameFlag(i2);
        if (event.name().equals(Event.gameList.name())) {
            statRequest.setUid(Integer.parseInt(str2));
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setGameList(str);
            p0(statRequest);
            return;
        }
        Data data = new Data();
        if (!event.name().equals(Event.setpapaerror.name()) && !event.name().equals(Event.setemuerror.name())) {
            if (str2 != null && !str2.equals("")) {
                try {
                    statRequest.setUid(Integer.parseInt(str2));
                    statRequest.getExt().setUid(Integer.parseInt(str2));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (!event.name().equals(Event.gameStart.name())) {
                String name = event.name();
                Event event2 = Event.startLocalNetBattleSuccess;
                if (!name.equals(event2.name()) && !event.name().equals(Event.gameDownload.name()) && !event.name().equals(Event.clickLocalNetBattleStartBtn.name()) && !event.name().equals(Event.createLocalNetBattleRoomSuccess.name()) && !event.name().equals(Event.joinLocalNetBattleRoomSuccess.name()) && !event.name().equals(Event.clickCreateLocalNetBattleRoomBtn.name()) && !event.name().equals(Event.clickLocalNetBattleJoinRoomBtn.name()) && !event.name().equals(Event.clickLocalNetBattleRoomStartBtn.name()) && !event.name().equals(Event.visitGamePage.name()) && !event.name().equals(event2.name()) && !event.name().equals(Event.netBattleMatchStart.name()) && !event.name().equals(Event.netBattleMatchFinish.name()) && !event.name().equals(Event.gameRequest.name()) && !event.name().equals(Event.gameRemove.name()) && !event.name().equals(Event.downloadStop.name()) && !event.name().equals(Event.gameRemove1.name()) && !event.name().equals(Event.gameRemove2.name()) && !event.name().equals(Event.unzipFailed.name()) && !event.name().equals(Event.unzipIndexFailed.name()) && !event.name().equals(Event.unzipIOFailed.name()) && !event.name().equals(Event.gameUnzip.name()) && !event.name().equals(Event.installAndroidCompleted.name()) && !event.name().equals(Event.netMatchBtnClick.name()) && !event.name().equals(Event.inviteBattleAutoJoinSuccess.name())) {
                    if (event.name().equals(Event.appUseTime.name())) {
                        data.setLocation(str);
                    } else if (event.name().equals(Event.netBattleMatchEfficiency.name())) {
                        data.setLocation(str);
                    } else if (!event.name().equals(Event.joyStickInfoPost.name()) && !event.name().equals(Event.joyStickConfigPost.name())) {
                        if (!event.name().equals(Event.startDownloadPlug.name()) && !event.name().equals(Event.downloadPlugCompleted.name())) {
                            if (event.name().equals(Event.appPageVisit.name())) {
                                statRequest.getExt().setPage(str);
                            }
                        } else {
                            try {
                                data.setPlugId(Integer.parseInt(str));
                            } catch (Exception unused) {
                            }
                        }
                    } else {
                        data.setLocation(str);
                    }
                }
            }
            try {
                data.setGameId(Long.parseLong(str));
            } catch (Exception unused2) {
                data.setGameId(0L);
            }
        } else {
            data.setWhere(str);
            data.setLocation(str2);
        }
        statRequest.setData(data);
        p0(statRequest);
    }

    public void l0(boolean z3) {
        this.f55559g = z3;
    }

    public String m(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.getType() != 1 && activeNetworkInfo.getType() == 0) {
            int subtype = activeNetworkInfo.getSubtype();
            if (subtype == 4 || subtype == 1 || subtype == 2) {
                return NetworkUtil.NETWORK_CLASS_2G;
            }
            if (subtype == 3 || subtype == 8 || subtype == 6 || subtype == 5 || subtype == 12) {
                return NetworkUtil.NETWORK_CLASS_3G;
            }
            if (subtype == 13) {
                return NetworkUtil.NETWORK_CLASS_4G;
            }
        }
        return NetworkUtil.NETWORK_TYPE_WIFI;
    }

    public void m0(boolean z3) {
        this.f55560h = z3;
    }

    public int n(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            if (activeNetworkInfo.getType() == 1) {
                return 3;
            }
            if (activeNetworkInfo.getType() == 0) {
                return 2;
            }
        }
        return 1;
    }

    public void n0(boolean z3) {
        this.f55561i = z3;
    }

    public void o0(Context context, JoyStickConfig joyStickConfig) {
        l.a(context, joyStickConfig);
    }

    public boolean p() {
        return this.f55559g;
    }

    public boolean q() {
        return this.f55560h;
    }

    public boolean r() {
        return this.f55561i;
    }

    public void s(Context context, com.papa.sim.statistic.db.d dVar) {
        StatRequest g4;
        String b4;
        f();
        if (com.papa.sim.statistic.pref.b.j(context).r() || dVar == null || (g4 = g(context, dVar)) == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("thread[");
        sb.append(Thread.currentThread().getId());
        sb.append("] method offline() statRequest .id=");
        sb.append(g4.getId());
        sb.append(";event=");
        sb.append(g4.getEvent());
        sb.append(";isdirect=");
        sb.append(dVar.f());
        g4.setDebug(this.f55554b);
        if (g4.getExt() == null) {
            g4.setExt(new Ext());
        }
        try {
            if (dVar.getType().equals(Event.netBattleMatchEfficiency.name())) {
                String str = f55545k + "/netbattle/performance";
                File file = new File(g4.getExt().getLogFile());
                if (file.exists()) {
                    com.papa.sim.statistic.http.c.c().d(str, file, new a(context, dVar));
                }
            } else if (dVar.getType().equals(Event.plugEfficiency.name())) {
                com.papa.sim.statistic.http.c.c().e(context, f55545k + "/plug_data", g4.getData().getGameId(), g4.getData().getWhere(), g4.getUid(), new b(dVar));
            } else if (dVar.getType().equals(Event.pluginPlayTime.name())) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(g4);
                com.papa.sim.statistic.http.c.c().h(context, f55548n + "/simulator/simulator_play_game_log", g4.getExt().getArticleId(), new c(dVar), arrayList);
            } else {
                if (g4.getUid() == 0 || g4.getExt().getUid() == 0) {
                    try {
                        g4.setUid(Integer.parseInt(p.l(context).n().a(context)));
                        g4.getExt().setUid(Integer.parseInt(p.l(context).n().a(context)));
                    } catch (Exception unused) {
                    }
                }
                if (!g4.getEvent().equals(Event.startApp.name()) && !g4.getEvent().equals(Event.gameDownload.name()) && !g4.getEvent().equals(Event.gameRequest.name()) && !g4.getEvent().equals(Event.gameStart.name()) && !g4.getEvent().equals(Event.gameDownloadCompleted.name()) && !g4.getEvent().equals(Event.installAndroidCompleted.name()) && !g4.getEvent().equals(Event.gameUnzip.name()) && !g4.getEvent().equals(Event.gameOut.name()) && !g4.getEvent().equals(Event.visitGamePage.name()) && !g4.getEvent().equals(Event.gameList.name())) {
                    this.f55555c.g();
                    List<com.papa.sim.statistic.db.d> k4 = this.f55555c.k();
                    if (k4 == null || k4.size() < 10 || this.f55558f) {
                        return;
                    }
                    this.f55558f = true;
                    X(k4);
                    return;
                }
                try {
                    if (g4.getEvent().equals(Event.gameRequest.name())) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("From=");
                        sb2.append(g4.getExt().getFrom());
                        sb2.append("  Position= ");
                        sb2.append(g4.getExt().getPosition());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                try {
                    b4 = com.papa.sim.statistic.a.b(JsonMapper.e().toJson(g4), "");
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                com.papa.sim.statistic.http.c.c().g(f55545k + "/data/v3", b4, new d(dVar, context));
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
    }

    public void t(Context context, List<com.papa.sim.statistic.db.d> list) {
        X(list);
    }

    void v(Event event, int i2) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        Data data = new Data();
        try {
            data.setPlugId(i2);
        } catch (Exception unused) {
            data.setGameId(0L);
        }
        statRequest.setData(data);
        p0(statRequest);
    }

    public void w(Event event, Event event2, int i2, String str, int i4) {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.getData().setGameId(Long.parseLong(str));
        } catch (Exception unused) {
        }
        Ext ext = statRequest.getExt();
        ext.setUid(i4);
        ext.setNetType(n(this.f55556d));
        ext.setBtn(event2.name() + i2);
        ext.setGameId(str);
        com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
        dVar.t(event.name());
        dVar.s(System.currentTimeMillis() + "");
        dVar.k(k.a(this.f55556d));
        dVar.n(k.c(this.f55556d));
        dVar.u(statRequest.getUid() + "");
        dVar.l(JsonMapper.e().toJson(statRequest));
        this.f55555c.r(dVar);
        try {
            s(this.f55556d, this.f55555c.n(event.name(), dVar.i()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void x(Event event, Event event2, String str, int i2) {
        StatRequest statRequest = new StatRequest();
        try {
            statRequest.getData().setGameId(Long.parseLong(str));
        } catch (Exception unused) {
        }
        Ext ext = statRequest.getExt();
        ext.setUid(i2);
        ext.setNetType(n(this.f55556d));
        ext.setBtn(event2.name());
        ext.setMode(event2.name());
        statRequest.setUid(ext.getUid());
        com.papa.sim.statistic.db.d dVar = new com.papa.sim.statistic.db.d();
        dVar.t(event.name());
        dVar.s(System.currentTimeMillis() + "");
        dVar.k(k.a(this.f55556d));
        dVar.n(k.c(this.f55556d));
        dVar.u(statRequest.getUid() + "");
        dVar.l(JsonMapper.e().toJson(statRequest));
        this.f55555c.r(dVar);
        try {
            s(this.f55556d, this.f55555c.n(event.name(), dVar.i()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void y(Event event, Ext ext) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        statRequest.setExt(ext);
        p0(statRequest);
    }

    public void z(Event event, Ext ext, String str) {
        StatRequest statRequest = new StatRequest();
        statRequest.setEvent(event.name());
        statRequest.setTime(System.currentTimeMillis());
        if (str != null || !str.equals("")) {
            try {
                statRequest.setUid(Integer.parseInt(str));
                ext.setUid(Integer.parseInt(str));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        statRequest.setExt(ext);
        p0(statRequest);
    }
}
