package androidx.fragment.app;

import java.io.Writer;
/* loaded from: classes.dex */
final class LogWriter extends Writer {

    /* renamed from: a  reason: collision with root package name */
    private final String f6123a;

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f6124b = new StringBuilder(128);

    /* JADX INFO: Access modifiers changed from: package-private */
    public LogWriter(String str) {
        this.f6123a = str;
    }

    private void a() {
        if (this.f6124b.length() > 0) {
            this.f6124b.toString();
            StringBuilder sb = this.f6124b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i2, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            char c4 = cArr[i2 + i5];
            if (c4 == '\n') {
                a();
            } else {
                this.f6124b.append(c4);
            }
        }
    }
}
