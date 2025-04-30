package org.apache.http.client.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.http.annotation.Immutable;
@Immutable
/* loaded from: classes5.dex */
public class JdkIdn implements Idn {
    private final Method toUnicode;

    public JdkIdn() throws ClassNotFoundException {
        try {
            this.toUnicode = Class.forName("java.net.IDN").getMethod("toUnicode", String.class);
        } catch (NoSuchMethodException e4) {
            throw new IllegalStateException(e4.getMessage(), e4);
        } catch (SecurityException e5) {
            throw new IllegalStateException(e5.getMessage(), e5);
        }
    }

    @Override // org.apache.http.client.utils.Idn
    public String toUnicode(String str) {
        try {
            return (String) this.toUnicode.invoke(null, str);
        } catch (IllegalAccessException e4) {
            throw new IllegalStateException(e4.getMessage(), e4);
        } catch (InvocationTargetException e5) {
            Throwable cause = e5.getCause();
            throw new RuntimeException(cause.getMessage(), cause);
        }
    }
}
