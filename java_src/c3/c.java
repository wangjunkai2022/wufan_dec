package c3;

import e3.k;
import e3.o;
import e3.p;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.e;
import net.lingala.zip4j.util.h;
/* compiled from: ZipFile.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f8299a;

    /* renamed from: b  reason: collision with root package name */
    private int f8300b;

    /* renamed from: c  reason: collision with root package name */
    private o f8301c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8302d;

    /* renamed from: e  reason: collision with root package name */
    private f3.a f8303e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8304f;

    /* renamed from: g  reason: collision with root package name */
    private String f8305g;

    public c(String str) throws ZipException {
        this(new File(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void J() throws net.lingala.zip4j.exception.ZipException {
        /*
            r5 = this;
            java.lang.String r0 = r5.f8299a
            boolean r0 = net.lingala.zip4j.util.h.c(r0)
            if (r0 == 0) goto L68
            java.lang.String r0 = r5.f8299a
            boolean r0 = net.lingala.zip4j.util.h.d(r0)
            if (r0 == 0) goto L60
            int r0 = r5.f8300b
            r1 = 2
            if (r0 != r1) goto L58
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            java.lang.String r3 = r5.f8299a     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            java.lang.String r3 = "r"
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L42 java.io.FileNotFoundException -> L47
            e3.o r0 = r5.f8301c     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            if (r0 != 0) goto L3c
            c3.a r0 = new c3.a     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            r0.<init>(r1)     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            java.lang.String r2 = r5.f8305g     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            e3.o r0 = r0.d(r2)     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            r5.f8301c = r0     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            if (r0 == 0) goto L3c
            java.lang.String r2 = r5.f8299a     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
            r0.D(r2)     // Catch: java.io.FileNotFoundException -> L40 java.lang.Throwable -> L51
        L3c:
            r1.close()     // Catch: java.io.IOException -> L3f
        L3f:
            return
        L40:
            r0 = move-exception
            goto L4b
        L42:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L52
        L47:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L4b:
            net.lingala.zip4j.exception.ZipException r2 = new net.lingala.zip4j.exception.ZipException     // Catch: java.lang.Throwable -> L51
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L51
            throw r2     // Catch: java.lang.Throwable -> L51
        L51:
            r0 = move-exception
        L52:
            if (r1 == 0) goto L57
            r1.close()     // Catch: java.io.IOException -> L57
        L57:
            throw r0
        L58:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "Invalid mode"
            r0.<init>(r1)
            throw r0
        L60:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "no read access for the input zip file"
            r0.<init>(r1)
            throw r0
        L68:
            net.lingala.zip4j.exception.ZipException r0 = new net.lingala.zip4j.exception.ZipException
            java.lang.String r1 = "zip file does not exist"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c3.c.J():void");
    }

    private void d(File file, p pVar, boolean z3) throws ZipException {
        g();
        o oVar = this.f8301c;
        if (oVar != null) {
            if (z3 && oVar.n()) {
                throw new ZipException("This is a split archive. Zip file format does not allow updating split/spanned files");
            }
            new net.lingala.zip4j.zip.b(this.f8301c).c(file, pVar, this.f8303e, this.f8304f);
            return;
        }
        throw new ZipException("internal error: zip model is null");
    }

    private void g() throws ZipException {
        if (this.f8301c == null) {
            if (h.c(this.f8299a)) {
                J();
            } else {
                h();
            }
        }
    }

    private void h() {
        o oVar = new o();
        this.f8301c = oVar;
        oVar.D(this.f8299a);
        this.f8301c.u(this.f8305g);
    }

    public List A() throws ZipException {
        J();
        o oVar = this.f8301c;
        if (oVar == null || oVar.b() == null) {
            return null;
        }
        return this.f8301c.b().b();
    }

    public net.lingala.zip4j.io.h B(e3.h hVar) throws ZipException {
        if (hVar != null) {
            g();
            o oVar = this.f8301c;
            if (oVar != null) {
                return new net.lingala.zip4j.unzip.c(oVar).g(hVar);
            }
            throw new ZipException("zip model is null, cannot get inputstream");
        }
        throw new ZipException("FileHeader is null, cannot get InputStream");
    }

    public f3.a C() {
        return this.f8303e;
    }

    public ArrayList D() throws ZipException {
        g();
        return h.y(this.f8301c);
    }

    public boolean E() throws ZipException {
        if (this.f8301c == null) {
            J();
            if (this.f8301c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        if (this.f8301c.b() != null && this.f8301c.b().b() != null) {
            ArrayList b4 = this.f8301c.b().b();
            int i2 = 0;
            while (true) {
                if (i2 >= b4.size()) {
                    break;
                }
                e3.h hVar = (e3.h) b4.get(i2);
                if (hVar != null && hVar.D()) {
                    this.f8302d = true;
                    break;
                }
                i2++;
            }
            return this.f8302d;
        }
        throw new ZipException("invalid zip file");
    }

    public boolean F() {
        return this.f8304f;
    }

    public boolean G() throws ZipException {
        if (this.f8301c == null) {
            J();
            if (this.f8301c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        return this.f8301c.n();
    }

    public boolean H() {
        try {
            J();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void I(File file) throws ZipException {
        if (file != null) {
            if (!file.exists()) {
                g();
                if (this.f8301c != null) {
                    net.lingala.zip4j.util.c cVar = new net.lingala.zip4j.util.c();
                    cVar.h(this.f8301c, this.f8303e);
                    cVar.k(this.f8301c, file, this.f8303e, this.f8304f);
                    return;
                }
                throw new ZipException("zip model is null, corrupt zip file?");
            }
            throw new ZipException("output Zip File already exists");
        }
        throw new ZipException("outputZipFile is null, cannot merge split files");
    }

    public void K(e3.h hVar) throws ZipException {
        if (hVar != null) {
            if (this.f8301c == null && h.c(this.f8299a)) {
                J();
            }
            if (!this.f8301c.n()) {
                net.lingala.zip4j.util.c cVar = new net.lingala.zip4j.util.c();
                cVar.i(this.f8301c, hVar, this.f8303e);
                cVar.m(this.f8301c, hVar, this.f8303e, this.f8304f);
                return;
            }
            throw new ZipException("Zip file format does not allow updating split/spanned files");
        }
        throw new ZipException("file header is null, cannot remove file");
    }

    public void L(String str) throws ZipException {
        if (h.A(str)) {
            if (this.f8301c == null && h.c(this.f8299a)) {
                J();
            }
            if (!this.f8301c.n()) {
                e3.h p3 = h.p(this.f8301c, str);
                if (p3 != null) {
                    K(p3);
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer("could not find file header for file: ");
                stringBuffer.append(str);
                throw new ZipException(stringBuffer.toString());
            }
            throw new ZipException("Zip file format does not allow updating split/spanned files");
        }
        throw new ZipException("file name is empty or null, cannot remove file");
    }

    public void M(String str) throws ZipException {
        if (str != null) {
            if (h.c(this.f8299a)) {
                J();
                o oVar = this.f8301c;
                if (oVar != null) {
                    if (oVar.e() != null) {
                        new net.lingala.zip4j.util.c().o(this.f8301c, str);
                        return;
                    }
                    throw new ZipException("end of central directory is null, cannot set comment");
                }
                throw new ZipException("zipModel is null, cannot update zip file");
            }
            throw new ZipException("zip file does not exist, cannot set comment for zip file");
        }
        throw new ZipException("input comment is null, cannot update zip file");
    }

    public void N(String str) throws ZipException {
        if (h.A(str)) {
            if (h.B(str)) {
                this.f8305g = str;
                return;
            }
            StringBuffer stringBuffer = new StringBuffer("unsupported charset: ");
            stringBuffer.append(str);
            throw new ZipException(stringBuffer.toString());
        }
        throw new ZipException("null or empty charset name");
    }

    public void O(String str) throws ZipException {
        if (h.A(str)) {
            P(str.toCharArray());
            return;
        }
        throw null;
    }

    public void P(char[] cArr) throws ZipException {
        if (this.f8301c == null) {
            J();
            if (this.f8301c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        if (this.f8301c.b() != null && this.f8301c.b().b() != null) {
            for (int i2 = 0; i2 < this.f8301c.b().b().size(); i2++) {
                if (this.f8301c.b().b().get(i2) != null && ((e3.h) this.f8301c.b().b().get(i2)).D()) {
                    ((e3.h) this.f8301c.b().b().get(i2)).b0(cArr);
                }
            }
            return;
        }
        throw new ZipException("invalid zip file");
    }

    public void Q(boolean z3) {
        this.f8304f = z3;
    }

    public void a(File file, p pVar) throws ZipException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(file);
        b(arrayList, pVar);
    }

    public void b(ArrayList arrayList, p pVar) throws ZipException {
        g();
        if (this.f8301c == null) {
            throw new ZipException("internal error: zip model is null");
        }
        if (arrayList != null) {
            if (!h.a(arrayList, 1)) {
                throw new ZipException("One or more elements in the input ArrayList is not of type File");
            }
            if (pVar != null) {
                if (this.f8303e.j() != 1) {
                    if (h.c(this.f8299a) && this.f8301c.n()) {
                        throw new ZipException("Zip file already exists. Zip file format does not allow updating split/spanned files");
                    }
                    new net.lingala.zip4j.zip.b(this.f8301c).b(arrayList, pVar, this.f8303e, this.f8304f);
                    return;
                }
                throw new ZipException("invalid operation - Zip4j is in busy state");
            }
            throw new ZipException("input parameters are null, cannot add files to zip");
        }
        throw new ZipException("input file ArrayList is null, cannot add files");
    }

    public void c(File file, p pVar) throws ZipException {
        if (file == null) {
            throw new ZipException("input path is null, cannot add folder to zip file");
        }
        if (pVar != null) {
            d(file, pVar, true);
            return;
        }
        throw new ZipException("input parameters are null, cannot add folder to zip file");
    }

    public void e(String str, p pVar) throws ZipException {
        if (h.A(str)) {
            c(new File(str), pVar);
            return;
        }
        throw new ZipException("input path is null or empty, cannot add folder to zip file");
    }

    public void f(InputStream inputStream, p pVar) throws ZipException {
        if (inputStream == null) {
            throw new ZipException("inputstream is null, cannot add file to zip");
        }
        if (pVar != null) {
            Q(false);
            g();
            if (this.f8301c != null) {
                if (h.c(this.f8299a) && this.f8301c.n()) {
                    throw new ZipException("Zip file already exists. Zip file format does not allow updating split/spanned files");
                }
                new net.lingala.zip4j.zip.b(this.f8301c).d(inputStream, pVar);
                return;
            }
            throw new ZipException("internal error: zip model is null");
        }
        throw new ZipException("zip parameters are null");
    }

    public void i(File file, p pVar) throws ZipException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(file);
        l(arrayList, pVar, false, -1L);
    }

    public void j(File file, p pVar, boolean z3, long j4) throws ZipException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(file);
        l(arrayList, pVar, z3, j4);
    }

    public void k(ArrayList arrayList, p pVar) throws ZipException {
        l(arrayList, pVar, false, -1L);
    }

    public void l(ArrayList arrayList, p pVar, boolean z3, long j4) throws ZipException {
        if (h.A(this.f8299a)) {
            if (h.c(this.f8299a)) {
                StringBuffer stringBuffer = new StringBuffer("zip file: ");
                stringBuffer.append(this.f8299a);
                stringBuffer.append(" already exists. To add files to existing zip file use addFile method");
                throw new ZipException(stringBuffer.toString());
            } else if (arrayList != null) {
                if (h.a(arrayList, 1)) {
                    h();
                    this.f8301c.x(z3);
                    this.f8301c.y(j4);
                    b(arrayList, pVar);
                    return;
                }
                throw new ZipException("One or more elements in the input ArrayList is not of type File");
            } else {
                throw new ZipException("input file ArrayList is null, cannot create zip file");
            }
        }
        throw new ZipException("zip file path is empty");
    }

    public void m(File file, p pVar, boolean z3, long j4) throws ZipException {
        if (file == null) {
            throw new ZipException("folderToAdd is null, cannot create zip file from folder");
        }
        if (pVar != null) {
            if (!h.c(this.f8299a)) {
                h();
                this.f8301c.x(z3);
                if (z3) {
                    this.f8301c.y(j4);
                }
                d(file, pVar, false);
                return;
            }
            StringBuffer stringBuffer = new StringBuffer("zip file: ");
            stringBuffer.append(this.f8299a);
            stringBuffer.append(" already exists. To add files to existing zip file use addFolder method");
            throw new ZipException(stringBuffer.toString());
        }
        throw new ZipException("input parameters are null, cannot create zip file from folder");
    }

    public void n(String str, p pVar, boolean z3, long j4) throws ZipException {
        if (h.A(str)) {
            m(new File(str), pVar, z3, j4);
            return;
        }
        throw new ZipException("folderToAdd is empty or null, cannot create Zip File from folder");
    }

    public void o(String str) throws ZipException {
        p(str, null);
    }

    public void p(String str, k kVar) throws ZipException {
        if (h.A(str)) {
            if (h.f(str)) {
                if (this.f8301c == null) {
                    J();
                }
                if (this.f8301c != null) {
                    if (this.f8303e.j() != 1) {
                        new net.lingala.zip4j.unzip.c(this.f8301c).e(kVar, str, this.f8303e, this.f8304f);
                        return;
                    }
                    throw new ZipException("invalid operation - Zip4j is in busy state");
                }
                throw new ZipException("Internal error occurred when extracting zip file");
            }
            throw new ZipException("invalid output path");
        }
        throw new ZipException("output path is null or invalid");
    }

    public void q(e3.h hVar, String str) throws ZipException {
        r(hVar, str, null);
    }

    public void r(e3.h hVar, String str, k kVar) throws ZipException {
        s(hVar, str, kVar, null);
    }

    public void s(e3.h hVar, String str, k kVar, String str2) throws ZipException {
        if (hVar != null) {
            if (h.A(str)) {
                J();
                if (this.f8303e.j() != 1) {
                    hVar.b(this.f8301c, str, kVar, str2, this.f8303e, this.f8304f);
                    return;
                }
                throw new ZipException("invalid operation - Zip4j is in busy state");
            }
            throw new ZipException("destination path is empty or null, cannot extract file");
        }
        throw new ZipException("input file header is null, cannot extract file");
    }

    public void t(String str, String str2) throws ZipException {
        u(str, str2, null);
    }

    public void u(String str, String str2, k kVar) throws ZipException {
        v(str, str2, kVar, null);
    }

    public void v(String str, String str2, k kVar, String str3) throws ZipException {
        if (h.A(str)) {
            if (h.A(str2)) {
                J();
                e3.h p3 = h.p(this.f8301c, str);
                if (p3 != null) {
                    if (this.f8303e.j() != 1) {
                        p3.b(this.f8301c, str2, kVar, str3, this.f8303e, this.f8304f);
                        return;
                    }
                    throw new ZipException("invalid operation - Zip4j is in busy state");
                }
                throw new ZipException("file header not found for given file name, cannot extract file");
            }
            throw new ZipException("destination string path is empty or null, cannot extract file");
        }
        throw new ZipException("file to extract is null or empty, cannot extract file");
    }

    public String w() throws ZipException {
        return x(null);
    }

    public String x(String str) throws ZipException {
        if (str == null) {
            str = h.B(e.C0) ? e.C0 : e.D0;
        }
        if (h.c(this.f8299a)) {
            g();
            o oVar = this.f8301c;
            if (oVar != null) {
                if (oVar.e() != null) {
                    if (this.f8301c.e().b() == null || this.f8301c.e().b().length <= 0) {
                        return null;
                    }
                    try {
                        return new String(this.f8301c.e().b(), str);
                    } catch (UnsupportedEncodingException e4) {
                        throw new ZipException(e4);
                    }
                }
                throw new ZipException("end of central directory record is null, cannot read comment");
            }
            throw new ZipException("zip model is null, cannot read comment");
        }
        throw new ZipException("zip file does not exist, cannot read comment");
    }

    public File y() {
        return new File(this.f8299a);
    }

    public e3.h z(String str) throws ZipException {
        if (h.A(str)) {
            J();
            o oVar = this.f8301c;
            if (oVar == null || oVar.b() == null) {
                return null;
            }
            return h.p(this.f8301c, str);
        }
        throw new ZipException("input file name is emtpy or null, cannot get FileHeader");
    }

    public c(File file) throws ZipException {
        if (file != null) {
            this.f8299a = file.getPath();
            this.f8300b = 2;
            this.f8303e = new f3.a();
            this.f8304f = false;
            return;
        }
        throw new ZipException("Input zip file parameter is not null", 1);
    }
}
