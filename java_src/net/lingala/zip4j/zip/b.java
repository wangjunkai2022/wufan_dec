package net.lingala.zip4j.zip;

import e3.f;
import e3.o;
import e3.p;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.g;
import net.lingala.zip4j.io.i;
import net.lingala.zip4j.util.c;
import net.lingala.zip4j.util.e;
import net.lingala.zip4j.util.h;
/* compiled from: ZipEngine.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private o f73076a;

    public b(o oVar) throws ZipException {
        if (oVar != null) {
            this.f73076a = oVar;
            return;
        }
        throw new ZipException("zip model is null in ZipEngine constructor");
    }

    private long e(ArrayList arrayList, p pVar) throws ZipException {
        long r3;
        if (arrayList != null) {
            long j4 = 0;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if ((arrayList.get(i2) instanceof File) && ((File) arrayList.get(i2)).exists()) {
                    if (pVar.k() && pVar.e() == 0) {
                        r3 = h.r((File) arrayList.get(i2)) * 2;
                    } else {
                        r3 = h.r((File) arrayList.get(i2));
                    }
                    j4 += r3;
                    if (this.f73076a.b() != null && this.f73076a.b().b() != null && this.f73076a.b().b().size() > 0) {
                        e3.h p3 = h.p(this.f73076a, h.x(((File) arrayList.get(i2)).getAbsolutePath(), pVar.h(), pVar.d()));
                        if (p3 != null) {
                            j4 += h.r(new File(this.f73076a.l())) - p3.e();
                        }
                    }
                }
            }
            return j4;
        }
        throw new ZipException("file list is null, cannot calculate total work");
    }

    private void f(p pVar) throws ZipException {
        if (pVar != null) {
            if (pVar.c() != 0 && pVar.c() != 8) {
                throw new ZipException("unsupported compression type");
            }
            if (pVar.c() == 8 && pVar.b() < 0 && pVar.b() > 9) {
                throw new ZipException("invalid compression level. compression level dor deflate should be in the range of 0-9");
            }
            if (pVar.k()) {
                if (pVar.e() != 0 && pVar.e() != 99) {
                    throw new ZipException("unsupported encryption method");
                }
                if (pVar.g() == null || pVar.g().length <= 0) {
                    throw new ZipException("input password is empty or null");
                }
                return;
            }
            pVar.o(-1);
            pVar.t(-1);
            return;
        }
        throw new ZipException("cannot validate zip parameters");
    }

    private f g() {
        f fVar = new f();
        fVar.q(e.f73012d);
        fVar.n(0);
        fVar.s(0);
        fVar.t(0);
        fVar.p(0L);
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0141, code lost:
        r15.setResult(3);
        r15.u(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0147, code lost:
        r5.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0186 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void h(java.util.ArrayList r13, e3.p r14, f3.a r15) throws net.lingala.zip4j.exception.ZipException {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.zip.b.h(java.util.ArrayList, e3.p, f3.a):void");
    }

    private RandomAccessFile i() throws ZipException {
        String l4 = this.f73076a.l();
        if (h.A(l4)) {
            try {
                File file = new File(l4);
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                return new RandomAccessFile(file, e.f73015e0);
            } catch (FileNotFoundException e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("invalid output path");
    }

    private void j(ArrayList arrayList, p pVar, f3.a aVar) throws ZipException {
        o oVar = this.f73076a;
        if (oVar == null || oVar.b() == null || this.f73076a.b().b() == null || this.f73076a.b().b().size() <= 0) {
            return;
        }
        RandomAccessFile randomAccessFile = null;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            try {
                try {
                    e3.h p3 = h.p(this.f73076a, h.x(((File) arrayList.get(i2)).getAbsolutePath(), pVar.h(), pVar.d()));
                    if (p3 != null) {
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                            randomAccessFile = null;
                        }
                        c cVar = new c();
                        aVar.p(2);
                        HashMap j4 = cVar.j(this.f73076a, p3, aVar);
                        if (aVar.m()) {
                            aVar.setResult(3);
                            aVar.u(0);
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                    return;
                                } catch (IOException unused) {
                                    return;
                                }
                            }
                            return;
                        }
                        aVar.p(0);
                        if (randomAccessFile == null) {
                            randomAccessFile = i();
                            if (j4 != null && j4.get(e.f73007a0) != null) {
                                try {
                                    long parseLong = Long.parseLong((String) j4.get(e.f73007a0));
                                    if (parseLong >= 0) {
                                        randomAccessFile.seek(parseLong);
                                    }
                                } catch (NumberFormatException unused2) {
                                    throw new ZipException("NumberFormatException while parsing offset central directory. Cannot update already existing file header");
                                } catch (Exception unused3) {
                                    throw new ZipException("Error while parsing offset central directory. Cannot update already existing file header");
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                } catch (Throwable th) {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                throw new ZipException(e4);
            }
        }
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException unused5) {
            }
        }
    }

    public void b(ArrayList arrayList, p pVar, f3.a aVar, boolean z3) throws ZipException {
        if (arrayList != null && pVar != null) {
            if (arrayList.size() > 0) {
                aVar.p(0);
                aVar.u(1);
                aVar.setResult(1);
                if (z3) {
                    aVar.v(e(arrayList, pVar));
                    aVar.r(((File) arrayList.get(0)).getAbsolutePath());
                    new a(this, e.G0, arrayList, pVar, aVar).start();
                    return;
                }
                h(arrayList, pVar, aVar);
                return;
            }
            throw new ZipException("no files to add");
        }
        throw new ZipException("one of the input parameters is null when adding files");
    }

    public void c(File file, p pVar, f3.a aVar, boolean z3) throws ZipException {
        String absolutePath;
        if (file != null && pVar != null) {
            if (h.c(file.getAbsolutePath())) {
                if (file.isDirectory()) {
                    if (h.d(file.getAbsolutePath())) {
                        if (pVar.l()) {
                            absolutePath = "";
                            if (file.getAbsolutePath() != null) {
                                if (file.getAbsoluteFile().getParentFile() != null) {
                                    absolutePath = file.getAbsoluteFile().getParentFile().getAbsolutePath();
                                }
                            } else if (file.getParentFile() != null) {
                                absolutePath = file.getParentFile().getAbsolutePath();
                            }
                        } else {
                            absolutePath = file.getAbsolutePath();
                        }
                        pVar.r(absolutePath);
                        ArrayList u3 = h.u(file, pVar.m());
                        if (pVar.l()) {
                            if (u3 == null) {
                                u3 = new ArrayList();
                            }
                            u3.add(file);
                        }
                        b(u3, pVar, aVar, z3);
                        return;
                    }
                    StringBuffer stringBuffer = new StringBuffer("cannot read folder: ");
                    stringBuffer.append(file.getAbsolutePath());
                    throw new ZipException(stringBuffer.toString());
                }
                throw new ZipException("input file is not a folder, user addFileToZip method to add files");
            }
            throw new ZipException("input folder does not exist");
        }
        throw new ZipException("one of the input parameters is null, cannot add folder to zip");
    }

    public void d(InputStream inputStream, p pVar) throws ZipException {
        if (inputStream != null && pVar != null) {
            i iVar = null;
            try {
                try {
                    f(pVar);
                    boolean c4 = h.c(this.f73076a.l());
                    g gVar = new g(new File(this.f73076a.l()), this.f73076a.h());
                    i iVar2 = new i(gVar, this.f73076a);
                    if (c4) {
                        try {
                            if (this.f73076a.e() != null) {
                                gVar.k(this.f73076a.e().f());
                            } else {
                                throw new ZipException("invalid end of central directory record");
                            }
                        } catch (ZipException e4) {
                            throw e4;
                        } catch (Exception e5) {
                            e = e5;
                            throw new ZipException(e);
                        } catch (Throwable th) {
                            th = th;
                            iVar = iVar2;
                            if (iVar != null) {
                                try {
                                    iVar.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th;
                        }
                    }
                    byte[] bArr = new byte[4096];
                    iVar2.q(null, pVar);
                    if (!pVar.f().endsWith(e.F0) && !pVar.f().endsWith("\\")) {
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            iVar2.write(bArr, 0, read);
                        }
                    }
                    iVar2.a();
                    iVar2.h();
                    try {
                        iVar2.close();
                    } catch (IOException unused2) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (ZipException e6) {
                throw e6;
            } catch (Exception e7) {
                e = e7;
            }
        } else {
            throw new ZipException("one of the input parameters is null, cannot add stream to zip");
        }
    }
}
