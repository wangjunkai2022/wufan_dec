package c3;

import e3.h;
import e3.i;
import e3.l;
import e3.m;
import e3.o;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.g;
import net.lingala.zip4j.util.f;
/* compiled from: HeaderWriter.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f8298a = 50;

    private byte[] a(List list) throws ZipException {
        if (list != null) {
            if (list.size() <= 0) {
                return null;
            }
            byte[] bArr = new byte[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                bArr[i2] = Byte.parseByte((String) list.get(i2));
            }
            return bArr;
        }
        throw new ZipException("input byte array list is null, cannot conver to byte array");
    }

    private void b(byte[] bArr, List list) throws ZipException {
        if (list != null && bArr != null) {
            for (byte b4 : bArr) {
                list.add(Byte.toString(b4));
            }
            return;
        }
        throw new ZipException("one of the input parameters is null, cannot copy byte array to array list");
    }

    private int c(ArrayList arrayList, int i2) throws ZipException {
        if (arrayList != null) {
            int i4 = 0;
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                if (((h) arrayList.get(i5)).i() == i2) {
                    i4++;
                }
            }
            return i4;
        }
        throw new ZipException("file headers are null, cannot calculate number of entries on this disk");
    }

    private void f(o oVar, OutputStream outputStream) throws ZipException {
        int i2 = 0;
        try {
            if (outputStream instanceof g) {
                oVar.e().p(((g) outputStream).d());
                i2 = ((g) outputStream).b();
            }
            if (oVar.o()) {
                if (oVar.k() == null) {
                    oVar.B(new m());
                }
                if (oVar.j() == null) {
                    oVar.A(new l());
                }
                oVar.j().e(i2);
                oVar.j().h(i2 + 1);
            }
            oVar.e().n(i2);
            oVar.e().o(i2);
        } catch (IOException e4) {
            throw new ZipException(e4);
        }
    }

    private void g(g gVar, i iVar, long j4, long j5, byte[] bArr, boolean z3) throws ZipException {
        if (gVar != null) {
            try {
                if (iVar.w()) {
                    if (bArr.length == 8) {
                        long k4 = j4 + j5 + 4 + 4 + 2 + 2 + iVar.k() + 2 + 2 + 8;
                        if (j5 == 22) {
                            k4 += 8;
                        }
                        gVar.k(k4);
                        gVar.write(bArr);
                        return;
                    }
                    throw new ZipException("attempting to write a non 8-byte compressed size block for a zip64 file");
                }
                gVar.k(j4 + j5);
                gVar.write(bArr);
                return;
            } catch (IOException e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("invalid output stream, cannot update compressed size for local file header");
    }

    private int i(o oVar, OutputStream outputStream, List list) throws ZipException {
        if (oVar != null && outputStream != null) {
            if (oVar.b() == null || oVar.b().b() == null || oVar.b().b().size() <= 0) {
                return 0;
            }
            int i2 = 0;
            for (int i4 = 0; i4 < oVar.b().b().size(); i4++) {
                i2 += l(oVar, (h) oVar.b().b().get(i4), outputStream, list);
            }
            return i2;
        }
        throw new ZipException("input parameters is null, cannot write central directory");
    }

    private void j(o oVar, OutputStream outputStream, int i2, long j4, List list) throws ZipException {
        if (oVar != null && outputStream != null) {
            try {
                byte[] bArr = new byte[2];
                byte[] bArr2 = new byte[4];
                byte[] bArr3 = new byte[8];
                f.l(bArr2, 0, (int) oVar.e().g());
                b(bArr2, list);
                f.n(bArr, 0, (short) oVar.e().d());
                b(bArr, list);
                f.n(bArr, 0, (short) oVar.e().e());
                b(bArr, list);
                if (oVar.b() != null && oVar.b().b() != null) {
                    int size = oVar.b().b().size();
                    f.n(bArr, 0, (short) (oVar.n() ? c(oVar.b().b(), oVar.e().d()) : size));
                    b(bArr, list);
                    f.n(bArr, 0, (short) size);
                    b(bArr, list);
                    f.l(bArr2, 0, i2);
                    b(bArr2, list);
                    if (j4 > 4294967295L) {
                        f.m(bArr3, 0, 4294967295L);
                        System.arraycopy(bArr3, 0, bArr2, 0, 4);
                        b(bArr2, list);
                    } else {
                        f.m(bArr3, 0, j4);
                        System.arraycopy(bArr3, 0, bArr2, 0, 4);
                        b(bArr2, list);
                    }
                    int c4 = oVar.e().a() != null ? oVar.e().c() : 0;
                    f.n(bArr, 0, (short) c4);
                    b(bArr, list);
                    if (c4 > 0) {
                        b(oVar.e().b(), list);
                        return;
                    }
                    return;
                }
                throw new ZipException("invalid central directory/file headers, cannot write end of central directory record");
            } catch (Exception e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("zip model or output stream is null, cannot write end of central directory record");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00d3, code lost:
        r4 = 20;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b7 A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00bf A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d7 A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00df A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ff A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0107 A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0119 A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012a A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0140 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0157 A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0163 A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x017c A[Catch: Exception -> 0x01d9, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018e A[Catch: Exception -> 0x01d9, TRY_LEAVE, TryCatch #0 {Exception -> 0x01d9, blocks: (B:6:0x0009, B:8:0x006c, B:11:0x0079, B:13:0x00a2, B:15:0x00b7, B:25:0x00d9, B:27:0x00df, B:28:0x00e1, B:30:0x00ff, B:32:0x010a, B:34:0x0119, B:36:0x013d, B:50:0x0188, B:52:0x018e, B:39:0x0142, B:44:0x0157, B:45:0x0159, B:47:0x0163, B:49:0x017c, B:35:0x012a, B:31:0x0107, B:24:0x00d7, B:16:0x00bf, B:12:0x0095), top: B:60:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int l(e3.o r19, e3.h r20, java.io.OutputStream r21, java.util.List r22) throws net.lingala.zip4j.exception.ZipException {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c3.b.l(e3.o, e3.h, java.io.OutputStream, java.util.List):int");
    }

    private void n(o oVar, OutputStream outputStream, List list) throws ZipException {
        if (oVar != null && outputStream != null) {
            try {
                byte[] bArr = new byte[4];
                byte[] bArr2 = new byte[8];
                f.l(bArr, 0, 117853008);
                b(bArr, list);
                f.l(bArr, 0, oVar.j().a());
                b(bArr, list);
                f.m(bArr2, 0, oVar.j().b());
                b(bArr2, list);
                f.l(bArr, 0, oVar.j().d());
                b(bArr, list);
                return;
            } catch (ZipException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("zip model or output stream is null, cannot write zip64 end of central directory locator");
    }

    private void o(o oVar, OutputStream outputStream, int i2, long j4, List list) throws ZipException {
        int i4;
        if (oVar != null && outputStream != null) {
            try {
                byte[] bArr = new byte[2];
                byte[] bArr2 = new byte[2];
                byte[] bArr3 = new byte[4];
                byte[] bArr4 = new byte[8];
                f.l(bArr3, 0, 101075792);
                b(bArr3, list);
                f.m(bArr4, 0, 44L);
                b(bArr4, list);
                if (oVar.b() != null && oVar.b().b() != null && oVar.b().b().size() > 0) {
                    f.n(bArr, 0, (short) ((h) oVar.b().b().get(0)).y());
                    b(bArr, list);
                    f.n(bArr, 0, (short) ((h) oVar.b().b().get(0)).z());
                    b(bArr, list);
                } else {
                    b(bArr2, list);
                    b(bArr2, list);
                }
                f.l(bArr3, 0, oVar.e().d());
                b(bArr3, list);
                f.l(bArr3, 0, oVar.e().e());
                b(bArr3, list);
                if (oVar.b() != null && oVar.b().b() != null) {
                    int size = oVar.b().b().size();
                    if (oVar.n()) {
                        c(oVar.b().b(), oVar.e().d());
                        i4 = 0;
                    } else {
                        i4 = size;
                    }
                    f.m(bArr4, 0, i4);
                    b(bArr4, list);
                    f.m(bArr4, 0, size);
                    b(bArr4, list);
                    f.m(bArr4, 0, i2);
                    b(bArr4, list);
                    f.m(bArr4, 0, j4);
                    b(bArr4, list);
                    return;
                }
                throw new ZipException("invalid central directory/file headers, cannot write end of central directory record");
            } catch (ZipException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("zip model or output stream is null, cannot write zip64 end of central directory record");
    }

    private void p(o oVar, OutputStream outputStream, byte[] bArr) throws ZipException {
        if (bArr != null) {
            try {
                if ((outputStream instanceof g) && ((g) outputStream).a(bArr.length)) {
                    d(oVar, outputStream);
                    return;
                } else {
                    outputStream.write(bArr);
                    return;
                }
            } catch (IOException e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("invalid buff to write as zip headers");
    }

    public void d(o oVar, OutputStream outputStream) throws ZipException {
        if (oVar != null && outputStream != null) {
            try {
                f(oVar, outputStream);
                long f4 = oVar.e().f();
                ArrayList arrayList = new ArrayList();
                int i2 = i(oVar, outputStream, arrayList);
                if (oVar.o()) {
                    if (oVar.k() == null) {
                        oVar.B(new m());
                    }
                    if (oVar.j() == null) {
                        oVar.A(new l());
                    }
                    oVar.j().f(i2 + f4);
                    if (outputStream instanceof g) {
                        oVar.j().e(((g) outputStream).b());
                        oVar.j().h(((g) outputStream).b() + 1);
                    } else {
                        oVar.j().e(0);
                        oVar.j().h(1);
                    }
                    o(oVar, outputStream, i2, f4, arrayList);
                    n(oVar, outputStream, arrayList);
                }
                j(oVar, outputStream, i2, f4, arrayList);
                p(oVar, outputStream, a(arrayList));
                return;
            } catch (ZipException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("input parameters is null, cannot finalize zip file");
    }

    public void e(o oVar, OutputStream outputStream) throws ZipException {
        if (oVar != null && outputStream != null) {
            try {
                ArrayList arrayList = new ArrayList();
                long f4 = oVar.e().f();
                int i2 = i(oVar, outputStream, arrayList);
                if (oVar.o()) {
                    if (oVar.k() == null) {
                        oVar.B(new m());
                    }
                    if (oVar.j() == null) {
                        oVar.A(new l());
                    }
                    oVar.j().f(i2 + f4);
                    o(oVar, outputStream, i2, f4, arrayList);
                    n(oVar, outputStream, arrayList);
                }
                j(oVar, outputStream, i2, f4, arrayList);
                p(oVar, outputStream, a(arrayList));
                return;
            } catch (ZipException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("input parameters is null, cannot finalize zip file without validations");
    }

    public void h(i iVar, long j4, int i2, o oVar, byte[] bArr, int i4, g gVar) throws ZipException {
        g gVar2;
        boolean z3;
        String stringBuffer;
        if (iVar != null && j4 >= 0 && oVar != null) {
            try {
                if (i4 != gVar.b()) {
                    File file = new File(oVar.l());
                    String parent = file.getParent();
                    String z4 = net.lingala.zip4j.util.h.z(file.getName());
                    StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(parent));
                    stringBuffer2.append(System.getProperty("file.separator"));
                    String stringBuffer3 = stringBuffer2.toString();
                    if (i4 < 9) {
                        StringBuffer stringBuffer4 = new StringBuffer(String.valueOf(stringBuffer3));
                        stringBuffer4.append(z4);
                        stringBuffer4.append(".z0");
                        stringBuffer4.append(i4 + 1);
                        stringBuffer = stringBuffer4.toString();
                    } else {
                        StringBuffer stringBuffer5 = new StringBuffer(String.valueOf(stringBuffer3));
                        stringBuffer5.append(z4);
                        stringBuffer5.append(".z");
                        stringBuffer5.append(i4 + 1);
                        stringBuffer = stringBuffer5.toString();
                    }
                    gVar2 = new g(new File(stringBuffer));
                    z3 = true;
                } else {
                    gVar2 = gVar;
                    z3 = false;
                }
                long d4 = gVar2.d();
                if (i2 == 14) {
                    gVar2.k(j4 + i2);
                    gVar2.write(bArr);
                } else if (i2 == 18 || i2 == 22) {
                    g(gVar2, iVar, j4, i2, bArr, oVar.o());
                }
                if (z3) {
                    gVar2.close();
                    return;
                } else {
                    gVar.k(d4);
                    return;
                }
            } catch (Exception e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("invalid input parameters, cannot update local file header");
    }

    public int k(i iVar, OutputStream outputStream) throws ZipException, IOException {
        if (iVar != null && outputStream != null) {
            ArrayList arrayList = new ArrayList();
            byte[] bArr = new byte[4];
            f.l(bArr, 0, 134695760);
            b(bArr, arrayList);
            f.l(bArr, 0, (int) iVar.d());
            b(bArr, arrayList);
            long b4 = iVar.b();
            if (b4 >= 2147483647L) {
                b4 = 2147483647L;
            }
            f.l(bArr, 0, (int) b4);
            b(bArr, arrayList);
            long q3 = iVar.q();
            f.l(bArr, 0, (int) (q3 < 2147483647L ? q3 : 2147483647L));
            b(bArr, arrayList);
            byte[] a4 = a(arrayList);
            outputStream.write(a4);
            return a4.length;
        }
        throw new ZipException("input parameters is null, cannot write extended local header");
    }

    public int m(o oVar, i iVar, OutputStream outputStream) throws ZipException {
        boolean z3;
        if (iVar != null) {
            try {
                ArrayList arrayList = new ArrayList();
                byte[] bArr = new byte[2];
                byte[] bArr2 = new byte[4];
                byte[] bArr3 = new byte[8];
                byte[] bArr4 = new byte[8];
                f.l(bArr2, 0, iVar.p());
                b(bArr2, arrayList);
                f.n(bArr, 0, (short) iVar.r());
                b(bArr, arrayList);
                b(iVar.l(), arrayList);
                f.n(bArr, 0, (short) iVar.c());
                b(bArr, arrayList);
                f.l(bArr2, 0, iVar.m());
                b(bArr2, arrayList);
                f.l(bArr2, 0, (int) iVar.d());
                b(bArr2, arrayList);
                if (iVar.q() + 50 >= 4294967295L) {
                    f.m(bArr3, 0, 4294967295L);
                    System.arraycopy(bArr3, 0, bArr2, 0, 4);
                    b(bArr2, arrayList);
                    b(bArr2, arrayList);
                    oVar.C(true);
                    iVar.S(true);
                    z3 = true;
                } else {
                    f.m(bArr3, 0, iVar.b());
                    System.arraycopy(bArr3, 0, bArr2, 0, 4);
                    b(bArr2, arrayList);
                    f.m(bArr3, 0, iVar.q());
                    System.arraycopy(bArr3, 0, bArr2, 0, 4);
                    b(bArr2, arrayList);
                    iVar.S(false);
                    z3 = false;
                }
                f.n(bArr, 0, (short) iVar.k());
                b(bArr, arrayList);
                int i2 = z3 ? 20 : 0;
                if (iVar.a() != null) {
                    i2 += 11;
                }
                f.n(bArr, 0, (short) i2);
                b(bArr, arrayList);
                if (net.lingala.zip4j.util.h.A(oVar.f())) {
                    b(iVar.j().getBytes(oVar.f()), arrayList);
                } else {
                    b(net.lingala.zip4j.util.h.g(iVar.j()), arrayList);
                }
                if (z3) {
                    f.n(bArr, 0, (short) 1);
                    b(bArr, arrayList);
                    f.n(bArr, 0, (short) 16);
                    b(bArr, arrayList);
                    f.m(bArr3, 0, iVar.q());
                    b(bArr3, arrayList);
                    b(bArr4, arrayList);
                }
                if (iVar.a() != null) {
                    e3.a a4 = iVar.a();
                    f.n(bArr, 0, (short) a4.d());
                    b(bArr, arrayList);
                    f.n(bArr, 0, (short) a4.c());
                    b(bArr, arrayList);
                    f.n(bArr, 0, (short) a4.f());
                    b(bArr, arrayList);
                    b(a4.e().getBytes(), arrayList);
                    b(new byte[]{(byte) a4.a()}, arrayList);
                    f.n(bArr, 0, (short) a4.b());
                    b(bArr, arrayList);
                }
                byte[] a5 = a(arrayList);
                outputStream.write(a5);
                return a5.length;
            } catch (ZipException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("input parameters are null, cannot write local file header");
    }
}
