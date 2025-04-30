package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class Struct {

    /* renamed from: a  reason: collision with root package name */
    protected int f5684a;

    /* renamed from: b  reason: collision with root package name */
    protected ByteBuffer f5685b;

    public void __reset() {
        a(0, null);
    }

    protected void a(int i2, ByteBuffer byteBuffer) {
        this.f5685b = byteBuffer;
        if (byteBuffer != null) {
            this.f5684a = i2;
        } else {
            this.f5684a = 0;
        }
    }
}
