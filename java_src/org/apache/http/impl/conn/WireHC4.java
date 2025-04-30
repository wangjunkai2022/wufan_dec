package org.apache.http.impl.conn;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import m.a;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class WireHC4 {
    private static final String TAG = "Wire";
    private final String id;

    public WireHC4(String str) {
        this.id = str;
    }

    private void wire(String str, InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                break;
            } else if (read == 13) {
                sb.append("[\\r]");
            } else if (read == 10) {
                sb.append("[\\n]\"");
                sb.insert(0, a.f72569g);
                sb.insert(0, str);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.id);
                sb2.append(" ");
                sb2.append(sb.toString());
                sb.setLength(0);
            } else if (read >= 32 && read <= 127) {
                sb.append((char) read);
            } else {
                sb.append("[0x");
                sb.append(Integer.toHexString(read));
                sb.append("]");
            }
        }
        if (sb.length() > 0) {
            sb.append('\"');
            sb.insert(0, '\"');
            sb.insert(0, str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.id);
            sb3.append(" ");
            sb3.append(sb.toString());
        }
    }

    public boolean enabled() {
        return Log.isLoggable(TAG, 3);
    }

    public void input(InputStream inputStream) throws IOException {
        Args.notNull(inputStream, "Input");
        wire("<< ", inputStream);
    }

    public void output(InputStream inputStream) throws IOException {
        Args.notNull(inputStream, "Output");
        wire(">> ", inputStream);
    }

    public void input(byte[] bArr, int i2, int i4) throws IOException {
        Args.notNull(bArr, "Input");
        wire("<< ", new ByteArrayInputStream(bArr, i2, i4));
    }

    public void output(byte[] bArr, int i2, int i4) throws IOException {
        Args.notNull(bArr, "Output");
        wire(">> ", new ByteArrayInputStream(bArr, i2, i4));
    }

    public void input(byte[] bArr) throws IOException {
        Args.notNull(bArr, "Input");
        wire("<< ", new ByteArrayInputStream(bArr));
    }

    public void output(byte[] bArr) throws IOException {
        Args.notNull(bArr, "Output");
        wire(">> ", new ByteArrayInputStream(bArr));
    }

    public void input(int i2) throws IOException {
        input(new byte[]{(byte) i2});
    }

    public void output(int i2) throws IOException {
        output(new byte[]{(byte) i2});
    }

    public void input(String str) throws IOException {
        Args.notNull(str, "Input");
        input(str.getBytes());
    }

    public void output(String str) throws IOException {
        Args.notNull(str, "Output");
        output(str.getBytes());
    }
}
