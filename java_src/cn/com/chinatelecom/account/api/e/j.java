package cn.com.chinatelecom.account.api.e;

import android.text.TextUtils;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f8668a = {-30, -91, -67, -20, ByteSourceJsonBootstrapper.UTF8_BOM_2, -120, -30, -68, -113, -20, -99, -68};

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f8669b = {-30, -91, -67, -20, ByteSourceJsonBootstrapper.UTF8_BOM_2, -120, -19, -73, -101, -19, -79, -106, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -120, ByteSourceJsonBootstrapper.UTF8_BOM_1, -78, -78};

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f8670c = {ByteSourceJsonBootstrapper.UTF8_BOM_1, -103, -121, ByteSourceJsonBootstrapper.UTF8_BOM_1, -80, -98, -19, -86, -117, -29, -98, -109, -30, -91, -91};

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f8671d = {-20, -99, -86, -19, -73, -101, -19, -79, -106, -30, -75, -108, -20, -124, -81};

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f8672e = {-19, -83, -79, ByteSourceJsonBootstrapper.UTF8_BOM_1, Byte.MIN_VALUE, -94, -19, -73, -101, -19, -79, -106, -20, -106, -96, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -118, ByteSourceJsonBootstrapper.UTF8_BOM_1, -102, -91};

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f8673f = {89, 101, 105, 97, 111, 126, -30, -68, -113, -20, -99, -68, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -120, ByteSourceJsonBootstrapper.UTF8_BOM_1, -78, -78};

    /* renamed from: g  reason: collision with root package name */
    public static final byte[] f8674g = {ByteSourceJsonBootstrapper.UTF8_BOM_1, -107, -107, ByteSourceJsonBootstrapper.UTF8_BOM_1, -102, -121, -30, -83, -87, -20, -108, -102, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -120, ByteSourceJsonBootstrapper.UTF8_BOM_1, -78, -78};

    /* renamed from: h  reason: collision with root package name */
    public static final byte[] f8675h = {67, 69, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -120, ByteSourceJsonBootstrapper.UTF8_BOM_1, -78, -78};

    /* renamed from: i  reason: collision with root package name */
    public static final byte[] f8676i = {-19, -109, -79, ByteSourceJsonBootstrapper.UTF8_BOM_1, -73, -97, -19, -79, -103, -20, -108, -106, -18, -78, -80, -19, -93, -80};

    /* renamed from: j  reason: collision with root package name */
    public static final byte[] f8677j = {-19, -109, -79, ByteSourceJsonBootstrapper.UTF8_BOM_1, -73, -97, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -120, ByteSourceJsonBootstrapper.UTF8_BOM_1, -78, -78};

    /* renamed from: k  reason: collision with root package name */
    public static final byte[] f8678k = {-29, -88, -114, -19, -109, -79, ByteSourceJsonBootstrapper.UTF8_BOM_1, -73, -97, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -120, ByteSourceJsonBootstrapper.UTF8_BOM_1, -78, -78};

    /* renamed from: l  reason: collision with root package name */
    public static final byte[] f8679l = {-30, -91, -67, ByteSourceJsonBootstrapper.UTF8_BOM_1, -113, -126, ByteSourceJsonBootstrapper.UTF8_BOM_1, -126, -105, ByteSourceJsonBootstrapper.UTF8_BOM_1, -83, DefaultBinaryMemcacheResponse.RESPONSE_MAGIC_BYTE, ByteSourceJsonBootstrapper.UTF8_BOM_1, -122, -100, 89, 78, 65};

    /* renamed from: m  reason: collision with root package name */
    public static final byte[] f8680m = {-19, -98, -94, -20, -126, -67, ByteSourceJsonBootstrapper.UTF8_BOM_1, -113, -71, -29, -99, -89, -19, -97, -122, -29, -105, -88};

    /* renamed from: n  reason: collision with root package name */
    public static final byte[] f8681n = {ByteSourceJsonBootstrapper.UTF8_BOM_1, -113, -68, -18, -79, -100, -19, -109, -79, ByteSourceJsonBootstrapper.UTF8_BOM_1, -73, -97, -20, -100, -77, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -123};

    /* renamed from: o  reason: collision with root package name */
    public static final byte[] f8682o = {93, 67, 76, 67, ByteSourceJsonBootstrapper.UTF8_BOM_1, -126, -115, -20, -121, -88, -30, -68, -113, -20, -99, -68};

    /* renamed from: p  reason: collision with root package name */
    public static final byte[] f8683p = {93, 67, 76, 67, ByteSourceJsonBootstrapper.UTF8_BOM_1, -126, -115, -20, -121, -88, ByteSourceJsonBootstrapper.UTF8_BOM_1, -74, -120, ByteSourceJsonBootstrapper.UTF8_BOM_1, -78, -78};

    /* renamed from: q  reason: collision with root package name */
    public static final byte[] f8684q = {ByteSourceJsonBootstrapper.UTF8_BOM_1, -125, -121, -19, -73, -92, ByteSourceJsonBootstrapper.UTF8_BOM_1, -107, -107, ByteSourceJsonBootstrapper.UTF8_BOM_1, -102, -121, -30, -83, -87, -20, -108, -102, ByteSourceJsonBootstrapper.UTF8_BOM_1, -82, ByteSourceJsonBootstrapper.UTF8_BOM_2, -30, -66, -81};

    public static String a(int i2, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("result", i2);
            jSONObject.put("msg", str);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("reqId", str2);
            }
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static JSONObject a() {
        return a(80003, cn.com.chinatelecom.account.api.a.d.a(f8671d));
    }

    public static JSONObject a(int i2, String str) {
        return b(i2, str, null);
    }

    public static JSONObject b() {
        return b(80001, cn.com.chinatelecom.account.api.a.d.a(f8669b), null);
    }

    public static JSONObject b(int i2, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("result", i2);
            jSONObject.put("msg", str);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("reqId", str2);
            }
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject c() {
        return a(80000, cn.com.chinatelecom.account.api.a.d.a(f8668a));
    }

    public static JSONObject d() {
        return a(80004, cn.com.chinatelecom.account.api.a.d.a(f8672e));
    }

    public static JSONObject e() {
        return a(80103, cn.com.chinatelecom.account.api.a.d.a(f8679l));
    }

    public static JSONObject f() {
        return a(80500, "传入参数为空");
    }

    public static JSONObject g() {
        return a(80102, cn.com.chinatelecom.account.api.a.d.a(f8678k));
    }
}
