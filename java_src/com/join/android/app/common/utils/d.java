package com.join.android.app.common.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.common.statfs.StatFsHelper;
import com.join.mgps.Util.g0;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DimenDPThread.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static int f17220b = 720;

    /* renamed from: c  reason: collision with root package name */
    private static List<a> f17221c;

    /* renamed from: a  reason: collision with root package name */
    private String f17222a;

    /* compiled from: DimenDPThread.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f17223a;

        /* renamed from: b  reason: collision with root package name */
        private int f17224b;

        public a(int i2, int i4) {
            this.f17223a = i2;
            this.f17224b = i4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int c() {
            return this.f17223a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int d() {
            return this.f17224b;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f17221c = arrayList;
        arrayList.add(new a(240, f17220b));
        f17221c.add(new a(320, f17220b));
        f17221c.add(new a(360, f17220b));
        f17221c.add(new a(384, f17220b));
        f17221c.add(new a(392, f17220b));
        f17221c.add(new a(StatFsHelper.f11741h, f17220b));
        f17221c.add(new a(TTAdConstant.IMAGE_LIST_SIZE_CODE, f17220b));
        f17221c.add(new a(TTAdConstant.IMAGE_CODE, f17220b));
        f17221c.add(new a(TypedValues.CycleType.TYPE_EASING, f17220b));
        f17221c.add(new a(430, f17220b));
        f17221c.add(new a(432, f17220b));
        f17221c.add(new a(440, f17220b));
        f17221c.add(new a(480, f17220b));
        f17221c.add(new a(533, f17220b));
        f17221c.add(new a(592, f17220b));
        f17221c.add(new a(600, f17220b));
        f17221c.add(new a(640, f17220b));
        f17221c.add(new a(662, f17220b));
        f17221c.add(new a(720, f17220b));
        f17221c.add(new a(768, f17220b));
        f17221c.add(new a(800, f17220b));
        f17221c.add(new a(811, f17220b));
    }

    public d() {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append("test");
        sb.append(str);
        this.f17222a = sb.toString();
    }

    public static void a(String[] strArr) {
        File file = new File(new File(g0.f27568a), "src/test/res/");
        d dVar = new d();
        dVar.c(file.getPath());
        dVar.b();
    }

    private void e(File file, StringBuffer stringBuffer, a aVar) {
        Throwable th;
        BufferedWriter bufferedWriter;
        int i2;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8"));
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                bufferedWriter.write("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
                bufferedWriter.write("<resources>\n");
                StringBuffer stringBuffer2 = new StringBuffer();
                for (i2 = 1; i2 < 1281; i2++) {
                    stringBuffer.setLength(0);
                    stringBuffer.append("    <dimen name=\"wdp" + i2 + "\">");
                    double c4 = (double) aVar.c();
                    double d4 = aVar.d();
                    Double.isNaN(c4);
                    Double.isNaN(d4);
                    double d5 = c4 / d4;
                    double d6 = i2;
                    Double.isNaN(d6);
                    stringBuffer.append(new BigDecimal(d5 * d6).setScale(2, 4).doubleValue() + "dp</dimen>\n");
                    bufferedWriter.write(stringBuffer.toString());
                    if (i2 >= 5 && i2 <= 50) {
                        stringBuffer2.append("    <dimen name=\"spx_" + i2 + "\">");
                        double c5 = (double) aVar.c();
                        double d7 = aVar.d();
                        Double.isNaN(c5);
                        Double.isNaN(d7);
                        Double.isNaN(d6);
                        stringBuffer2.append(new BigDecimal((c5 / d7) * d6).setScale(2, 4).doubleValue() + "sp</dimen>\n");
                    }
                }
                bufferedWriter.write("\n");
                bufferedWriter.write("    /**********字体适配***************/\n");
                bufferedWriter.write("\n");
                bufferedWriter.write(stringBuffer2.toString());
                bufferedWriter.write("</resources>");
                bufferedWriter.close();
            } catch (IOException e5) {
                e = e5;
                bufferedWriter2 = bufferedWriter;
                e.printStackTrace();
                bufferedWriter2.close();
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter2 = bufferedWriter;
                try {
                    bufferedWriter2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
                throw th;
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    public void b() {
        if ("".equals(this.f17222a)) {
            System.out.print("path为空");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < f17221c.size(); i2++) {
            a aVar = f17221c.get(i2);
            String str = this.f17222a + File.separator + "values-sw" + aVar.c() + "dp";
            System.out.print("写入文件：" + str + "\n");
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, "dimen.xml");
            file2.delete();
            e(file2, stringBuffer, aVar);
        }
    }

    public void c(String str) {
        this.f17222a = str;
    }

    public void d(int i2) {
        f17220b = i2;
    }
}
