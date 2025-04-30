package com.join.mgps.Util;

import java.io.File;
import java.io.IOException;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: CompressOperate_zip4j.java */
/* loaded from: classes3.dex */
public class s {

    /* renamed from: d  reason: collision with root package name */
    private static final String f27816d = "CompressOperate_zip4j";

    /* renamed from: a  reason: collision with root package name */
    private c3.c f27817a;

    /* renamed from: b  reason: collision with root package name */
    private e3.p f27818b;

    /* renamed from: c  reason: collision with root package name */
    private int f27819c = 0;

    private String a(String str) {
        if (str.indexOf(g0.f27568a) > 0) {
            String substring = str.substring(0, str.length() - 4);
            StringBuilder sb = new StringBuilder();
            sb.append("checkString: 校验过的sourceFileName是：");
            sb.append(substring);
            return substring;
        }
        return str;
    }

    public static String c(File file, String str) throws Exception {
        c3.c cVar = new c3.c(file);
        cVar.N("GBK");
        if (cVar.H()) {
            List A = cVar.A();
            for (int i2 = 0; A != null && i2 < A.size(); i2++) {
                String str2 = new String((str + File.separator + ((e3.h) A.get(i2)).p()).getBytes("8859_1"), "UTF-8");
                if (str2.endsWith(".apk") || str2.endsWith(".APK")) {
                    return str2;
                }
            }
            return "";
        }
        throw new ZipException("压缩文件不合法,可能被损坏.");
    }

    public static String d(File file, String str, String str2) throws IOException {
        try {
            c3.c cVar = new c3.c(file);
            cVar.N("GBK");
            if (cVar.H()) {
                try {
                    List A = cVar.A();
                    int i2 = 0;
                    while (A != null) {
                        if (i2 < A.size()) {
                            String str3 = new String((str + File.separator + ((e3.h) A.get(i2)).p()).getBytes("8859_1"), "UTF-8");
                            if (!str3.endsWith(str2 + ".zip")) {
                                if (!str3.endsWith(str2 + ".iso")) {
                                    if (!str3.endsWith(str2 + ".ISO")) {
                                        if (!str3.endsWith(str2 + ".bin")) {
                                            if (!str3.endsWith(str2 + ".cue")) {
                                                if (!str3.endsWith(str2 + ".pbp")) {
                                                    if (!str3.endsWith(str2 + ".img")) {
                                                        if (!str3.endsWith(str2 + ".mdf")) {
                                                            if (!str3.endsWith(str2 + ".wsc")) {
                                                                if (!str3.endsWith(str2 + ".ws")) {
                                                                    if (!str3.endsWith(str2 + ".nds")) {
                                                                        if (!str3.endsWith(str2 + ".z64")) {
                                                                            if (!str3.endsWith(str2 + ".n64")) {
                                                                                if (!str3.endsWith(str2 + ".cdi")) {
                                                                                    if (!str3.endsWith(str2 + ".CDI")) {
                                                                                        if (!str3.endsWith(str2 + ".gdi")) {
                                                                                            if (!str3.endsWith(str2 + ".chd")) {
                                                                                                if (!str3.endsWith(str2 + ".mds")) {
                                                                                                    i2++;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            return str3;
                        }
                        return "";
                    }
                    return "";
                } catch (ZipException e4) {
                    e4.printStackTrace();
                    return "";
                }
            }
            throw new ZipException("压缩文件不合法,可能被损坏.");
        } catch (Exception e5) {
            e5.printStackTrace();
            throw new IOException(e5);
        }
    }

    public static String f(com.join.mgps.task.e eVar, File file, String str) throws Exception {
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        c3.c cVar = new c3.c(file);
        cVar.N("GBK");
        if (cVar.H()) {
            List A = cVar.A();
            String str2 = "";
            for (int i2 = 0; A != null && i2 < A.size(); i2++) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                String str3 = File.separator;
                sb.append(str3);
                sb.append(((e3.h) A.get(i2)).p());
                String sb2 = sb.toString();
                if (sb2.endsWith(".apk") || sb2.endsWith(".APK")) {
                    str2 = new String(sb2.getBytes("8859_1"), "UTF-8");
                }
                String p3 = ((e3.h) A.get(i2)).p();
                cVar.t(p3, str + str3);
            }
            return str2;
        }
        throw new ZipException("压缩文件不合法,可能被损坏.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0208, code lost:
        if (r3.endsWith(r12 + ".mds") != false) goto L86;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.join.mgps.dto.UNZipPathBackBean g(com.join.mgps.task.h r9, java.io.File r10, java.lang.String r11, java.lang.String r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 874
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.s.g(com.join.mgps.task.h, java.io.File, java.lang.String, java.lang.String):com.join.mgps.dto.UNZipPathBackBean");
    }

    public int b(String str, String str2, String str3) {
        File file = new File(str);
        File file2 = new File(str2);
        try {
            c3.c cVar = new c3.c(file2);
            this.f27817a = cVar;
            cVar.N("GBK");
            e3.p pVar = new e3.p();
            this.f27818b = pVar;
            pVar.q(8);
            this.f27818b.p(5);
            if (str3 != null && str3 != "") {
                this.f27818b.s(true);
                this.f27818b.t(0);
                this.f27818b.x(str3.toCharArray());
            }
            if (file2.isDirectory()) {
                String str4 = str2 + net.lingala.zip4j.util.e.F0 + a(file.getName()) + ".zip";
                StringBuilder sb = new StringBuilder();
                sb.append("保存压缩文件的路径(zipFilePath)：");
                sb.append(str4);
                b(str, str4, str3);
            }
            if (file.isDirectory()) {
                this.f27817a.c(file, this.f27818b);
            } else {
                this.f27817a.a(file, this.f27818b);
            }
            return this.f27819c;
        } catch (ZipException e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("compressZip4j: 异常：");
            sb2.append(e4);
            this.f27819c = -1;
            return -1;
        }
    }

    public int e(String str, String str2, String str3) {
        File file = new File(str);
        File file2 = new File(str2);
        try {
            c3.c cVar = new c3.c(file);
            this.f27817a = cVar;
            cVar.N("GBK");
            if (this.f27817a.H()) {
                if (file2.isDirectory() && !file2.exists()) {
                    file2.mkdir();
                }
                if (this.f27817a.E()) {
                    this.f27817a.P(str3.toCharArray());
                }
                this.f27817a.o(str2);
                return this.f27819c;
            }
            throw new ZipException("压缩文件不合法,可能被损坏.");
        } catch (ZipException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("uncompressZip4j: 异常：");
            sb.append(e4);
            this.f27819c = -1;
            return -1;
        }
    }
}
