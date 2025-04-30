package org.apache.http.client.utils;

import java.lang.reflect.InvocationTargetException;
import org.apache.http.annotation.Immutable;
@Immutable
/* loaded from: classes5.dex */
public class CloneUtilsHC4 {
    private CloneUtilsHC4() {
    }

    public static Object clone(Object obj) throws CloneNotSupportedException {
        return cloneObject(obj);
    }

    public static <T> T cloneObject(T t3) throws CloneNotSupportedException {
        if (t3 == null) {
            return null;
        }
        if (t3 instanceof Cloneable) {
            try {
                try {
                    return (T) t3.getClass().getMethod("clone", null).invoke(t3, null);
                } catch (IllegalAccessException e4) {
                    throw new IllegalAccessError(e4.getMessage());
                } catch (InvocationTargetException e5) {
                    Throwable cause = e5.getCause();
                    if (cause instanceof CloneNotSupportedException) {
                        throw ((CloneNotSupportedException) cause);
                    }
                    throw new Error("Unexpected exception", cause);
                }
            } catch (NoSuchMethodException e6) {
                throw new NoSuchMethodError(e6.getMessage());
            }
        }
        throw new CloneNotSupportedException();
    }
}
