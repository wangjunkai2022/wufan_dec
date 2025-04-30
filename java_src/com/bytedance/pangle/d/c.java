package com.bytedance.pangle.d;

import com.bytedance.pangle.util.f;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class c implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final FileInputStream f10133a;

    /* renamed from: b  reason: collision with root package name */
    private a f10134b;

    /* renamed from: c  reason: collision with root package name */
    private b[] f10135c;

    /* renamed from: d  reason: collision with root package name */
    private C0035c[] f10136d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, C0035c> f10137e = new HashMap();

    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f10138a;

        /* renamed from: b  reason: collision with root package name */
        public final short f10139b;

        /* renamed from: c  reason: collision with root package name */
        public final short f10140c;

        /* renamed from: d  reason: collision with root package name */
        public final int f10141d;

        /* renamed from: e  reason: collision with root package name */
        public final long f10142e;

        /* renamed from: f  reason: collision with root package name */
        public final long f10143f;

        /* renamed from: g  reason: collision with root package name */
        public final long f10144g;

        /* renamed from: h  reason: collision with root package name */
        public final int f10145h;

        /* renamed from: i  reason: collision with root package name */
        public final short f10146i;

        /* renamed from: j  reason: collision with root package name */
        public final short f10147j;

        /* renamed from: k  reason: collision with root package name */
        public final short f10148k;

        /* renamed from: l  reason: collision with root package name */
        public final short f10149l;

        /* renamed from: m  reason: collision with root package name */
        public final short f10150m;

        /* renamed from: n  reason: collision with root package name */
        public final short f10151n;

        /* synthetic */ a(FileChannel fileChannel, byte b4) {
            this(fileChannel);
        }

        private a(FileChannel fileChannel) {
            byte[] bArr = new byte[16];
            this.f10138a = bArr;
            fileChannel.position(0L);
            fileChannel.read(ByteBuffer.wrap(bArr));
            if (bArr[0] == Byte.MAX_VALUE && bArr[1] == 69 && bArr[2] == 76 && bArr[3] == 70) {
                byte b4 = bArr[4];
                c.a(b4, 2, "bad elf class: " + ((int) bArr[4]));
                byte b5 = bArr[5];
                c.a(b5, 2, "bad elf data encoding: " + ((int) bArr[5]));
                ByteBuffer allocate = ByteBuffer.allocate(bArr[4] == 1 ? 36 : 48);
                allocate.order(bArr[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
                c.b(fileChannel, allocate, "failed to read rest part of ehdr.");
                this.f10139b = allocate.getShort();
                this.f10140c = allocate.getShort();
                int i2 = allocate.getInt();
                this.f10141d = i2;
                c.a(i2, 1, "bad elf version: " + i2);
                byte b6 = bArr[4];
                if (b6 == 1) {
                    this.f10142e = allocate.getInt();
                    this.f10143f = allocate.getInt();
                    this.f10144g = allocate.getInt();
                } else if (b6 == 2) {
                    this.f10142e = allocate.getLong();
                    this.f10143f = allocate.getLong();
                    this.f10144g = allocate.getLong();
                } else {
                    throw new IOException("Unexpected elf class: " + ((int) bArr[4]));
                }
                this.f10145h = allocate.getInt();
                this.f10146i = allocate.getShort();
                this.f10147j = allocate.getShort();
                this.f10148k = allocate.getShort();
                this.f10149l = allocate.getShort();
                this.f10150m = allocate.getShort();
                this.f10151n = allocate.getShort();
                return;
            }
            throw new IOException(String.format("bad elf magic: %x %x %x %x.", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3])));
        }
    }

    /* loaded from: classes2.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f10152a;

        /* renamed from: b  reason: collision with root package name */
        public final int f10153b;

        /* renamed from: c  reason: collision with root package name */
        public final long f10154c;

        /* renamed from: d  reason: collision with root package name */
        public final long f10155d;

        /* renamed from: e  reason: collision with root package name */
        public final long f10156e;

        /* renamed from: f  reason: collision with root package name */
        public final long f10157f;

        /* renamed from: g  reason: collision with root package name */
        public final long f10158g;

        /* renamed from: h  reason: collision with root package name */
        public final long f10159h;

        /* synthetic */ b(ByteBuffer byteBuffer, int i2, byte b4) {
            this(byteBuffer, i2);
        }

        private b(ByteBuffer byteBuffer, int i2) {
            if (i2 == 1) {
                this.f10152a = byteBuffer.getInt();
                this.f10154c = byteBuffer.getInt();
                this.f10155d = byteBuffer.getInt();
                this.f10156e = byteBuffer.getInt();
                this.f10157f = byteBuffer.getInt();
                this.f10158g = byteBuffer.getInt();
                this.f10153b = byteBuffer.getInt();
                this.f10159h = byteBuffer.getInt();
            } else if (i2 == 2) {
                this.f10152a = byteBuffer.getInt();
                this.f10153b = byteBuffer.getInt();
                this.f10154c = byteBuffer.getLong();
                this.f10155d = byteBuffer.getLong();
                this.f10156e = byteBuffer.getLong();
                this.f10157f = byteBuffer.getLong();
                this.f10158g = byteBuffer.getLong();
                this.f10159h = byteBuffer.getLong();
            } else {
                throw new IOException("Unexpected elf class: ".concat(String.valueOf(i2)));
            }
        }
    }

    /* renamed from: com.bytedance.pangle.d.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0035c {

        /* renamed from: a  reason: collision with root package name */
        public final int f10160a;

        /* renamed from: b  reason: collision with root package name */
        public final int f10161b;

        /* renamed from: c  reason: collision with root package name */
        public final long f10162c;

        /* renamed from: d  reason: collision with root package name */
        public final long f10163d;

        /* renamed from: e  reason: collision with root package name */
        public final long f10164e;

        /* renamed from: f  reason: collision with root package name */
        public final long f10165f;

        /* renamed from: g  reason: collision with root package name */
        public final int f10166g;

        /* renamed from: h  reason: collision with root package name */
        public final int f10167h;

        /* renamed from: i  reason: collision with root package name */
        public final long f10168i;

        /* renamed from: j  reason: collision with root package name */
        public final long f10169j;

        /* renamed from: k  reason: collision with root package name */
        public String f10170k;

        /* synthetic */ C0035c(ByteBuffer byteBuffer, int i2, byte b4) {
            this(byteBuffer, i2);
        }

        private C0035c(ByteBuffer byteBuffer, int i2) {
            if (i2 == 1) {
                this.f10160a = byteBuffer.getInt();
                this.f10161b = byteBuffer.getInt();
                this.f10162c = byteBuffer.getInt();
                this.f10163d = byteBuffer.getInt();
                this.f10164e = byteBuffer.getInt();
                this.f10165f = byteBuffer.getInt();
                this.f10166g = byteBuffer.getInt();
                this.f10167h = byteBuffer.getInt();
                this.f10168i = byteBuffer.getInt();
                this.f10169j = byteBuffer.getInt();
            } else if (i2 == 2) {
                this.f10160a = byteBuffer.getInt();
                this.f10161b = byteBuffer.getInt();
                this.f10162c = byteBuffer.getLong();
                this.f10163d = byteBuffer.getLong();
                this.f10164e = byteBuffer.getLong();
                this.f10165f = byteBuffer.getLong();
                this.f10166g = byteBuffer.getInt();
                this.f10167h = byteBuffer.getInt();
                this.f10168i = byteBuffer.getLong();
                this.f10169j = byteBuffer.getLong();
            } else {
                throw new IOException("Unexpected elf class: ".concat(String.valueOf(i2)));
            }
            this.f10170k = null;
        }
    }

    private c(File file) {
        C0035c[] c0035cArr;
        C0035c[] c0035cArr2;
        this.f10134b = null;
        this.f10135c = null;
        this.f10136d = null;
        FileInputStream fileInputStream = new FileInputStream(file);
        this.f10133a = fileInputStream;
        FileChannel channel = fileInputStream.getChannel();
        this.f10134b = new a(channel, (byte) 0);
        ByteBuffer allocate = ByteBuffer.allocate(128);
        allocate.limit(this.f10134b.f10147j);
        allocate.order(this.f10134b.f10138a[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
        channel.position(this.f10134b.f10143f);
        this.f10135c = new b[this.f10134b.f10148k];
        for (int i2 = 0; i2 < this.f10135c.length; i2++) {
            b(channel, allocate, "failed to read phdr.");
            this.f10135c[i2] = new b(allocate, this.f10134b.f10138a[4], (byte) 0);
        }
        channel.position(this.f10134b.f10144g);
        allocate.limit(this.f10134b.f10149l);
        this.f10136d = new C0035c[this.f10134b.f10150m];
        int i4 = 0;
        while (true) {
            c0035cArr = this.f10136d;
            if (i4 >= c0035cArr.length) {
                break;
            }
            b(channel, allocate, "failed to read shdr.");
            this.f10136d[i4] = new C0035c(allocate, this.f10134b.f10138a[4], (byte) 0);
            i4++;
        }
        short s3 = this.f10134b.f10151n;
        if (s3 > 0) {
            C0035c c0035c = c0035cArr[s3];
            ByteBuffer allocate2 = ByteBuffer.allocate((int) c0035c.f10165f);
            this.f10133a.getChannel().position(c0035c.f10164e);
            b(this.f10133a.getChannel(), allocate2, "failed to read section: " + c0035c.f10170k);
            for (C0035c c0035c2 : this.f10136d) {
                allocate2.position(c0035c2.f10160a);
                String a4 = a(allocate2);
                c0035c2.f10170k = a4;
                this.f10137e.put(a4, c0035c2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(FileChannel fileChannel, ByteBuffer byteBuffer, String str) {
        byteBuffer.rewind();
        int read = fileChannel.read(byteBuffer);
        if (read == byteBuffer.limit()) {
            byteBuffer.flip();
            return;
        }
        throw new IOException(str + " Rest bytes insufficient, expect to read " + byteBuffer.limit() + " bytes but only " + read + " bytes were read.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f10133a.close();
        this.f10137e.clear();
        this.f10135c = null;
        this.f10136d = null;
    }

    public static boolean a(File file) {
        try {
            f.a(new c(file));
            return true;
        } catch (IOException unused) {
            f.a((Closeable) null);
            return false;
        } catch (Throwable th) {
            f.a((Closeable) null);
            throw th;
        }
    }

    private static String a(ByteBuffer byteBuffer) {
        byte[] array = byteBuffer.array();
        int position = byteBuffer.position();
        while (byteBuffer.hasRemaining() && array[byteBuffer.position()] != 0) {
            byteBuffer.position(byteBuffer.position() + 1);
        }
        byteBuffer.position(byteBuffer.position() + 1);
        return new String(array, position, (byteBuffer.position() - position) - 1, Charset.forName("ASCII"));
    }

    static /* synthetic */ void a(int i2, int i4, String str) {
        if (i2 <= 0 || i2 > i4) {
            throw new IOException(str);
        }
    }
}
