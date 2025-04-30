package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Context f60111a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Integer> f60112b;

    public j(Context context, Map<String, Integer> map) {
        this.f60111a = null;
        this.f60112b = null;
        this.f60111a = context;
        if (map != null) {
            this.f60112b = map;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private NetworkMonitor a(String str, int i2) {
        StatLogger statLogger;
        StatLogger statLogger2;
        StatLogger statLogger3;
        int i4;
        StatLogger statLogger4;
        StatLogger statLogger5;
        NetworkMonitor networkMonitor = new NetworkMonitor();
        Socket socket = new Socket();
        try {
            try {
                networkMonitor.setDomain(str);
                networkMonitor.setPort(i2);
                long currentTimeMillis = System.currentTimeMillis();
                InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i2);
                socket.connect(inetSocketAddress, com.facebook.imagepipeline.producers.s.f13217g);
                networkMonitor.setMillisecondsConsume(System.currentTimeMillis() - currentTimeMillis);
                networkMonitor.setRemoteIp(inetSocketAddress.getAddress().getHostAddress());
                socket.close();
                try {
                    socket.close();
                } catch (Throwable th) {
                    statLogger5 = StatService.f59983i;
                    statLogger5.e(th);
                }
                i4 = 0;
                socket = socket;
            } catch (IOException e4) {
                statLogger = StatService.f59983i;
                statLogger.e((Exception) e4);
                try {
                    socket.close();
                    statLogger3 = socket;
                } catch (Throwable th2) {
                    statLogger2 = StatService.f59983i;
                    statLogger2.e(th2);
                    statLogger3 = statLogger2;
                }
                i4 = -1;
                socket = statLogger3;
            }
            networkMonitor.setStatusCode(i4);
            return networkMonitor;
        } catch (Throwable th3) {
            try {
                socket.close();
            } catch (Throwable th4) {
                statLogger4 = StatService.f59983i;
                statLogger4.e(th4);
            }
            throw th3;
        }
    }

    private Map<String, Integer> a() {
        String str;
        StatLogger statLogger;
        HashMap hashMap = new HashMap();
        String a4 = StatConfig.a("__MTA_TEST_SPEED__", (String) null);
        if (a4 != null && a4.trim().length() != 0) {
            for (String str2 : a4.split(";")) {
                String[] split = str2.split(",");
                if (split != null && split.length == 2 && (str = split[0]) != null && str.trim().length() != 0) {
                    try {
                        hashMap.put(str, Integer.valueOf(Integer.valueOf(split[1]).intValue()));
                    } catch (NumberFormatException e4) {
                        statLogger = StatService.f59983i;
                        statLogger.e((Exception) e4);
                    }
                }
            }
        }
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        StatLogger statLogger;
        StatLogger statLogger2;
        StatLogger statLogger3;
        String str;
        try {
            if (com.tencent.stat.common.k.h(this.f60111a)) {
                if (this.f60112b == null) {
                    this.f60112b = a();
                }
                Map<String, Integer> map = this.f60112b;
                if (map != null && map.size() != 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry<String, Integer> entry : this.f60112b.entrySet()) {
                        String key = entry.getKey();
                        if (key != null && key.length() != 0) {
                            if (entry.getValue() == null) {
                                statLogger3 = StatService.f59983i;
                                str = "port is null for " + key;
                                statLogger3.w(str);
                            } else {
                                jSONArray.put(a(entry.getKey(), entry.getValue().intValue()).toJSONObject());
                            }
                        }
                        statLogger3 = StatService.f59983i;
                        str = "empty domain name.";
                        statLogger3.w(str);
                    }
                    if (jSONArray.length() == 0) {
                        return;
                    }
                    Context context = this.f60111a;
                    com.tencent.stat.a.i iVar = new com.tencent.stat.a.i(context, StatService.a(context, false));
                    iVar.a(jSONArray.toString());
                    if (StatService.c(this.f60111a) != null) {
                        StatService.c(this.f60111a).post(new k(iVar));
                        return;
                    }
                    return;
                }
                statLogger2 = StatService.f59983i;
                statLogger2.w("empty domain list.");
            }
        } catch (Throwable th) {
            statLogger = StatService.f59983i;
            statLogger.e(th);
        }
    }
}
