package com.mob.commons.a;

import android.content.Context;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.commons.w;
import com.mob.tools.MobLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.ResHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
/* loaded from: classes4.dex */
public class m extends c {

    /* renamed from: c  reason: collision with root package name */
    private String f52807c;

    /* renamed from: d  reason: collision with root package name */
    private long f52808d;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<HashMap<String, String>> f52809e;

    public m() {
        super(o.a("002f)eg"), 0L, o.a("004f,egghei"), 300L);
        this.f52807c = null;
        this.f52808d = 0L;
        this.f52809e = null;
        c();
        try {
            File dataCacheFile = ResHelper.getDataCacheFile(MobSDK.getContext(), com.mob.commons.j.f53041e);
            if (dataCacheFile == null) {
                return;
            }
            if (!dataCacheFile.getParentFile().exists()) {
                dataCacheFile.getParentFile().mkdirs();
            }
            if (!dataCacheFile.exists()) {
                dataCacheFile.createNewFile();
            }
            this.f52807c = dataCacheFile.getAbsolutePath();
            this.f52808d = w.a().b(w.f53128c, -1L);
        } catch (Throwable unused) {
        }
    }

    private HashMap<String, String> b(ArrayList<HashMap<String, String>> arrayList, String str) {
        Iterator<HashMap<String, String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            HashMap<String, String> next = it2.next();
            if (str.equals(next.get(o.a("003fRekgg")))) {
                return next;
            }
        }
        return new HashMap<>();
    }

    private boolean n() {
        try {
            File file = new File(this.f52807c);
            file.delete();
            file.createNewFile();
            return true;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return false;
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        try {
            ArrayList<HashMap<String, String>> a4 = a(MobSDK.getContext());
            if (!TextUtils.isEmpty(this.f52807c)) {
                a(MobSDK.getContext(), a4, this.f52807c);
            }
            if (System.currentTimeMillis() - this.f52808d < ((Long) a(o.a("005f)egggegNf"), (String) 3600L)).longValue() * 1000 || !a(a4)) {
                return;
            }
            this.f52808d = w.a().b(w.f53128c, -1L);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    private static ArrayList<HashMap<String, String>> b(String str) {
        try {
            ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
            if (TextUtils.isEmpty(str)) {
                return arrayList;
            }
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(HashonHelper.fromJson(jSONArray.getJSONObject(i2).toString()));
            }
            return arrayList;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return new ArrayList<>();
        }
    }

    private ArrayList<HashMap<String, String>> a(Context context) throws Throwable {
        ArrayList<HashMap<String, String>> a4 = !TextUtils.isEmpty(this.f52807c) ? a(context, this.f52807c) : null;
        if (a4 == null) {
            a4 = new ArrayList<>();
        }
        if (a4.isEmpty()) {
            w.a().a("key_rcdat", System.currentTimeMillis());
        }
        ArrayList<HashMap<String, String>> arrayList = this.f52809e;
        if (arrayList == null || arrayList.isEmpty() || com.mob.commons.b.f52819b) {
            com.mob.commons.b.f52819b = false;
            this.f52809e = DeviceHelper.getInstance(context).getIA(false);
        }
        ArrayList<HashMap<String, String>> arrayList2 = this.f52809e;
        if (arrayList2 != null) {
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                HashMap<String, String> hashMap = arrayList2.get(i2);
                String str = hashMap != null ? hashMap.get(o.a("003f4ekgg")) : null;
                if (!TextUtils.isEmpty(str) && a(str)) {
                    HashMap<String, String> b4 = b(a4, str);
                    b4.put(o.a("003fGekgg"), str);
                    b4.put(o.a("004>eleg-mj"), hashMap.get(o.a("004>eleg-mj")));
                    b4.put(o.a("007kjBeigheffdel"), hashMap.get(o.a("007kjBeigheffdel")));
                    int parseInt = b4.get(o.a("0082eiedel]e]ef_mj^gh")) == null ? 0 : Integer.parseInt(String.valueOf(b4.get(o.a("0082eiedel]e]ef_mj^gh"))));
                    String a5 = o.a("008HeiedelAe!ef$mjPgh");
                    b4.put(a5, (parseInt + k()) + "");
                    if (!a(a4, str)) {
                        a4.add(b4);
                    }
                }
            }
        }
        return a4;
    }

    private boolean a(String str) {
        try {
            int i2 = DeviceHelper.getInstance(MobSDK.getContext()).getPInfo(true, str, 0).applicationInfo.flags;
            return ((i2 & 1) == 0 && (i2 & 128) == 0) && ((i2 & 2097152) == 0);
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean a(ArrayList<HashMap<String, String>> arrayList, String str) {
        Iterator<HashMap<String, String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (str.equals(it2.next().get(o.a("003fTekgg")))) {
                return true;
            }
        }
        return false;
    }

    private boolean a(ArrayList<HashMap<String, String>> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            return false;
        }
        try {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put(o.a("008<ei*j=ehfdeiGi0eg>e"), Long.valueOf(w.a().b("key_rcdat", -1L)));
            a(0L, "PRTMT", arrayList, hashMap, false);
        } catch (Throwable unused) {
        }
        w.a().a(w.f53128c, System.currentTimeMillis());
        return n();
    }

    private boolean a(Context context, ArrayList<HashMap<String, String>> arrayList, String str) {
        FileChannel fileChannel = null;
        try {
            byte[] a4 = a(DeviceHelper.getInstance(context).getModel(), arrayList);
            fileChannel = new FileOutputStream(str).getChannel();
            fileChannel.write(ByteBuffer.wrap(a4));
            fileChannel.force(true);
            com.mob.commons.r.a(fileChannel);
            return true;
        } catch (Throwable th) {
            try {
                MobLog.getInstance().w(th);
                com.mob.commons.r.a(fileChannel);
                return false;
            } catch (Throwable th2) {
                com.mob.commons.r.a(fileChannel);
                throw th2;
            }
        }
    }

    private ArrayList<HashMap<String, String>> a(Context context, String str) {
        FileChannel fileChannel = null;
        try {
            fileChannel = new FileInputStream(str).getChannel();
            ByteBuffer allocate = ByteBuffer.allocate((int) fileChannel.size());
            while (fileChannel.read(allocate) > 0) {
            }
            ArrayList<HashMap<String, String>> a4 = a(DeviceHelper.getInstance(context).getModel(), allocate.array());
            com.mob.commons.r.a(fileChannel);
            return a4;
        } catch (Throwable th) {
            try {
                MobLog.getInstance().w(th);
                com.mob.commons.r.a(fileChannel);
                return new ArrayList<>();
            } catch (Throwable th2) {
                com.mob.commons.r.a(fileChannel);
                throw th2;
            }
        }
    }

    private static byte[] a(String str, ArrayList<HashMap<String, String>> arrayList) {
        String fromObject = new Hashon().fromObject(arrayList);
        try {
            return Data.AES128Encode(str, fromObject);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return fromObject.getBytes();
        }
    }

    private static ArrayList<HashMap<String, String>> a(String str, byte[] bArr) {
        try {
            return b(Data.AES128Decode(str, bArr));
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return new ArrayList<>();
        }
    }
}
