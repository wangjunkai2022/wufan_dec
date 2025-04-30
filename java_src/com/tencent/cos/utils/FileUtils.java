package com.tencent.cos.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import net.lingala.zip4j.util.e;
/* loaded from: classes4.dex */
public class FileUtils {
    public static void closeFileStream(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static void delete(String str) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            file.delete();
        }
    }

    public static String getFileContent(String str) throws Exception {
        return getFileContent(str, 0L, Long.valueOf(getFileLength(str)).intValue());
    }

    public static byte[] getFileContentByte(InputStream inputStream, long j4, int i2) throws Exception {
        if (j4 >= 0 && i2 >= 0) {
            byte[] bArr = new byte[i2];
            inputStream.skip(j4);
            int read = inputStream.read(bArr);
            if (read < 0) {
                return new byte[0];
            }
            if (read < i2) {
                byte[] bArr2 = new byte[read];
                System.arraycopy(bArr, 0, bArr2, 0, read);
                return bArr2;
            }
            return bArr;
        }
        throw new Exception("getFileContent param error");
    }

    public static FileInputStream getFileInputStream(String str) throws Exception {
        return new FileInputStream(str);
    }

    public static long getFileLength(String str) throws Exception {
        if (isLegalFile(str)) {
            return new File(str).length();
        }
        throw new IllegalArgumentException("文件不存在、或不可读、或者是一个目录");
    }

    public static String getFileName(String str) {
        File file = new File(str);
        if (file.exists() && !file.isDirectory() && file.canRead()) {
            return file.getName();
        }
        return null;
    }

    public static boolean isLegalFile(String str) {
        File file = new File(str);
        return file.exists() && !file.isDirectory() && file.canRead();
    }

    public static String getFileContent(String str, long j4, int i2) throws Exception {
        FileInputStream fileInputStream;
        try {
            fileInputStream = getFileInputStream(str);
            try {
                String fileContent = getFileContent(fileInputStream, j4, i2);
                closeFileStream(fileInputStream);
                return fileContent;
            } catch (Throwable th) {
                th = th;
                closeFileStream(fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    public static String getFileContent(InputStream inputStream, long j4, int i2) throws Exception {
        return new String(getFileContentByte(inputStream, j4, i2), Charset.forName("ISO-8859-1"));
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x004b: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:38:0x004b */
    public static byte[] getFileContentByte(String str, long j4, int i2) {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        byte[] bArr;
        RandomAccessFile randomAccessFile3 = null;
        r0 = null;
        byte[] bArr2 = null;
        try {
        } catch (Throwable th) {
            th = th;
            randomAccessFile3 = randomAccessFile;
        }
        try {
            try {
                bArr = new byte[i2];
                randomAccessFile2 = new RandomAccessFile(str, e.f73017f0);
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
            try {
                randomAccessFile2.seek(j4);
                int read = randomAccessFile2.read(bArr, 0, i2);
                if (read == i2) {
                    bArr2 = bArr;
                } else if (read < i2 && read > 0) {
                    byte[] bArr3 = new byte[read];
                    System.arraycopy(bArr, 0, bArr3, 0, read);
                    bArr2 = bArr3;
                }
                try {
                    randomAccessFile2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
                return bArr2;
            } catch (FileNotFoundException e6) {
                e = e6;
                e.printStackTrace();
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
                return null;
            } catch (IOException e7) {
                e = e7;
                e.printStackTrace();
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
                return null;
            }
        } catch (FileNotFoundException e8) {
            e = e8;
            randomAccessFile2 = null;
        } catch (IOException e9) {
            e = e9;
            randomAccessFile2 = null;
        } catch (Throwable th2) {
            th = th2;
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
            throw th;
        }
    }
}
