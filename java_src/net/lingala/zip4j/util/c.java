package net.lingala.zip4j.util;

import com.join.mgps.Util.g0;
import e3.o;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: ArchiveMaintainer.java */
/* loaded from: classes5.dex */
public class c {
    private long b(o oVar) throws ZipException {
        String stringBuffer;
        long j4 = 0;
        if (oVar.n()) {
            int d4 = oVar.e().d();
            String l4 = oVar.l();
            for (int i2 = 0; i2 <= d4; i2++) {
                if (oVar.e().d() == 0) {
                    stringBuffer = oVar.l();
                } else {
                    StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(l4.substring(0, l4.lastIndexOf(g0.f27568a))));
                    stringBuffer2.append(".z0");
                    stringBuffer2.append(1);
                    stringBuffer = stringBuffer2.toString();
                }
                j4 += h.r(new File(stringBuffer));
            }
        }
        return j4;
    }

    private long c(o oVar, e3.h hVar) throws ZipException {
        return h.r(new File(oVar.l())) - hVar.e();
    }

    private void d(RandomAccessFile randomAccessFile, OutputStream outputStream, long j4, long j5, f3.a aVar) throws ZipException {
        if (randomAccessFile == null || outputStream == null) {
            throw new ZipException("input or output stream is null, cannot copy file");
        }
        long j6 = 0;
        if (j4 < 0) {
            throw new ZipException("starting offset is negative, cannot copy file");
        }
        if (j5 < 0) {
            throw new ZipException("end offset is negative, cannot copy file");
        }
        if (j4 > j5) {
            throw new ZipException("start offset is greater than end offset, cannot copy file");
        }
        if (j4 == j5) {
            return;
        }
        if (aVar.m()) {
            aVar.setResult(3);
            aVar.u(0);
            return;
        }
        try {
            randomAccessFile.seek(j4);
            long j7 = j5 - j4;
            byte[] bArr = j7 < 4096 ? new byte[(int) j7] : new byte[4096];
            while (true) {
                int read = randomAccessFile.read(bArr);
                if (read == -1) {
                    return;
                }
                outputStream.write(bArr, 0, read);
                long j8 = read;
                aVar.w(j8);
                if (aVar.m()) {
                    aVar.setResult(3);
                    return;
                }
                j6 += j8;
                if (j6 == j7) {
                    return;
                }
                if (bArr.length + j6 > j7) {
                    bArr = new byte[(int) (j7 - j6)];
                }
            }
        } catch (IOException e4) {
            throw new ZipException(e4);
        } catch (Exception e5) {
            throw new ZipException(e5);
        }
    }

    private RandomAccessFile e(o oVar, String str) throws ZipException {
        if (oVar != null && h.A(oVar.l())) {
            try {
                return new RandomAccessFile(new File(oVar.l()), str);
            } catch (FileNotFoundException e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("input parameter is null in getFilePointer, cannot create file handler to remove file");
    }

    private RandomAccessFile f(o oVar, int i2) throws ZipException {
        String stringBuffer;
        if (oVar != null) {
            if (i2 >= 0) {
                try {
                    String l4 = oVar.l();
                    if (i2 == oVar.e().d()) {
                        stringBuffer = oVar.l();
                    } else if (i2 >= 9) {
                        StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(l4.substring(0, l4.lastIndexOf(g0.f27568a))));
                        stringBuffer2.append(".z");
                        stringBuffer2.append(i2 + 1);
                        stringBuffer = stringBuffer2.toString();
                    } else {
                        StringBuffer stringBuffer3 = new StringBuffer(String.valueOf(l4.substring(0, l4.lastIndexOf(g0.f27568a))));
                        stringBuffer3.append(".z0");
                        stringBuffer3.append(i2 + 1);
                        stringBuffer = stringBuffer3.toString();
                    }
                    File file = new File(stringBuffer);
                    if (h.b(file)) {
                        return new RandomAccessFile(file, e.f73017f0);
                    }
                    StringBuffer stringBuffer4 = new StringBuffer("split file does not exist: ");
                    stringBuffer4.append(stringBuffer);
                    throw new ZipException(stringBuffer4.toString());
                } catch (FileNotFoundException e4) {
                    throw new ZipException(e4);
                } catch (Exception e5) {
                    throw new ZipException(e5);
                }
            }
            throw new ZipException("invlaid part number, cannot create split file handler");
        }
        throw new ZipException("zip model is null, cannot create split file handler");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0156 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x014f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ae A[Catch: all -> 0x009d, Exception -> 0x00a0, IOException -> 0x00a3, TRY_LEAVE, TryCatch #17 {IOException -> 0x00a3, Exception -> 0x00a0, all -> 0x009d, blocks: (B:24:0x0063, B:26:0x0069, B:28:0x0073, B:30:0x0081, B:42:0x00ae), top: B:124:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f2 A[Catch: all -> 0x0104, Exception -> 0x0109, IOException -> 0x010e, TRY_ENTER, TRY_LEAVE, TryCatch #11 {IOException -> 0x010e, blocks: (B:46:0x00d1, B:48:0x00e2, B:53:0x00f2), top: B:120:0x00d1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g(e3.o r26, java.io.File r27, f3.a r28) throws net.lingala.zip4j.exception.ZipException {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.util.c.g(e3.o, java.io.File, f3.a):void");
    }

    private OutputStream l(File file) throws ZipException {
        if (file != null) {
            try {
                return new FileOutputStream(file);
            } catch (FileNotFoundException e4) {
                throw new ZipException(e4);
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("outFile is null, cannot create outputstream");
    }

    private void n(File file, String str) throws ZipException {
        if (file.delete()) {
            if (!new File(str).renameTo(file)) {
                throw new ZipException("cannot rename modified zip file");
            }
            return;
        }
        throw new ZipException("cannot delete old zip file");
    }

    private void p(o oVar) throws ZipException {
        try {
            if (oVar != null) {
                if (oVar.b() != null) {
                    oVar.e().n(0);
                    oVar.e().o(0);
                    oVar.e().s(oVar.b().b().size());
                    oVar.e().t(oVar.b().b().size());
                    return;
                }
                throw new ZipException("corrupt zip model - getCentralDirectory, cannot update split zip model");
            }
            throw new ZipException("zip model is null - cannot update end of central directory for split zip model");
        } catch (ZipException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new ZipException(e5);
        }
    }

    private void q(o oVar, ArrayList arrayList, boolean z3) throws ZipException {
        try {
            if (oVar.b() != null) {
                int size = oVar.b().b().size();
                int i2 = z3 ? 4 : 0;
                for (int i4 = 0; i4 < size; i4++) {
                    long j4 = 0;
                    for (int i5 = 0; i5 < ((e3.h) oVar.b().b().get(i4)).i(); i5++) {
                        j4 += ((Long) arrayList.get(i5)).longValue();
                    }
                    ((e3.h) oVar.b().b().get(i4)).a0((((e3.h) oVar.b().b().get(i4)).u() + j4) - i2);
                    ((e3.h) oVar.b().b().get(i4)).M(0);
                }
                return;
            }
            throw new ZipException("corrupt zip model - getCentralDirectory, cannot update split zip model");
        } catch (ZipException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new ZipException(e5);
        }
    }

    private void r(o oVar, ArrayList arrayList) throws ZipException {
        if (oVar != null) {
            if (oVar.j() == null) {
                return;
            }
            oVar.j().e(0);
            long j4 = 0;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                j4 += ((Long) arrayList.get(i2)).longValue();
            }
            oVar.j().f(oVar.j().b() + j4);
            oVar.j().h(1);
            return;
        }
        throw new ZipException("zip model is null, cannot update split Zip64 end of central directory locator");
    }

    private void s(o oVar, ArrayList arrayList) throws ZipException {
        if (oVar != null) {
            if (oVar.k() == null) {
                return;
            }
            oVar.k().m(0);
            oVar.k().n(0);
            oVar.k().t(oVar.e().i());
            long j4 = 0;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                j4 += ((Long) arrayList.get(i2)).longValue();
            }
            oVar.k().o(oVar.k().d() + j4);
            return;
        }
        throw new ZipException("zip model is null, cannot update split Zip64 end of central directory record");
    }

    private void t(o oVar, ArrayList arrayList, boolean z3) throws ZipException {
        if (oVar != null) {
            oVar.x(false);
            q(oVar, arrayList, z3);
            p(oVar);
            if (oVar.o()) {
                r(oVar, arrayList);
                s(oVar, arrayList);
                return;
            }
            return;
        }
        throw new ZipException("zip model is null, cannot update split zip model");
    }

    public void h(o oVar, f3.a aVar) throws ZipException {
        if (oVar != null) {
            aVar.p(4);
            aVar.r(oVar.l());
            aVar.v(b(oVar));
            aVar.u(1);
            return;
        }
        throw new ZipException("zip model is null, cannot calculate total work for merge op");
    }

    public void i(o oVar, e3.h hVar, f3.a aVar) throws ZipException {
        if (oVar != null && hVar != null && aVar != null) {
            aVar.p(2);
            aVar.r(hVar.p());
            aVar.v(c(oVar, hVar));
            aVar.u(1);
            return;
        }
        throw new ZipException("one of the input parameters is null, cannot calculate total work");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 14, insn: 0x0473: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r14 I:??[OBJECT, ARRAY]), block:B:266:0x0473 */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0474: MOVE  (r14 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY]), block:B:266:0x0473 */
    /* JADX WARN: Removed duplicated region for block: B:270:0x047d A[Catch: IOException -> 0x0481, TRY_LEAVE, TryCatch #12 {IOException -> 0x0481, blocks: (B:268:0x0478, B:270:0x047d), top: B:281:0x0478 }] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0478 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v46 */
    /* JADX WARN: Type inference failed for: r14v56 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v16 */
    /* JADX WARN: Type inference failed for: r16v25, types: [int] */
    /* JADX WARN: Type inference failed for: r16v26 */
    /* JADX WARN: Type inference failed for: r16v27 */
    /* JADX WARN: Type inference failed for: r16v33 */
    /* JADX WARN: Type inference failed for: r16v34, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r16v35, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r16v36, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r16v37 */
    /* JADX WARN: Type inference failed for: r16v38 */
    /* JADX WARN: Type inference failed for: r16v39 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v61, types: [c3.b] */
    /* JADX WARN: Type inference failed for: r1v62 */
    /* JADX WARN: Type inference failed for: r1v66, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v80 */
    /* JADX WARN: Type inference failed for: r1v81 */
    /* JADX WARN: Type inference failed for: r1v82 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX WARN: Type inference failed for: r2v66, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r31v0, types: [net.lingala.zip4j.util.c] */
    /* JADX WARN: Type inference failed for: r33v0, types: [e3.h] */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v10 */
    /* JADX WARN: Type inference failed for: r33v11 */
    /* JADX WARN: Type inference failed for: r33v12 */
    /* JADX WARN: Type inference failed for: r33v13 */
    /* JADX WARN: Type inference failed for: r33v14 */
    /* JADX WARN: Type inference failed for: r33v15, types: [java.io.OutputStream, net.lingala.zip4j.io.g] */
    /* JADX WARN: Type inference failed for: r33v16 */
    /* JADX WARN: Type inference failed for: r33v17 */
    /* JADX WARN: Type inference failed for: r33v18 */
    /* JADX WARN: Type inference failed for: r33v19 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r33v20 */
    /* JADX WARN: Type inference failed for: r33v21, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r33v22 */
    /* JADX WARN: Type inference failed for: r33v23 */
    /* JADX WARN: Type inference failed for: r33v24 */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v5 */
    /* JADX WARN: Type inference failed for: r33v6 */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /* JADX WARN: Type inference failed for: r33v9 */
    /* JADX WARN: Type inference failed for: r4v34, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.OutputStream, net.lingala.zip4j.io.g] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.HashMap j(e3.o r32, e3.h r33, f3.a r34) throws net.lingala.zip4j.exception.ZipException {
        /*
            Method dump skipped, instructions count: 1184
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.util.c.j(e3.o, e3.h, f3.a):java.util.HashMap");
    }

    public void k(o oVar, File file, f3.a aVar, boolean z3) throws ZipException {
        if (z3) {
            new b(this, e.G0, oVar, file, aVar).start();
        } else {
            g(oVar, file, aVar);
        }
    }

    public HashMap m(o oVar, e3.h hVar, f3.a aVar, boolean z3) throws ZipException {
        if (z3) {
            new a(this, e.G0, oVar, hVar, aVar).start();
            return null;
        }
        HashMap j4 = j(oVar, hVar, aVar);
        aVar.c();
        return j4;
    }

    public void o(o oVar, String str) throws ZipException {
        c3.b bVar;
        net.lingala.zip4j.io.g gVar;
        if (str == null) {
            throw new ZipException("comment is null, cannot update Zip file with comment");
        }
        if (oVar != null) {
            byte[] bytes = str.getBytes();
            int length = str.length();
            if (h.B(e.C0)) {
                try {
                    String str2 = new String(str.getBytes(e.C0), e.C0);
                    byte[] bytes2 = str2.getBytes(e.C0);
                    length = str2.length();
                    str = str2;
                    bytes = bytes2;
                } catch (UnsupportedEncodingException unused) {
                    bytes = str.getBytes();
                    length = str.length();
                }
            }
            if (length <= 65535) {
                oVar.e().k(str);
                oVar.e().l(bytes);
                oVar.e().m(length);
                net.lingala.zip4j.io.g gVar2 = null;
                try {
                    try {
                        bVar = new c3.b();
                        gVar = new net.lingala.zip4j.io.g(oVar.l());
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (FileNotFoundException e4) {
                    e = e4;
                } catch (IOException e5) {
                    e = e5;
                }
                try {
                    if (oVar.o()) {
                        gVar.k(oVar.k().d());
                    } else {
                        gVar.k(oVar.e().f());
                    }
                    bVar.e(oVar, gVar);
                    try {
                        gVar.close();
                        return;
                    } catch (IOException unused2) {
                        return;
                    }
                } catch (FileNotFoundException e6) {
                    e = e6;
                    throw new ZipException(e);
                } catch (IOException e7) {
                    e = e7;
                    throw new ZipException(e);
                } catch (Throwable th2) {
                    th = th2;
                    gVar2 = gVar;
                    if (gVar2 != null) {
                        try {
                            gVar2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            }
            throw new ZipException("comment length exceeds maximum length");
        }
        throw new ZipException("zipModel is null, cannot update Zip file with comment");
    }
}
