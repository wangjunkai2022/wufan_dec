package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class FloatVector extends BaseVector {
    public FloatVector __assign(int i2, ByteBuffer byteBuffer) {
        b(i2, 4, byteBuffer);
        return this;
    }

    public float get(int i2) {
        return this.f5619d.getFloat(a(i2));
    }
}
