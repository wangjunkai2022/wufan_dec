package net.lingala.zip4j.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: CRCUtil.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final int f73005a = 16384;

    public static long a(String str) throws ZipException {
        return b(str, null);
    }

    public static long b(String str, f3.a aVar) throws ZipException {
        FileInputStream fileInputStream;
        if (h.A(str)) {
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    h.d(str);
                    fileInputStream = new FileInputStream(new File(str));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e4) {
                e = e4;
            } catch (Exception e5) {
                e = e5;
            }
            try {
                byte[] bArr = new byte[16384];
                CRC32 crc32 = new CRC32();
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        long value = crc32.getValue();
                        try {
                            fileInputStream.close();
                            return value;
                        } catch (IOException unused) {
                            throw new ZipException("error while closing the file after calculating crc");
                        }
                    }
                    crc32.update(bArr, 0, read);
                    if (aVar != null) {
                        aVar.w(read);
                        if (aVar.m()) {
                            aVar.setResult(3);
                            aVar.u(0);
                            try {
                                fileInputStream.close();
                                return 0L;
                            } catch (IOException unused2) {
                                throw new ZipException("error while closing the file after calculating crc");
                            }
                        }
                    }
                }
            } catch (IOException e6) {
                e = e6;
                throw new ZipException(e);
            } catch (Exception e7) {
                e = e7;
                throw new ZipException(e);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused3) {
                        throw new ZipException("error while closing the file after calculating crc");
                    }
                }
                throw th;
            }
        } else {
            throw new ZipException("input file is null or empty, cannot calculate CRC for the file");
        }
    }
}
