package androidx.emoji2.text;

import android.content.res.AssetManager;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;
/* JADX INFO: Access modifiers changed from: package-private */
@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class MetadataListReader {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5584a = 1164798569;

    /* renamed from: b  reason: collision with root package name */
    private static final int f5585b = 1701669481;

    /* renamed from: c  reason: collision with root package name */
    private static final int f5586c = 1835365473;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ByteBufferReader implements OpenTypeReader {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f5587a;

        ByteBufferReader(@NonNull ByteBuffer byteBuffer) {
            this.f5587a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long getPosition() {
            return this.f5587a.position();
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readTag() throws IOException {
            return this.f5587a.getInt();
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long readUnsignedInt() throws IOException {
            return MetadataListReader.e(this.f5587a.getInt());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readUnsignedShort() throws IOException {
            return MetadataListReader.f(this.f5587a.getShort());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public void skip(int i2) throws IOException {
            ByteBuffer byteBuffer = this.f5587a;
            byteBuffer.position(byteBuffer.position() + i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class InputStreamOpenTypeReader implements OpenTypeReader {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f5588a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final ByteBuffer f5589b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final InputStream f5590c;

        /* renamed from: d  reason: collision with root package name */
        private long f5591d = 0;

        InputStreamOpenTypeReader(@NonNull InputStream inputStream) {
            this.f5590c = inputStream;
            byte[] bArr = new byte[4];
            this.f5588a = bArr;
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            this.f5589b = wrap;
            wrap.order(ByteOrder.BIG_ENDIAN);
        }

        private void a(@IntRange(from = 0, to = 4) int i2) throws IOException {
            if (this.f5590c.read(this.f5588a, 0, i2) == i2) {
                this.f5591d += i2;
                return;
            }
            throw new IOException("read failed");
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long getPosition() {
            return this.f5591d;
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readTag() throws IOException {
            this.f5589b.position(0);
            a(4);
            return this.f5589b.getInt();
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long readUnsignedInt() throws IOException {
            this.f5589b.position(0);
            a(4);
            return MetadataListReader.e(this.f5589b.getInt());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readUnsignedShort() throws IOException {
            this.f5589b.position(0);
            a(2);
            return MetadataListReader.f(this.f5589b.getShort());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public void skip(int i2) throws IOException {
            while (i2 > 0) {
                int skip = (int) this.f5590c.skip(i2);
                if (skip >= 1) {
                    i2 -= skip;
                    this.f5591d += skip;
                } else {
                    throw new IOException("Skip didn't move at least 1 byte forward");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class OffsetInfo {

        /* renamed from: a  reason: collision with root package name */
        private final long f5592a;

        /* renamed from: b  reason: collision with root package name */
        private final long f5593b;

        OffsetInfo(long j4, long j5) {
            this.f5592a = j4;
            this.f5593b = j5;
        }

        long a() {
            return this.f5593b;
        }

        long b() {
            return this.f5592a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface OpenTypeReader {
        public static final int UINT16_BYTE_COUNT = 2;
        public static final int UINT32_BYTE_COUNT = 4;

        long getPosition();

        int readTag() throws IOException;

        long readUnsignedInt() throws IOException;

        int readUnsignedShort() throws IOException;

        void skip(int i2) throws IOException;
    }

    private MetadataListReader() {
    }

    private static OffsetInfo a(OpenTypeReader openTypeReader) throws IOException {
        long j4;
        openTypeReader.skip(4);
        int readUnsignedShort = openTypeReader.readUnsignedShort();
        if (readUnsignedShort <= 100) {
            openTypeReader.skip(6);
            int i2 = 0;
            while (true) {
                if (i2 >= readUnsignedShort) {
                    j4 = -1;
                    break;
                }
                int readTag = openTypeReader.readTag();
                openTypeReader.skip(4);
                j4 = openTypeReader.readUnsignedInt();
                openTypeReader.skip(4);
                if (f5586c == readTag) {
                    break;
                }
                i2++;
            }
            if (j4 != -1) {
                openTypeReader.skip((int) (j4 - openTypeReader.getPosition()));
                openTypeReader.skip(12);
                long readUnsignedInt = openTypeReader.readUnsignedInt();
                for (int i4 = 0; i4 < readUnsignedInt; i4++) {
                    int readTag2 = openTypeReader.readTag();
                    long readUnsignedInt2 = openTypeReader.readUnsignedInt();
                    long readUnsignedInt3 = openTypeReader.readUnsignedInt();
                    if (f5584a == readTag2 || f5585b == readTag2) {
                        return new OffsetInfo(readUnsignedInt2 + j4, readUnsignedInt3);
                    }
                }
            }
            throw new IOException("Cannot read metadata.");
        }
        throw new IOException("Cannot read metadata.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MetadataList b(AssetManager assetManager, String str) throws IOException {
        InputStream open = assetManager.open(str);
        try {
            MetadataList c4 = c(open);
            if (open != null) {
                open.close();
            }
            return c4;
        } catch (Throwable th) {
            if (open != null) {
                try {
                    open.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MetadataList c(InputStream inputStream) throws IOException {
        InputStreamOpenTypeReader inputStreamOpenTypeReader = new InputStreamOpenTypeReader(inputStream);
        OffsetInfo a4 = a(inputStreamOpenTypeReader);
        inputStreamOpenTypeReader.skip((int) (a4.b() - inputStreamOpenTypeReader.getPosition()));
        ByteBuffer allocate = ByteBuffer.allocate((int) a4.a());
        int read = inputStream.read(allocate.array());
        if (read == a4.a()) {
            return MetadataList.getRootAsMetadataList(allocate);
        }
        throw new IOException("Needed " + a4.a() + " bytes, got " + read);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MetadataList d(ByteBuffer byteBuffer) throws IOException {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position((int) a(new ByteBufferReader(duplicate)).b());
        return MetadataList.getRootAsMetadataList(duplicate);
    }

    static long e(int i2) {
        return i2 & 4294967295L;
    }

    static int f(short s3) {
        return s3 & UShort.MAX_VALUE;
    }
}
