package androidx.multidex;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
final class ZipUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final int f6649a = 22;

    /* renamed from: b  reason: collision with root package name */
    private static final int f6650b = 101010256;

    /* renamed from: c  reason: collision with root package name */
    private static final int f6651c = 16384;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CentralDirectory {

        /* renamed from: a  reason: collision with root package name */
        long f6652a;

        /* renamed from: b  reason: collision with root package name */
        long f6653b;

        CentralDirectory() {
        }
    }

    ZipUtil() {
    }

    static long a(RandomAccessFile randomAccessFile, CentralDirectory centralDirectory) throws IOException {
        CRC32 crc32 = new CRC32();
        long j4 = centralDirectory.f6653b;
        randomAccessFile.seek(centralDirectory.f6652a);
        byte[] bArr = new byte[16384];
        int read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j4));
        while (read != -1) {
            crc32.update(bArr, 0, read);
            j4 -= read;
            if (j4 == 0) {
                break;
            }
            read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j4));
        }
        return crc32.getValue();
    }

    static CentralDirectory b(RandomAccessFile randomAccessFile) throws IOException, ZipException {
        long length = randomAccessFile.length() - 22;
        if (length >= 0) {
            long j4 = length - 65536;
            long j5 = j4 >= 0 ? j4 : 0L;
            int reverseBytes = Integer.reverseBytes(f6650b);
            do {
                randomAccessFile.seek(length);
                if (randomAccessFile.readInt() == reverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    CentralDirectory centralDirectory = new CentralDirectory();
                    centralDirectory.f6653b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    centralDirectory.f6652a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    return centralDirectory;
                }
                length--;
            } while (length >= j5);
            throw new ZipException("End Of Central Directory signature not found");
        }
        throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, e.f73017f0);
        try {
            return a(randomAccessFile, b(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }
}
