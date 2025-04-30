package net.bither.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.f0;
import com.join.mgps.Util.o1;
import com.join.mgps.Util.u0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import net.bither.util.NativeUtil;
import net.bither.util.c;
/* compiled from: ImageCompressor.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: e  reason: collision with root package name */
    private static int f72842e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static ThreadPoolExecutor f72843f;

    /* renamed from: g  reason: collision with root package name */
    public static long f72844g;

    /* renamed from: h  reason: collision with root package name */
    public static long f72845h;

    /* renamed from: i  reason: collision with root package name */
    public static Bitmap.CompressFormat f72846i;

    /* renamed from: j  reason: collision with root package name */
    private static b f72847j;

    /* renamed from: a  reason: collision with root package name */
    public Context f72848a;

    /* renamed from: b  reason: collision with root package name */
    public Hashtable<String, Integer> f72849b = new Hashtable<>();

    /* renamed from: c  reason: collision with root package name */
    public Hashtable<String, String> f72850c = new Hashtable<>();

    /* renamed from: d  reason: collision with root package name */
    List<e> f72851d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageCompressor.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f72852a;

        a(String str) {
            this.f72852a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.v(this.f72852a, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageCompressor.java */
    /* renamed from: net.bither.util.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0484b implements NativeUtil.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f72854a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Integer f72855b;

        C0484b(String str, Integer num) {
            this.f72854a = str;
            this.f72855b = num;
        }

        @Override // net.bither.util.NativeUtil.a
        public void onFailed(String str) {
            u0.e("doCompress1-->onFailed==>finish compress.. fail");
            b.this.v(str, 2);
        }

        @Override // net.bither.util.NativeUtil.a
        public void onSuccess(String str) {
            u0.e("doCompress1-->onSuccess==>finish compress.. success ", str);
            try {
                long o3 = b.o(new File(this.f72854a));
                if (o3 < b.f72844g) {
                    u0.e("doCompress1-->finish compress.. success. size=" + o3);
                    b.this.v(str, 1);
                } else if (this.f72855b.intValue() - 10 > 20) {
                    int intValue = Integer.valueOf(this.f72855b.intValue()).intValue();
                    int i2 = intValue - 10;
                    u0.e("doCompress1-->re-compress.. size=" + o3, " newQuality=" + i2, " newInt=" + intValue);
                    b.this.m(str, this.f72854a, Integer.valueOf(i2));
                } else {
                    u0.e("doCompress1-->finish compress.. fail. size=" + o3);
                    b.this.v(str, 2);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageCompressor.java */
    /* loaded from: classes5.dex */
    public class c implements c.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f72857a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f72858b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f72859c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f72860d;

        c(String str, int i2, Context context, String str2) {
            this.f72857a = str;
            this.f72858b = i2;
            this.f72859c = context;
            this.f72860d = str2;
        }

        private void c(String str) {
            u0.e("OptimResultHandler-->optimSuccess");
            b.this.v(str, 1);
            if (b.this.f72850c.containsKey(str)) {
                b bVar = b.this;
                bVar.i(str, bVar.f72850c.get(str));
            }
        }

        @Override // net.bither.util.c.b
        public void a(boolean z3, String str) {
            int i2;
            u0.e("OptimResultHandler-->msg:" + str);
            if (z3) {
                String[] split = str.split(",");
                String str2 = split[0];
                new File(str2).getName();
                if (split.length == 8 && Integer.parseInt(split[5]) < b.f72844g) {
                    c(str2);
                    return;
                } else if (this.f72858b > 10) {
                    if (Integer.parseInt(split[5]) - b.f72844g < 1048576.0d) {
                        i2 = this.f72858b - 5;
                    } else {
                        i2 = this.f72858b - 10;
                    }
                    b.this.l(this.f72859c, str2, this.f72857a, i2);
                    return;
                } else {
                    c(str2);
                    return;
                }
            }
            b(this.f72860d);
        }

        void b(String str) {
            u0.e("OptimResultHandler-->optimFailure");
            b.this.v(str, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageCompressor.java */
    /* loaded from: classes5.dex */
    public class d implements c.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f72862a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f72863b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f72864c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List f72865d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ HashMap f72866e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ f f72867f;

        d(String str, int i2, Context context, List list, HashMap hashMap, f fVar) {
            this.f72862a = str;
            this.f72863b = i2;
            this.f72864c = context;
            this.f72865d = list;
            this.f72866e = hashMap;
            this.f72867f = fVar;
        }

        private void c(String str, String str2) {
            f fVar;
            u0.e("OptimResultHandler-->optimSuccess");
            this.f72866e.put(d2.f(str), str2);
            if (!b.t(this.f72866e) || (fVar = this.f72867f) == null) {
                return;
            }
            b.w(this.f72865d, this.f72866e, fVar);
        }

        @Override // net.bither.util.c.b
        public void a(boolean z3, String str) {
            int i2;
            u0.e("OptimResultHandler-->msg:" + str);
            if (z3) {
                String[] split = str.split(",");
                String str2 = split[0];
                if (split.length == 8 && Integer.parseInt(split[5]) < b.f72844g) {
                    c(str2, this.f72862a + net.lingala.zip4j.util.e.F0 + new File(str2).getName());
                    return;
                } else if (this.f72863b > 10) {
                    if (Integer.parseInt(split[5]) - b.f72844g < 1048576.0d) {
                        i2 = this.f72863b - 5;
                    } else {
                        i2 = this.f72863b - 10;
                    }
                    b.B(this.f72864c, str2, this.f72862a, i2, this.f72865d, this.f72866e, this.f72867f);
                    return;
                } else {
                    b();
                    return;
                }
            }
            b();
        }

        void b() {
            u0.e("OptimResultHandler-->optimFailure");
        }
    }

    /* compiled from: ImageCompressor.java */
    /* loaded from: classes5.dex */
    public interface e {
        void a(Boolean bool, Map<String, String> map, Map<String, Integer> map2);
    }

    /* compiled from: ImageCompressor.java */
    /* loaded from: classes5.dex */
    public interface f {
        void a(List<String> list);
    }

    static {
        int i2 = f72842e;
        f72843f = new net.bither.util.a(i2, i2, 500L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        f72844g = 314572L;
        f72845h = 104857L;
        f72846i = Bitmap.CompressFormat.JPEG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void B(Context context, String str, String str2, int i2, List<String> list, HashMap<String, String> hashMap, f fVar) {
        String str3 = context.getFilesDir() + net.lingala.zip4j.util.e.F0 + "jpegoptim";
        if (!new File(str3).exists()) {
            net.bither.util.c.e(context, str3);
        }
        new net.bither.util.c(str3, str, str2, 1, i2, true).d(new d(str2, i2, context, list, hashMap, fVar));
    }

    public static void C(String str, String str2, int i2) {
        Bitmap l4;
        if (str == null) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    l4 = o1.l(str, i2);
                } catch (IOException e4) {
                    e4.printStackTrace();
                    return;
                }
            } catch (Exception e5) {
                e = e5;
            }
            if (l4 == null) {
                C(str, str2, i2 - 1);
                return;
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(str2);
            try {
                l4.compress(f72846i, 100, fileOutputStream2);
                fileOutputStream2.close();
            } catch (Exception e6) {
                fileOutputStream = fileOutputStream2;
                e = e6;
                e.printStackTrace();
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
            } catch (Throwable th) {
                fileOutputStream = fileOutputStream2;
                th = th;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static int g(long j4) {
        int i2 = ((float) j4) - ((float) f72844g) < 1048576.0f ? 80 : 20;
        if (i2 < 1) {
            return 5;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String str, String str2) {
        try {
            if (this.f72850c.containsKey(str)) {
                if (o(new File(str2)) < f72844g) {
                    v(str, 1);
                } else {
                    o1.n(o1.k(str), str2);
                    if (o(new File(str2)) < f72844g) {
                        v(str, 1);
                    } else {
                        v(str, 2);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean k(File file) {
        u0.e("deleteDir-->start delete dir " + file + " ...");
        if (file.isDirectory()) {
            if (s(file + "")) {
                String[] list = file.list();
                for (int i2 = 0; i2 < list.length; i2++) {
                    u0.e("deleteDir-->delete dir sub file " + list[i2] + " ...");
                    if (!k(new File(file, list[i2]))) {
                        return false;
                    }
                }
            }
        }
        u0.e("deleteDir-->finished delete dir " + file + " ...");
        return file.delete();
    }

    public static long o(File file) throws Exception {
        FileInputStream fileInputStream;
        if (file.exists()) {
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Exception e4) {
                    e = e4;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                long available = fileInputStream.available();
                fileInputStream.close();
                return available;
            } catch (Exception e5) {
                e = e5;
                fileInputStream2 = fileInputStream;
                e.printStackTrace();
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                    return 0L;
                }
                return 0L;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                throw th;
            }
        }
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        file.createNewFile();
        return 0L;
    }

    public static String p() {
        return "forum_image";
    }

    public static b q() {
        if (f72847j == null) {
            f72847j = new b();
        }
        return f72847j;
    }

    public static File r() {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        File file = new File(externalStorageDirectory, "MG/.cache/" + p());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static boolean s(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith(r() + "")) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(HashMap<String, String> hashMap) {
        for (String str : hashMap.values()) {
            if (d2.h(str)) {
                return false;
            }
        }
        return true;
    }

    private void u(Boolean bool, Map<String, String> map, Map<String, Integer> map2) {
        List<e> list = this.f72851d;
        if (list != null) {
            for (e eVar : list) {
                eVar.a(bool, map, map2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void w(List<String> list, HashMap<String, String> hashMap, f fVar) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(hashMap.get(d2.f(list.get(i2))));
        }
        fVar.a(arrayList);
    }

    public void A(String str) {
        v(str, 3);
    }

    public void e(e eVar) {
        if (this.f72851d == null) {
            this.f72851d = new ArrayList();
        }
        if (this.f72851d.contains(eVar)) {
            return;
        }
        this.f72851d.add(eVar);
    }

    public void f(String str) {
        v(str, -1);
    }

    public Boolean h() {
        Iterator<Map.Entry<String, Integer>> it2 = this.f72849b.entrySet().iterator();
        if (it2.hasNext()) {
            while (it2.hasNext()) {
                int intValue = it2.next().getValue().intValue();
                if (intValue != 1 && intValue != 2) {
                    return Boolean.FALSE;
                }
            }
        }
        return true;
    }

    public void j(Context context, String str, boolean z3) {
        u0.e("compressImage-->start notify task.." + str + " addTask=" + z3);
        this.f72848a = context;
        try {
            x(str, z3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        u0.e("compressImage-->finish notify task.." + str + " addTask=" + z3);
    }

    public void l(Context context, String str, String str2, int i2) {
        String str3 = context.getFilesDir() + net.lingala.zip4j.util.e.F0 + "jpegoptim";
        if (!new File(str3).exists()) {
            net.bither.util.c.e(context, str3);
        }
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        new net.bither.util.c(str3, str, str2, 1, i2, true).d(new c(str2, i2, context, str));
    }

    public void m(String str, String str2, Integer num) {
        u0.e("doCompress1-->start compress.." + str);
        try {
            NativeUtil.c(this.f72848a, str, str2, num.intValue(), true, new C0484b(str2, num));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void n(String str, String str2, Integer num) {
        try {
            long o3 = o(new File(str));
            Integer num2 = 100;
            while (o3 > f72844g) {
                u0.e("notifyCompressSate-->system compress tool start..", "quality=" + num2 + " size=" + o3);
                if (num2.intValue() > 10) {
                    num2 = Integer.valueOf(num2.intValue() - 10);
                    o1.o(o1.k(str), str2, num2.intValue());
                    o3 = o(new File(str2));
                } else {
                    u0.e("notifyCompressSate-->system compress tool =>", "result=fail");
                    v(str, 2);
                }
            }
            if (num2.intValue() == 100) {
                o1.o(o1.k(str), str2, num2.intValue());
            }
            long o4 = o(new File(str2));
            while (o4 > f72844g) {
                u0.e("notifyCompressSate-->system compress tool start..", "quality=" + num2 + " size=" + o4);
                if (num2.intValue() > 10) {
                    num2 = Integer.valueOf(num2.intValue() - 10);
                    o1.o(o1.k(str), str2, num2.intValue());
                    o4 = o(new File(str2));
                } else {
                    u0.e("notifyCompressSate-->system compress tool =>", "result=fail");
                    v(str, 2);
                }
            }
            u0.e("notifyCompressSate-->system compress tool =>", "quality=" + num2, "result=success");
            v(str, 1);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void v(String str, int i2) {
        long o3;
        try {
            u0.e("notifyCompressSate-->start notifyCompressSate.." + str + " state=" + i2);
            if (this.f72850c.containsKey(str)) {
                this.f72849b.put(str, Integer.valueOf(i2));
            }
            if (i2 != -1) {
                if (i2 != 0) {
                    if (i2 != 1 && i2 != 2) {
                        if (i2 == 3 && this.f72850c.containsKey(str)) {
                            File parentFile = new File(this.f72850c.get(str)).getParentFile();
                            if (parentFile.exists()) {
                                k(parentFile);
                            }
                            this.f72850c.remove(str);
                            this.f72849b.remove(str);
                        }
                    } else if (this.f72850c.containsKey(str)) {
                        y();
                    }
                } else if (!this.f72850c.containsKey(str)) {
                    String str2 = r() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis() + net.lingala.zip4j.util.e.F0 + d2.f(str) + ".jpg";
                    u0.e("notifyCompressSate-->put target to map.. destPath=" + str2 + "");
                    try {
                        if (str.contains("content://")) {
                            File o4 = f0.o(Uri.parse(str), this.f72848a);
                            str = o4.getAbsolutePath();
                            o3 = o(o4);
                        } else {
                            o3 = o(new File(str));
                        }
                        this.f72850c.put(str, str2);
                        this.f72849b.put(str, 0);
                        u0.e("notifyCompressSate-->src file size=" + o3);
                        double d4 = f72844g;
                        Double.isNaN(d4);
                        if (o3 < ((long) (d4 + 734003.2d))) {
                            u0.e("notifyCompressSate-->use system compress tool..");
                            n(str, str2, 40);
                        } else {
                            u0.e("notifyCompressSate-->use jpegbither compress tool..");
                            m(str, str2, 40);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    v(str, 3);
                    v(str, 0);
                }
            } else if (!this.f72850c.containsKey(str)) {
                String str3 = r() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis() + net.lingala.zip4j.util.e.F0 + d2.f(str) + ".jpg";
                u0.e("notifyCompressSate-->put target to map.. destPath=" + str3 + "");
                this.f72850c.put(str, str3);
                this.f72849b.put(str, 0);
            }
            u0.e("notifyCompressSate-->finished notifyCompressSate.." + str + " state=" + i2);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public synchronized void x(String str, boolean z3) {
        if (z3) {
            f(str);
            f72843f.execute(new a(str));
        } else {
            A(str);
        }
    }

    public void y() {
        boolean booleanValue = h().booleanValue();
        if (booleanValue) {
            u(Boolean.valueOf(booleanValue), this.f72850c, this.f72849b);
        }
    }

    public void z(e eVar) {
        List<e> list = this.f72851d;
        if (list == null || !list.contains(eVar)) {
            return;
        }
        this.f72851d.remove(eVar);
    }
}
