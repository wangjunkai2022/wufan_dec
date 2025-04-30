package com.facebook.soloader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import kotlin.UShort;
/* loaded from: classes2.dex */
public final class MinElf {

    /* renamed from: a  reason: collision with root package name */
    public static final int f13506a = 1179403647;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13507b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13508c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13509d = 5;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13510e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13511f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13512g = 65535;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ElfError extends RuntimeException {
        ElfError(String str) {
            super(str);
        }
    }

    public static String[] a(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return b(fileInputStream.getChannel());
        } finally {
            fileInputStream.close();
        }
    }

    public static String[] b(FileChannel fileChannel) throws IOException {
        long c4;
        long e4;
        int e5;
        long j4;
        boolean z3;
        long c5;
        long j5;
        long c6;
        long j6;
        long c7;
        long c8;
        long f4;
        long j7;
        long c9;
        long c10;
        long c11;
        long f5;
        long c12;
        long f6;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (f(fileChannel, allocate, 0L) == 1179403647) {
            boolean z4 = g(fileChannel, allocate, 4L) == 1;
            if (g(fileChannel, allocate, 5L) == 2) {
                allocate.order(ByteOrder.BIG_ENDIAN);
            }
            if (z4) {
                c4 = f(fileChannel, allocate, 28L);
            } else {
                c4 = c(fileChannel, allocate, 32L);
            }
            if (z4) {
                e4 = e(fileChannel, allocate, 44L);
            } else {
                e4 = e(fileChannel, allocate, 56L);
            }
            if (z4) {
                e5 = e(fileChannel, allocate, 42L);
            } else {
                e5 = e(fileChannel, allocate, 54L);
            }
            if (e4 == 65535) {
                if (z4) {
                    c12 = f(fileChannel, allocate, 32L);
                } else {
                    c12 = c(fileChannel, allocate, 40L);
                }
                if (z4) {
                    f6 = f(fileChannel, allocate, c12 + 28);
                } else {
                    f6 = f(fileChannel, allocate, c12 + 44);
                }
                e4 = f6;
            }
            long j8 = c4;
            long j9 = 0;
            while (true) {
                if (j9 >= e4) {
                    j4 = 0;
                    break;
                }
                if (z4) {
                    f5 = f(fileChannel, allocate, j8 + 0);
                } else {
                    f5 = f(fileChannel, allocate, j8 + 0);
                }
                if (f5 != 2) {
                    j8 += e5;
                    j9++;
                } else if (z4) {
                    j4 = f(fileChannel, allocate, j8 + 4);
                } else {
                    j4 = c(fileChannel, allocate, j8 + 8);
                }
            }
            long j10 = 0;
            if (j4 == 0) {
                throw new ElfError("ELF file does not contain dynamic linking information");
            }
            long j11 = j4;
            long j12 = 0;
            int i2 = 0;
            while (true) {
                if (z4) {
                    z3 = z4;
                    c5 = f(fileChannel, allocate, j11 + j10);
                } else {
                    z3 = z4;
                    c5 = c(fileChannel, allocate, j11 + j10);
                }
                if (c5 == 1) {
                    j5 = j4;
                    if (i2 == Integer.MAX_VALUE) {
                        throw new ElfError("malformed DT_NEEDED section");
                    }
                    i2++;
                } else {
                    j5 = j4;
                    if (c5 == 5) {
                        if (z3) {
                            c6 = f(fileChannel, allocate, j11 + 4);
                        } else {
                            c6 = c(fileChannel, allocate, j11 + 8);
                        }
                        j12 = c6;
                    }
                }
                long j13 = 16;
                j11 += z3 ? 8L : 16L;
                j10 = 0;
                if (c5 != 0) {
                    z4 = z3;
                    j4 = j5;
                } else if (j12 == 0) {
                    throw new ElfError("Dynamic section string-table not found");
                } else {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= e4) {
                            j6 = 0;
                            break;
                        }
                        if (z3) {
                            f4 = f(fileChannel, allocate, c4 + j10);
                        } else {
                            f4 = f(fileChannel, allocate, c4 + j10);
                        }
                        if (f4 == 1) {
                            if (z3) {
                                c9 = f(fileChannel, allocate, c4 + 8);
                            } else {
                                c9 = c(fileChannel, allocate, c4 + j13);
                            }
                            if (z3) {
                                j7 = e4;
                                c10 = f(fileChannel, allocate, c4 + 20);
                            } else {
                                j7 = e4;
                                c10 = c(fileChannel, allocate, c4 + 40);
                            }
                            if (c9 <= j12 && j12 < c10 + c9) {
                                if (z3) {
                                    c11 = f(fileChannel, allocate, c4 + 4);
                                } else {
                                    c11 = c(fileChannel, allocate, c4 + 8);
                                }
                                j6 = c11 + (j12 - c9);
                            }
                        } else {
                            j7 = e4;
                        }
                        c4 += e5;
                        i4++;
                        e4 = j7;
                        j13 = 16;
                        j10 = 0;
                    }
                    long j14 = 0;
                    if (j6 != 0) {
                        String[] strArr = new String[i2];
                        int i5 = 0;
                        while (true) {
                            if (z3) {
                                c7 = f(fileChannel, allocate, j5 + j14);
                            } else {
                                c7 = c(fileChannel, allocate, j5 + j14);
                            }
                            if (c7 == 1) {
                                if (z3) {
                                    c8 = f(fileChannel, allocate, j5 + 4);
                                } else {
                                    c8 = c(fileChannel, allocate, j5 + 8);
                                }
                                strArr[i5] = d(fileChannel, allocate, c8 + j6);
                                if (i5 == Integer.MAX_VALUE) {
                                    throw new ElfError("malformed DT_NEEDED section");
                                }
                                i5++;
                            }
                            j5 += z3 ? 8L : 16L;
                            if (c7 == 0) {
                                if (i5 == i2) {
                                    return strArr;
                                }
                                throw new ElfError("malformed DT_NEEDED section");
                            }
                            j14 = 0;
                        }
                    } else {
                        throw new ElfError("did not find file offset of DT_STRTAB table");
                    }
                }
            }
        } else {
            throw new ElfError("file is not ELF");
        }
    }

    private static long c(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        h(fileChannel, byteBuffer, 8, j4);
        return byteBuffer.getLong();
    }

    private static String d(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j5 = 1 + j4;
            short g4 = g(fileChannel, byteBuffer, j4);
            if (g4 != 0) {
                sb.append((char) g4);
                j4 = j5;
            } else {
                return sb.toString();
            }
        }
    }

    private static int e(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        h(fileChannel, byteBuffer, 2, j4);
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }

    private static long f(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        h(fileChannel, byteBuffer, 4, j4);
        return byteBuffer.getInt() & 4294967295L;
    }

    private static short g(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        h(fileChannel, byteBuffer, 1, j4);
        return (short) (byteBuffer.get() & 255);
    }

    private static void h(FileChannel fileChannel, ByteBuffer byteBuffer, int i2, long j4) throws IOException {
        int read;
        byteBuffer.position(0);
        byteBuffer.limit(i2);
        while (byteBuffer.remaining() > 0 && (read = fileChannel.read(byteBuffer, j4)) != -1) {
            j4 += read;
        }
        if (byteBuffer.remaining() <= 0) {
            byteBuffer.position(0);
            return;
        }
        throw new ElfError("ELF file truncated");
    }
}
