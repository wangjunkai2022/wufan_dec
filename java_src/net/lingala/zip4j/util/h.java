package net.lingala.zip4j.util;

import com.join.mgps.Util.g0;
import e3.o;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: Zip4jUtil.java */
/* loaded from: classes5.dex */
public class h {
    public static boolean A(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static boolean B(String str) throws ZipException {
        if (A(str)) {
            try {
                new String("a".getBytes(), str);
                return true;
            } catch (UnsupportedEncodingException unused) {
                return false;
            } catch (Exception e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("charset is null or empty, cannot check if it is supported");
    }

    public static boolean C() {
        return System.getProperty("os.name").toLowerCase().indexOf("win") >= 0;
    }

    public static long D(long j4) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j4);
        int i2 = calendar.get(1);
        if (i2 < 1980) {
            return 2162688L;
        }
        return (calendar.get(13) >> 1) | ((i2 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5);
    }

    public static void E(File file) throws ZipException {
    }

    public static void F(File file) throws ZipException {
    }

    public static void G(File file) throws ZipException {
        if (file != null) {
            if (file.exists()) {
                file.setReadOnly();
                return;
            }
            return;
        }
        throw new ZipException("input file is null. cannot set read only file attribute");
    }

    public static void H(File file) throws ZipException {
    }

    public static boolean a(ArrayList arrayList, int i2) throws ZipException {
        if (arrayList != null) {
            if (arrayList.size() <= 0) {
                return true;
            }
            boolean z3 = false;
            if (i2 == 1) {
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    if (!(arrayList.get(i4) instanceof File)) {
                        z3 = true;
                        break;
                    }
                }
                return !z3;
            }
            if (i2 == 2) {
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    if (!(arrayList.get(i5) instanceof String)) {
                        z3 = true;
                        break;
                    }
                }
            }
            return !z3;
        }
        throw new ZipException("input arraylist is null, cannot check types");
    }

    public static boolean b(File file) throws ZipException {
        if (file != null) {
            return file.exists();
        }
        throw new ZipException("cannot check if file exists: input file is null");
    }

    public static boolean c(String str) throws ZipException {
        if (A(str)) {
            return b(new File(str));
        }
        throw new ZipException("path is null");
    }

    public static boolean d(String str) throws ZipException {
        if (A(str)) {
            if (c(str)) {
                try {
                    return new File(str).canRead();
                } catch (Exception unused) {
                    throw new ZipException("cannot read zip file");
                }
            }
            StringBuffer stringBuffer = new StringBuffer("file does not exist: ");
            stringBuffer.append(str);
            throw new ZipException(stringBuffer.toString());
        }
        throw new ZipException("path is null");
    }

    public static boolean e(String str) throws ZipException {
        if (A(str)) {
            if (c(str)) {
                try {
                    return new File(str).canWrite();
                } catch (Exception unused) {
                    throw new ZipException("cannot read zip file");
                }
            }
            StringBuffer stringBuffer = new StringBuffer("file does not exist: ");
            stringBuffer.append(str);
            throw new ZipException(stringBuffer.toString());
        }
        throw new ZipException("path is null");
    }

    public static boolean f(String str) throws ZipException {
        if (A(str)) {
            File file = new File(str);
            if (file.exists()) {
                if (file.isDirectory()) {
                    if (file.canWrite()) {
                        return true;
                    }
                    throw new ZipException("no write access to output folder");
                }
                throw new ZipException("output folder is not valid");
            }
            try {
                file.mkdirs();
                if (file.isDirectory()) {
                    if (file.canWrite()) {
                        return true;
                    }
                    throw new ZipException("no write access to destination folder");
                }
                throw new ZipException("output folder is not valid");
            } catch (Exception unused) {
                throw new ZipException("Cannot create destination folder");
            }
        }
        throw new ZipException(new NullPointerException("output path is null"));
    }

    public static byte[] g(String str) throws ZipException {
        try {
            String i2 = i(str);
            if (i2.equals(e.B0)) {
                return str.getBytes(e.B0);
            }
            if (i2.equals(e.A0)) {
                return str.getBytes(e.A0);
            }
            return str.getBytes();
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        } catch (Exception e4) {
            throw new ZipException(e4);
        }
    }

    public static String h(byte[] bArr, boolean z3) {
        if (z3) {
            try {
                return new String(bArr, e.A0);
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        }
        return m(bArr);
    }

    public static String i(String str) throws ZipException {
        if (str != null) {
            try {
                return str.equals(new String(str.getBytes(e.B0), e.B0)) ? e.B0 : str.equals(new String(str.getBytes(e.A0), e.A0)) ? e.A0 : e.D0;
            } catch (UnsupportedEncodingException unused) {
                return e.D0;
            } catch (Exception unused2) {
                return e.D0;
            }
        }
        throw new ZipException("input string is null, cannot detect charset");
    }

    public static long j(int i2) {
        int i4 = (i2 & 31) * 2;
        int i5 = (i2 >> 5) & 63;
        int i6 = (i2 >> 11) & 31;
        int i7 = (i2 >> 16) & 31;
        int i8 = ((i2 >> 25) & 127) + 1980;
        Calendar calendar = Calendar.getInstance();
        calendar.set(i8, ((i2 >> 21) & 15) - 1, i7, i6, i5, i4);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    public static String k(String str) throws ZipException {
        if (A(str)) {
            return new File(str).getAbsolutePath();
        }
        throw new ZipException("filePath is null or empty, cannot get absolute file path");
    }

    public static long[] l() {
        return new long[]{e.f73006a, 134695760, e.f73010c, e.f73012d, e.f73014e, e.f73016f, 134695760, e.f73020h, e.f73022i, 1, 39169};
    }

    public static String m(byte[] bArr) {
        try {
            return new String(bArr, e.B0);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    public static int n(String str) throws ZipException {
        if (A(str)) {
            return o(str, i(str));
        }
        throw new ZipException("input string is null, cannot calculate encoded String length");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.nio.ByteBuffer] */
    public static int o(String str, String str2) throws ZipException {
        if (A(str)) {
            if (A(str2)) {
                try {
                    if (str2.equals(e.B0)) {
                        str = ByteBuffer.wrap(str.getBytes(e.B0));
                    } else if (str2.equals(e.A0)) {
                        str = ByteBuffer.wrap(str.getBytes(e.A0));
                    } else {
                        str = ByteBuffer.wrap(str.getBytes(str2));
                    }
                } catch (UnsupportedEncodingException unused) {
                    str = ByteBuffer.wrap(str.getBytes());
                } catch (Exception e4) {
                    throw new ZipException(e4);
                }
                return str.limit();
            }
            throw new ZipException("encoding is not defined, cannot calculate string length");
        }
        throw new ZipException("input string is null, cannot calculate encoded String length");
    }

    public static e3.h p(o oVar, String str) throws ZipException {
        if (oVar != null) {
            if (A(str)) {
                e3.h q3 = q(oVar, str);
                if (q3 == null) {
                    String replaceAll = str.replaceAll("\\\\", e.F0);
                    e3.h q4 = q(oVar, replaceAll);
                    return q4 == null ? q(oVar, replaceAll.replaceAll(e.F0, "\\\\")) : q4;
                }
                return q3;
            }
            StringBuffer stringBuffer = new StringBuffer("file name is null, cannot determine file header for fileName: ");
            stringBuffer.append(str);
            throw new ZipException(stringBuffer.toString());
        }
        StringBuffer stringBuffer2 = new StringBuffer("zip model is null, cannot determine file header for fileName: ");
        stringBuffer2.append(str);
        throw new ZipException(stringBuffer2.toString());
    }

    public static e3.h q(o oVar, String str) throws ZipException {
        if (oVar != null) {
            if (A(str)) {
                if (oVar.b() != null) {
                    if (oVar.b().b() != null) {
                        if (oVar.b().b().size() <= 0) {
                            return null;
                        }
                        ArrayList b4 = oVar.b().b();
                        for (int i2 = 0; i2 < b4.size(); i2++) {
                            e3.h hVar = (e3.h) b4.get(i2);
                            String p3 = hVar.p();
                            if (A(p3) && str.equalsIgnoreCase(p3)) {
                                return hVar;
                            }
                        }
                        return null;
                    }
                    StringBuffer stringBuffer = new StringBuffer("file Headers are null, cannot determine file header with exact match for fileName: ");
                    stringBuffer.append(str);
                    throw new ZipException(stringBuffer.toString());
                }
                StringBuffer stringBuffer2 = new StringBuffer("central directory is null, cannot determine file header with exact match for fileName: ");
                stringBuffer2.append(str);
                throw new ZipException(stringBuffer2.toString());
            }
            StringBuffer stringBuffer3 = new StringBuffer("file name is null, cannot determine file header with exact match for fileName: ");
            stringBuffer3.append(str);
            throw new ZipException(stringBuffer3.toString());
        }
        StringBuffer stringBuffer4 = new StringBuffer("zip model is null, cannot determine file header with exact match for fileName: ");
        stringBuffer4.append(str);
        throw new ZipException(stringBuffer4.toString());
    }

    public static long r(File file) throws ZipException {
        if (file != null) {
            if (file.isDirectory()) {
                return -1L;
            }
            return file.length();
        }
        throw new ZipException("input file is null, cannot calculate file length");
    }

    public static long s(String str) throws ZipException {
        if (A(str)) {
            return r(new File(str));
        }
        throw new ZipException("invalid file name");
    }

    public static String t(File file) throws ZipException {
        if (file != null) {
            if (file.isDirectory()) {
                return null;
            }
            return file.getName();
        }
        throw new ZipException("input file is null, cannot get file name");
    }

    public static ArrayList u(File file, boolean z3) throws ZipException {
        if (file != null) {
            ArrayList arrayList = new ArrayList();
            List asList = Arrays.asList(file.listFiles());
            if (file.canRead()) {
                for (int i2 = 0; i2 < asList.size(); i2++) {
                    File file2 = (File) asList.get(i2);
                    if (file2.isHidden() && !z3) {
                        return arrayList;
                    }
                    arrayList.add(file2);
                    if (file2.isDirectory()) {
                        arrayList.addAll(u(file2, z3));
                    }
                }
                return arrayList;
            }
            return arrayList;
        }
        throw new ZipException("input path is null, cannot read files in the directory");
    }

    public static int v(o oVar, e3.h hVar) throws ZipException {
        if (oVar != null && hVar != null) {
            if (oVar.b() != null) {
                if (oVar.b().b() != null) {
                    if (oVar.b().b().size() <= 0) {
                        return -1;
                    }
                    String p3 = hVar.p();
                    if (A(p3)) {
                        ArrayList b4 = oVar.b().b();
                        for (int i2 = 0; i2 < b4.size(); i2++) {
                            String p4 = ((e3.h) b4.get(i2)).p();
                            if (A(p4) && p3.equalsIgnoreCase(p4)) {
                                return i2;
                            }
                        }
                        return -1;
                    }
                    throw new ZipException("file name in file header is empty or null, cannot determine index of file header");
                }
                throw new ZipException("file Headers are null, cannot determine index of file header");
            }
            throw new ZipException("central directory is null, ccannot determine index of file header");
        }
        throw new ZipException("input parameters is null, cannot determine index of file header");
    }

    public static long w(File file, TimeZone timeZone) throws ZipException {
        if (file != null) {
            if (file.exists()) {
                return file.lastModified();
            }
            throw new ZipException("input file does not exist, cannot read last modified file time");
        }
        throw new ZipException("input file is null, cannot read last modified file time");
    }

    public static String x(String str, String str2, String str3) throws ZipException {
        String t3;
        if (A(str)) {
            if (A(str3)) {
                String path = new File(str3).getPath();
                String str4 = e.E0;
                if (!path.endsWith(str4)) {
                    StringBuffer stringBuffer = new StringBuffer(path);
                    stringBuffer.append(str4);
                    path = stringBuffer.toString();
                }
                String substring = str.substring(path.length());
                if (substring.startsWith(System.getProperty("file.separator"))) {
                    substring = substring.substring(1);
                }
                File file = new File(str);
                if (file.isDirectory()) {
                    StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(substring.replaceAll("\\\\", e.F0)));
                    stringBuffer2.append(e.F0);
                    t3 = stringBuffer2.toString();
                } else {
                    StringBuffer stringBuffer3 = new StringBuffer(String.valueOf(substring.substring(0, substring.lastIndexOf(file.getName())).replaceAll("\\\\", e.F0)));
                    stringBuffer3.append(file.getName());
                    t3 = stringBuffer3.toString();
                }
            } else {
                File file2 = new File(str);
                if (file2.isDirectory()) {
                    StringBuffer stringBuffer4 = new StringBuffer(String.valueOf(file2.getName()));
                    stringBuffer4.append(e.F0);
                    t3 = stringBuffer4.toString();
                } else {
                    t3 = t(new File(str));
                }
            }
            if (A(str2)) {
                StringBuffer stringBuffer5 = new StringBuffer(String.valueOf(str2));
                stringBuffer5.append(t3);
                t3 = stringBuffer5.toString();
            }
            if (A(t3)) {
                return t3;
            }
            throw new ZipException("Error determining file name");
        }
        throw new ZipException("input file path/name is empty, cannot calculate relative file name");
    }

    public static ArrayList y(o oVar) throws ZipException {
        if (oVar != null) {
            if (oVar.e() == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            String l4 = oVar.l();
            String name = new File(l4).getName();
            if (A(l4)) {
                if (!oVar.n()) {
                    arrayList.add(l4);
                    return arrayList;
                }
                int d4 = oVar.e().d();
                if (d4 == 0) {
                    arrayList.add(l4);
                    return arrayList;
                }
                int i2 = 0;
                while (i2 <= d4) {
                    if (i2 == d4) {
                        arrayList.add(oVar.l());
                    } else {
                        String str = i2 > 9 ? ".z" : ".z0";
                        StringBuffer stringBuffer = new StringBuffer(String.valueOf(name.indexOf(g0.f27568a) >= 0 ? l4.substring(0, l4.lastIndexOf(g0.f27568a)) : l4));
                        stringBuffer.append(str);
                        stringBuffer.append(i2 + 1);
                        arrayList.add(stringBuffer.toString());
                    }
                    i2++;
                }
                return arrayList;
            }
            throw new ZipException("cannot get split zip files: zipfile is null");
        }
        throw new ZipException("cannot get split zip files: zipmodel is null");
    }

    public static String z(String str) throws ZipException {
        if (A(str)) {
            if (str.indexOf(System.getProperty("file.separator")) >= 0) {
                str = str.substring(str.lastIndexOf(System.getProperty("file.separator")));
            }
            return str.indexOf(g0.f27568a) > 0 ? str.substring(0, str.lastIndexOf(g0.f27568a)) : str;
        }
        throw new ZipException("zip file name is empty or null, cannot determine zip file name");
    }
}
