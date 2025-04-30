package com.mob.commons.cc;

import com.mob.tools.network.NetCommunicator;
import com.mob.tools.network.NetworkHelper;
import java.io.OutputStream;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class e implements t<e> {

    /* renamed from: a  reason: collision with root package name */
    private static final NetworkHelper f52913a = new NetworkHelper();

    public static String b(String str) {
        return com.mob.commons.r.a(str);
    }

    public static String c(String str) {
        return com.mob.commons.r.b(str);
    }

    public static String a(String str, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) throws Throwable {
        return f52913a.httpGet(str, hashMap, hashMap2);
    }

    public static String a(String str, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        return f52913a.httpPostNew(str, hashMap, hashMap2, networkTimeOut);
    }

    public static String a(String str, byte[] bArr, HashMap<String, String> hashMap, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        return f52913a.httpPostWithBytes(str, bArr, hashMap, networkTimeOut);
    }

    public static void a(String str, OutputStream outputStream, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        f52913a.download(str, outputStream, networkTimeOut);
    }

    public static <T> T a(NetCommunicator netCommunicator, HashMap<String, String> hashMap, HashMap<String, Object> hashMap2, String str, boolean z3) throws Throwable {
        return (T) netCommunicator.requestSynchronized(false, hashMap, hashMap2, str, z3);
    }

    public static String a(String str) {
        return com.mob.commons.c.a(str);
    }

    @Override // com.mob.commons.cc.t
    public boolean a(e eVar, Class<e> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("gDmn".equals(str)) {
            a((String) objArr[0]);
            return true;
        } else if ("hGet".equals(str)) {
            try {
                objArr2[0] = a((String) objArr[0], (HashMap) objArr[1], (HashMap) objArr[2]);
            } catch (Throwable th) {
                thArr[0] = th;
                objArr2[0] = null;
            }
            return true;
        } else if ("pst".equals(str)) {
            try {
                objArr2[0] = a((String) objArr[0], (HashMap) objArr[1], (HashMap) objArr[2], (NetworkHelper.NetworkTimeOut) objArr[3]);
            } catch (Throwable th2) {
                thArr[0] = th2;
                objArr2[0] = null;
            }
            return true;
        } else if ("postWithBytes".equals(str)) {
            try {
                objArr2[0] = a((String) objArr[0], (byte[]) objArr[1], (HashMap) objArr[2], (NetworkHelper.NetworkTimeOut) objArr[3]);
            } catch (Throwable th3) {
                thArr[0] = th3;
                objArr2[0] = null;
            }
            return true;
        } else if ("download".equals(str)) {
            try {
                a((String) objArr[0], (OutputStream) objArr[1], (NetworkHelper.NetworkTimeOut) objArr[2]);
            } catch (Throwable th4) {
                thArr[0] = th4;
                objArr2[0] = null;
            }
            return true;
        } else if (com.mob.commons.i.a("006j-fk7nAggfjgf").equals(str)) {
            try {
                objArr2[0] = b((String) objArr[0]);
            } catch (Throwable th5) {
                thArr[0] = th5;
                objArr2[0] = null;
            }
            return true;
        } else if (com.mob.commons.i.a("005Bfiflggfjgf").equals(str)) {
            try {
                objArr2[0] = c((String) objArr[0]);
            } catch (Throwable th6) {
                thArr[0] = th6;
                objArr2[0] = null;
            }
            return true;
        } else if (com.mob.commons.i.a("007Zfj8km'gjfkfmfi").equals(str)) {
            try {
                objArr2[0] = a((NetCommunicator) objArr[0], (HashMap) objArr[1], (HashMap) objArr[2], (String) objArr[3], ((Boolean) objArr[4]).booleanValue());
            } catch (Throwable th7) {
                thArr[0] = th7;
                objArr2[0] = null;
            }
            return true;
        } else {
            return false;
        }
    }
}
