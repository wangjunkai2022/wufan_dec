package com.papa.sim.statistic.http;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.dto.Constant;
import com.papa.sim.statistic.GameWorldResponse;
import com.papa.sim.statistic.JoyStickConfig;
import com.papa.sim.statistic.JoyStickConfigTmp;
import com.papa.sim.statistic.JsonMapper;
import com.papa.sim.statistic.RequestHeaderBean;
import com.papa.sim.statistic.StatRequest;
import com.papa.sim.statistic.StatResult;
import com.papa.sim.statistic.g;
import com.papa.sim.statistic.http.b;
import com.papa.sim.statistic.j;
import com.papa.sim.statistic.k;
import com.papa.sim.statistic.n;
import com.papa.sim.statistic.o;
import com.papa.sim.statistic.q;
import com.tencent.stat.DeviceInfo;
import java.io.File;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.Request;
/* compiled from: RPCClient.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static c f55520a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RPCClient.java */
    /* loaded from: classes4.dex */
    public class a extends b.p<String> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f55521b;

        a(com.papa.sim.statistic.http.a aVar) {
            this.f55521b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f55521b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* renamed from: f */
        public void e(String str) {
            this.f55521b.onSuccess(str);
        }
    }

    /* compiled from: RPCClient.java */
    /* loaded from: classes4.dex */
    class b extends b.p<GameWorldResponse> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f55523b;

        b(com.papa.sim.statistic.http.a aVar) {
            this.f55523b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f55523b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* renamed from: f */
        public void e(GameWorldResponse gameWorldResponse) {
            this.f55523b.onSuccess(gameWorldResponse);
        }
    }

    /* compiled from: RPCClient.java */
    /* renamed from: com.papa.sim.statistic.http.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0277c extends b.p<GameWorldResponse> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f55525b;

        C0277c(com.papa.sim.statistic.http.a aVar) {
            this.f55525b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f55525b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* renamed from: f */
        public void e(GameWorldResponse gameWorldResponse) {
            this.f55525b.onSuccess(gameWorldResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RPCClient.java */
    /* loaded from: classes4.dex */
    public class d extends b.p<StatResult> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55527b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f55528c;

        d(String str, com.papa.sim.statistic.http.a aVar) {
            this.f55527b = str;
            this.f55528c = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            this.f55528c.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* renamed from: f */
        public void e(StatResult statResult) {
            this.f55528c.onSuccess(statResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RPCClient.java */
    /* loaded from: classes4.dex */
    public class e extends b.p<String> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f55530b;

        e(com.papa.sim.statistic.http.a aVar) {
            this.f55530b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f55530b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* renamed from: f */
        public void e(String str) {
            this.f55530b.onSuccess(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RPCClient.java */
    /* loaded from: classes4.dex */
    public class f extends b.p<String> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f55532b;

        f(com.papa.sim.statistic.http.a aVar) {
            this.f55532b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f55532b.a(exc);
            StringBuilder sb = new StringBuilder();
            sb.append("onError: ");
            sb.append(JsonMapper.toJsonString(exc));
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* renamed from: f */
        public void e(String str) {
            StringBuilder sb = new StringBuilder();
            sb.append("onResponse: ");
            sb.append(JsonMapper.toJsonString(str));
            if (!str.contains("\"flag\":\"1\"") && !str.contains("\"flag\":1")) {
                this.f55532b.a(null);
            } else {
                this.f55532b.onSuccess(str);
            }
        }
    }

    private c() {
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b4 : bArr) {
            String hexString = Integer.toHexString(b4 & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static String b(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            int blockSize = cipher.getBlockSize();
            byte[] bytes = str.getBytes();
            int length = bytes.length;
            if (length % blockSize != 0) {
                length += blockSize - (length % blockSize);
            }
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            cipher.init(1, new SecretKeySpec("625202f9149e061d".getBytes(), "AES"));
            return a(cipher.doFinal(bArr));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static c c() {
        if (f55520a == null) {
            f55520a = new c();
        }
        return f55520a;
    }

    public void d(String str, File file, com.papa.sim.statistic.http.a aVar) {
        com.papa.sim.statistic.http.b.I().f(str, com.facebook.common.util.f.f11767c, file, new b.n[0], new a(aVar), file.getName());
    }

    public void e(Context context, String str, long j4, String str2, int i2, com.papa.sim.statistic.http.a<String> aVar) {
        com.papa.sim.statistic.http.b.Y(str, new b.n[]{new b.n("device_id", ""), new b.n("brand", Build.BRAND), new b.n("model", Build.MODEL), new b.n("data", str2), new b.n("game_id", j4 + ""), new b.n("uid", i2 + "")}, new e(aVar));
    }

    public boolean f(Context context) {
        RequestHeaderBean requestHeaderBean;
        String string = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("RequestHeaders", "");
        if (TextUtils.isEmpty(string) || (requestHeaderBean = (RequestHeaderBean) JsonMapper.e().fromJson(string, RequestHeaderBean.class)) == null) {
            return false;
        }
        com.papa.sim.statistic.http.b.G().d0(requestHeaderBean.getWufankey(), requestHeaderBean.getWf_d(), requestHeaderBean.getWf_a(), requestHeaderBean.getWf_ad(), requestHeaderBean.getWf_m(), requestHeaderBean.getWf_i(), requestHeaderBean.getWf_pm());
        return (requestHeaderBean.getWufankey() == null || requestHeaderBean.getWf_a() == null) ? false : true;
    }

    public void g(String str, String str2, com.papa.sim.statistic.http.a<StatResult> aVar) {
        com.papa.sim.statistic.http.b.G().H().n(str, str2, new d(str2, aVar));
    }

    public void h(Context context, String str, String str2, com.papa.sim.statistic.http.a<String> aVar, List<StatRequest> list) {
        String[] p3 = q.f(context).p();
        String str3 = p3[0] + "_" + p3[1];
        StringBuilder sb = new StringBuilder();
        if (list != null) {
            for (StatRequest statRequest : list) {
                sb.append("{\"uid\": \"" + statRequest.getData().getUid() + "\",\"game_id\":\"" + statRequest.getData().getGameId() + "\",\"batch_id\":\"" + statRequest.getExt().getArticleId() + "\",\"play_time\":\"" + statRequest.getExt().getDuration() + "\"},");
            }
        }
        String b4 = b("{\"batch_id\":\"" + str2 + "\",\"play_game_time_info\":[" + sb.substring(0, sb.length() - 1) + "]}");
        StringBuilder sb2 = new StringBuilder();
        String str4 = "";
        sb2.append("");
        sb2.append("gzRN53VWRF9BYUXomg2014");
        String str5 = "{\"version\": \"" + str3 + "\",\"deviceid\": \"\",\"sign\": \"" + j.a(sb2.toString()) + "\",\"messages\": {\"args\": {\"info\":\"" + b4 + "\"}}}";
        String b5 = q.f(context).b();
        try {
            b5 = com.papa.sim.statistic.a.b(b5, "");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        String str6 = b5;
        String a4 = k.a(context);
        String a5 = q.f(context).a(context);
        try {
            a5 = com.papa.sim.statistic.a.b(a5, "");
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        String str7 = a5;
        String g4 = q.f(context).g();
        try {
            g4 = com.papa.sim.statistic.a.b(g4, "");
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        String str8 = g4;
        String e7 = g.e();
        try {
            e7 = com.papa.sim.statistic.a.b(e7, "");
        } catch (Exception e8) {
            e8.printStackTrace();
        }
        String str9 = e7;
        try {
            str4 = com.papa.sim.statistic.a.b(Build.MODEL, "");
        } catch (Exception e9) {
            e9.printStackTrace();
        }
        com.papa.sim.statistic.http.b.G().d0("", str6, str7, a4, str8, str9, str4);
        com.papa.sim.statistic.http.b.U(str, str5, new f(aVar));
    }

    public void i(Context context, JoyStickConfig joyStickConfig, com.papa.sim.statistic.http.a<GameWorldResponse> aVar) {
        JoyStickConfigTmp joyStickConfigTmp = new JoyStickConfigTmp();
        joyStickConfigTmp.setUid(joyStickConfig.getUid() + "");
        joyStickConfigTmp.setDevice_id("");
        joyStickConfigTmp.setVer(q.f(context).n() + "");
        joyStickConfigTmp.setGamepad_mac(joyStickConfig.getGamepad_mac());
        joyStickConfigTmp.setGamepad_name(joyStickConfig.getGamepad_name());
        joyStickConfigTmp.setUpload_time(joyStickConfig.getUpdate_time() + "");
        String d4 = n.d(joyStickConfigTmp);
        File file = new File(joyStickConfig.getFile());
        com.papa.sim.statistic.http.b.I().f(o.f55546l + "/v14/user/configure/game_pad_cfg", com.facebook.common.util.f.f11767c, file, new b.n[]{new b.n("uid", joyStickConfig.getUid() + ""), new b.n(DeviceInfo.TAG_VERSION, q.f(context).n() + ""), new b.n("gamepad_mac", joyStickConfig.getGamepad_mac()), new b.n("gamepad_name", joyStickConfig.getGamepad_name()), new b.n("upload_time", joyStickConfig.getUpdate_time() + ""), new b.n("device_id", ""), new b.n(Constant.MD5, d4)}, new b(aVar), file.getName());
    }

    public void j(Context context, JoyStickConfig joyStickConfig, com.papa.sim.statistic.http.a<GameWorldResponse> aVar) {
        JoyStickConfigTmp joyStickConfigTmp = new JoyStickConfigTmp();
        joyStickConfigTmp.setUid(joyStickConfig.getUid() + "");
        joyStickConfigTmp.setDevice_id("");
        joyStickConfigTmp.setVer(q.f(context).n() + "");
        joyStickConfigTmp.setGamepad_mac(joyStickConfig.getGamepad_mac());
        joyStickConfigTmp.setGamepad_name(joyStickConfig.getGamepad_name());
        joyStickConfigTmp.setUpload_time(joyStickConfig.getUpdate_time() + "");
        String d4 = n.d(joyStickConfigTmp);
        File file = new File(joyStickConfig.getFile());
        com.papa.sim.statistic.http.b.I().f(o.f55546l + "/v14/user/configure/game_pad_info", com.facebook.common.util.f.f11767c, file, new b.n[]{new b.n("uid", joyStickConfig.getUid() + ""), new b.n(DeviceInfo.TAG_VERSION, q.f(context).n() + ""), new b.n("gamepad_mac", joyStickConfig.getGamepad_mac()), new b.n("gamepad_name", joyStickConfig.getGamepad_name()), new b.n("upload_time", joyStickConfig.getUpdate_time() + ""), new b.n("device_id", ""), new b.n(Constant.MD5, d4)}, new C0277c(aVar), file.getName());
    }
}
