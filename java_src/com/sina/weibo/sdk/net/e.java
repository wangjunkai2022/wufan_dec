package com.sina.weibo.sdk.net;

import android.os.Bundle;
import com.facebook.imagepipeline.producers.s;
import com.ss.android.download.api.constant.BaseConstants;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class e implements d {

    /* renamed from: i  reason: collision with root package name */
    private String f56728i;

    /* renamed from: j  reason: collision with root package name */
    private Bundle f56729j = new Bundle();

    /* renamed from: k  reason: collision with root package name */
    private Bundle f56730k = new Bundle();

    /* renamed from: l  reason: collision with root package name */
    private Map<String, Object<File>> f56731l = new HashMap();

    /* renamed from: m  reason: collision with root package name */
    private Map<String, byte[]> f56732m = new HashMap();

    /* renamed from: n  reason: collision with root package name */
    private int f56733n;

    /* renamed from: o  reason: collision with root package name */
    private int f56734o;

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: i  reason: collision with root package name */
        public String f56735i;

        /* renamed from: j  reason: collision with root package name */
        Bundle f56736j = new Bundle();

        /* renamed from: k  reason: collision with root package name */
        Bundle f56737k = new Bundle();

        /* renamed from: l  reason: collision with root package name */
        Map<String, Object<File>> f56738l = new HashMap();

        /* renamed from: m  reason: collision with root package name */
        Map<String, byte[]> f56739m = new HashMap();

        /* renamed from: n  reason: collision with root package name */
        int f56740n = s.f13217g;

        /* renamed from: o  reason: collision with root package name */
        int f56741o = BaseConstants.Time.MINUTE;

        public final a a(String str, Object obj) {
            a(this.f56736j, str, obj);
            return this;
        }

        public final a b(String str, Object obj) {
            a(this.f56737k, str, obj);
            return this;
        }

        public final e e() {
            return new e(this);
        }

        private void a(Bundle bundle, String str, Object obj) {
            if (obj != null) {
                if (obj instanceof String) {
                    bundle.putString(str, String.valueOf(obj));
                } else if (obj instanceof Integer) {
                    bundle.putInt(str, ((Integer) obj).intValue());
                } else if (obj instanceof Short) {
                    bundle.putShort(str, ((Short) obj).shortValue());
                } else if (obj instanceof Character) {
                    bundle.putChar(str, ((Character) obj).charValue());
                } else if (obj instanceof Byte) {
                    bundle.putByte(str, ((Byte) obj).byteValue());
                } else if (obj instanceof Long) {
                    bundle.putLong(str, ((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    bundle.putFloat(str, ((Float) obj).floatValue());
                } else if (obj instanceof Double) {
                    bundle.putDouble(str, ((Double) obj).doubleValue());
                } else if (obj instanceof Boolean) {
                    bundle.putBoolean(str, ((Boolean) obj).booleanValue());
                } else if (obj instanceof byte[]) {
                    this.f56739m.put(str, (byte[]) obj);
                } else if (obj instanceof Serializable) {
                    bundle.putSerializable(str, (Serializable) obj);
                } else {
                    throw new IllegalArgumentException("Unsupported params type!");
                }
            }
        }
    }

    public e(a aVar) {
        this.f56728i = aVar.f56735i;
        this.f56729j.putAll(aVar.f56736j);
        this.f56730k.putAll(aVar.f56737k);
        this.f56731l.putAll(aVar.f56738l);
        this.f56732m.putAll(aVar.f56739m);
        this.f56733n = aVar.f56740n;
        this.f56734o = aVar.f56741o;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final Bundle d() {
        return this.f56730k;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final int getConnectTimeout() {
        return this.f56733n;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final Bundle getParams() {
        return this.f56729j;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final int getReadTimeout() {
        return this.f56734o;
    }

    @Override // com.sina.weibo.sdk.net.d
    public final String getUrl() {
        return this.f56728i;
    }
}
