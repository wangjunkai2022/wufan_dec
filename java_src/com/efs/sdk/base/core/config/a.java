package com.efs.sdk.base.core.config;

import android.text.TextUtils;
import com.alipay.sdk.app.statistic.c;
import com.efs.sdk.base.protocol.file.section.AbsSection;
import com.efs.sdk.base.protocol.file.section.KVSection;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.qq.e.comm.pi.ACTD;
import com.tencent.cos.common.COSHttpResponseKey;
import com.tencent.stat.DeviceInfo;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f11308a = new ConcurrentHashMap();

    public final void a(String str, Object obj) {
        this.f11308a.put(str, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object b(String str, Object obj) {
        Object obj2 = this.f11308a.get(str);
        return (obj2 != null || this.f11308a.containsKey(str)) ? obj2 : obj;
    }

    public final Map<String, Object> a() {
        HashMap hashMap = new HashMap(this.f11308a);
        com.efs.sdk.base.core.a.a.a();
        hashMap.put(COSHttpResponseKey.Data.CTIME, Long.valueOf(com.efs.sdk.base.core.a.a.b() / 1000));
        com.efs.sdk.base.core.a.a.a();
        hashMap.put("w_tm", Long.valueOf(com.efs.sdk.base.core.a.a.b() / 1000));
        return hashMap;
    }

    public final List<AbsSection> a(String str) {
        ArrayList arrayList = new ArrayList();
        KVSection kVSection = new KVSection("global_head");
        KVSection put = kVSection.put("type", str).put(ACTD.APPID_KEY, this.f11308a.get(ACTD.APPID_KEY)).put("wid", this.f11308a.get("wid")).put(ForumPostsTagSelectActivity_.f30340y, this.f11308a.get(ForumPostsTagSelectActivity_.f30340y)).put("pkg", this.f11308a.get("pkg")).put(DeviceInfo.TAG_VERSION, this.f11308a.get(DeviceInfo.TAG_VERSION)).put("vcode", this.f11308a.get("vcode")).put("ps", this.f11308a.get("ps")).put("stime", this.f11308a.get("stime"));
        com.efs.sdk.base.core.a.a.a();
        KVSection put2 = put.put(COSHttpResponseKey.Data.CTIME, Long.valueOf(com.efs.sdk.base.core.a.a.b() / 1000));
        com.efs.sdk.base.core.a.a.a();
        put2.put("w_tm", Long.valueOf(com.efs.sdk.base.core.a.a.b() / 1000)).put("sdk_ver", this.f11308a.get("sdk_ver"));
        String valueOf = String.valueOf(b("uid", ""));
        if (!TextUtils.isEmpty(valueOf)) {
            kVSection.put("uid", valueOf);
        }
        arrayList.add(kVSection);
        KVSection kVSection2 = new KVSection("device_info");
        kVSection2.put("lang", this.f11308a.get("lang")).put("brand", this.f11308a.get("brand")).put("model", this.f11308a.get("model")).put("build_model", this.f11308a.get("build_model")).put("rom", this.f11308a.get("rom")).put("sdk", this.f11308a.get("sdk")).put("dsp_h", this.f11308a.get("dsp_h")).put("dsp_w", this.f11308a.get("dsp_w")).put("tzone", this.f11308a.get("tzone")).put(c.f9616k, this.f11308a.get(c.f9616k)).put("fr", this.f11308a.get("fr"));
        try {
            if (this.f11308a.containsKey(UMCrash.KEY_HEADER_ACCESS)) {
                kVSection2.put(UMCrash.KEY_HEADER_ACCESS, this.f11308a.get(UMCrash.KEY_HEADER_ACCESS));
            }
            if (this.f11308a.containsKey(UMCrash.KEY_HEADER_ACCESS_SUBTYPE)) {
                kVSection2.put(UMCrash.KEY_HEADER_ACCESS_SUBTYPE, this.f11308a.get(UMCrash.KEY_HEADER_ACCESS_SUBTYPE));
            }
            if (this.f11308a.containsKey(UMCrash.KEY_HEADER_NETWORK_TYPE)) {
                kVSection2.put(UMCrash.KEY_HEADER_NETWORK_TYPE, this.f11308a.get(UMCrash.KEY_HEADER_NETWORK_TYPE));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        arrayList.add(kVSection2);
        return arrayList;
    }
}
