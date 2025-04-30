package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class BaseVector {

    /* renamed from: a  reason: collision with root package name */
    private int f5616a;

    /* renamed from: b  reason: collision with root package name */
    private int f5617b;

    /* renamed from: c  reason: collision with root package name */
    private int f5618c;

    /* renamed from: d  reason: collision with root package name */
    protected ByteBuffer f5619d;

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(int i2) {
        return this.f5616a + (i2 * this.f5618c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(int i2, int i4, ByteBuffer byteBuffer) {
        this.f5619d = byteBuffer;
        if (byteBuffer != null) {
            this.f5616a = i2;
            this.f5617b = byteBuffer.getInt(i2 - 4);
            this.f5618c = i4;
            return;
        }
        this.f5616a = 0;
        this.f5617b = 0;
        this.f5618c = 0;
    }

    protected int c() {
        return this.f5616a;
    }

    public int length() {
        return this.f5617b;
    }

    public void reset() {
        b(0, 0, null);
    }
}
