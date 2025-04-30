package com.efs.sdk.base.core.config.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.controller.ControllerCenter;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public int f11310a = -1;

    /* renamed from: b  reason: collision with root package name */
    String f11311b = "https://";

    /* renamed from: c  reason: collision with root package name */
    String f11312c = "errlog.umeng.com";

    /* renamed from: f  reason: collision with root package name */
    private Boolean f11315f = null;

    /* renamed from: d  reason: collision with root package name */
    public Map<String, Double> f11313d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public Map<String, String> f11314e = new HashMap();

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a() {
        b bVar = new b();
        if (ControllerCenter.getGlobalEnvStruct().isIntl()) {
            bVar.f11312c = "errlogos.umeng.com";
        } else {
            bVar.f11312c = "errlog.umeng.com";
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(@NonNull Map<String, String> map) {
        if (map.containsKey("gate_way")) {
            String str = map.get("gate_way");
            if (!TextUtils.isEmpty(str)) {
                this.f11312c = str;
            }
        }
        if (map.containsKey("gate_way_https")) {
            String str2 = map.get("gate_way_https");
            if (!TextUtils.isEmpty(str2)) {
                this.f11311b = Boolean.parseBoolean(str2) ? "https://" : "http://";
            }
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key.startsWith("data_sampling_rate_") || key.startsWith("file_sampling_rate_")) {
                String replace = key.replace("data_sampling_rate_", "").replace("file_sampling_rate_", "");
                double d4 = 100.0d;
                try {
                    d4 = Double.parseDouble(entry.getValue());
                } catch (Throwable unused) {
                }
                hashMap.put(replace, Double.valueOf(d4));
            }
        }
        this.f11313d = hashMap;
        this.f11314e = map;
    }
}
