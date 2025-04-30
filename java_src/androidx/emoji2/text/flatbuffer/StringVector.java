package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class StringVector extends BaseVector {

    /* renamed from: e  reason: collision with root package name */
    private Utf8 f5683e = Utf8.getDefault();

    public StringVector __assign(int i2, int i4, ByteBuffer byteBuffer) {
        b(i2, i4, byteBuffer);
        return this;
    }

    public String get(int i2) {
        return Table.h(a(i2), this.f5619d, this.f5683e);
    }
}
