package net.lingala.zip4j.unzip;

import e3.h;
import e3.k;
import java.io.File;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: UnzipUtil.java */
/* loaded from: classes5.dex */
public class e {
    public static void a(h hVar, File file) throws ZipException {
        b(hVar, file, null);
    }

    public static void b(h hVar, File file, k kVar) throws ZipException {
        if (hVar == null) {
            throw new ZipException("cannot set file properties: file header is null");
        }
        if (file != null) {
            if (net.lingala.zip4j.util.h.b(file)) {
                if (kVar == null || !kVar.c()) {
                    d(hVar, file);
                }
                if (kVar == null) {
                    c(hVar, file, true, true, true, true);
                    return;
                } else if (kVar.a()) {
                    c(hVar, file, false, false, false, false);
                    return;
                } else {
                    c(hVar, file, !kVar.e(), !kVar.d(), !kVar.b(), !kVar.f());
                    return;
                }
            }
            throw new ZipException("cannot set file properties: file doesnot exist");
        }
        throw new ZipException("cannot set file properties: output file is null");
    }

    private static void c(h hVar, File file, boolean z3, boolean z4, boolean z5, boolean z6) throws ZipException {
        if (hVar != null) {
            byte[] k4 = hVar.k();
            if (k4 == null) {
                return;
            }
            byte b4 = k4[0];
            if (b4 == 1) {
                if (z3) {
                    net.lingala.zip4j.util.h.G(file);
                    return;
                }
                return;
            }
            if (b4 != 2) {
                if (b4 == 3) {
                    if (z3) {
                        net.lingala.zip4j.util.h.G(file);
                    }
                    if (z4) {
                        net.lingala.zip4j.util.h.F(file);
                        return;
                    }
                    return;
                } else if (b4 != 18) {
                    if (b4 == 38) {
                        if (z3) {
                            net.lingala.zip4j.util.h.G(file);
                        }
                        if (z4) {
                            net.lingala.zip4j.util.h.F(file);
                        }
                        if (z6) {
                            net.lingala.zip4j.util.h.H(file);
                            return;
                        }
                        return;
                    }
                    if (b4 != 48) {
                        if (b4 != 50) {
                            switch (b4) {
                                case 32:
                                    break;
                                case 33:
                                    if (z5) {
                                        net.lingala.zip4j.util.h.E(file);
                                    }
                                    if (z3) {
                                        net.lingala.zip4j.util.h.G(file);
                                        return;
                                    }
                                    return;
                                case 34:
                                    break;
                                case 35:
                                    if (z5) {
                                        net.lingala.zip4j.util.h.E(file);
                                    }
                                    if (z3) {
                                        net.lingala.zip4j.util.h.G(file);
                                    }
                                    if (z4) {
                                        net.lingala.zip4j.util.h.F(file);
                                        return;
                                    }
                                    return;
                                default:
                                    return;
                            }
                        }
                        if (z5) {
                            net.lingala.zip4j.util.h.E(file);
                        }
                        if (z4) {
                            net.lingala.zip4j.util.h.F(file);
                            return;
                        }
                        return;
                    }
                    if (z5) {
                        net.lingala.zip4j.util.h.E(file);
                        return;
                    }
                    return;
                }
            }
            if (z4) {
                net.lingala.zip4j.util.h.F(file);
                return;
            }
            return;
        }
        throw new ZipException("invalid file header. cannot set file attributes");
    }

    private static void d(h hVar, File file) throws ZipException {
        if (hVar.t() > 0 && file.exists()) {
            file.setLastModified(net.lingala.zip4j.util.h.j(hVar.t()));
        }
    }
}
