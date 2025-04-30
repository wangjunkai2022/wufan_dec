package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.Writer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes.dex */
public class LogWriter extends Writer {

    /* renamed from: a  reason: collision with root package name */
    private final String f4694a;

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f4695b = new StringBuilder(128);

    public LogWriter(String str) {
        this.f4694a = str;
    }

    private void a() {
        if (this.f4695b.length() > 0) {
            this.f4695b.toString();
            StringBuilder sb = this.f4695b;
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
                this.f4695b.append(c4);
            }
        }
    }
}
