package io.netty.util.internal;

import com.tencent.bugly.Bugly;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.security.AccessController;
import java.security.PrivilegedAction;
/* loaded from: classes5.dex */
public final class SystemPropertyUtil {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SystemPropertyUtil.class);

    private SystemPropertyUtil() {
    }

    public static boolean contains(String str) {
        return get(str) != null;
    }

    public static String get(String str) {
        return get(str, null);
    }

    public static boolean getBoolean(String str, boolean z3) {
        String str2 = get(str);
        if (str2 == null) {
            return z3;
        }
        String lowerCase = str2.trim().toLowerCase();
        if (lowerCase.isEmpty()) {
            return z3;
        }
        if ("true".equals(lowerCase) || "yes".equals(lowerCase) || "1".equals(lowerCase)) {
            return true;
        }
        if (Bugly.SDK_IS_DEV.equals(lowerCase) || "no".equals(lowerCase) || "0".equals(lowerCase)) {
            return false;
        }
        logger.warn("Unable to parse the boolean system property '{}':{} - using the default value: {}", str, lowerCase, Boolean.valueOf(z3));
        return z3;
    }

    public static int getInt(String str, int i2) {
        String str2 = get(str);
        if (str2 == null) {
            return i2;
        }
        String trim = str2.trim();
        try {
            return Integer.parseInt(trim);
        } catch (Exception unused) {
            logger.warn("Unable to parse the integer system property '{}':{} - using the default value: {}", str, trim, Integer.valueOf(i2));
            return i2;
        }
    }

    public static long getLong(String str, long j4) {
        String str2 = get(str);
        if (str2 == null) {
            return j4;
        }
        String trim = str2.trim();
        try {
            return Long.parseLong(trim);
        } catch (Exception unused) {
            logger.warn("Unable to parse the long integer system property '{}':{} - using the default value: {}", str, trim, Long.valueOf(j4));
            return j4;
        }
    }

    public static String get(final String str, String str2) {
        ObjectUtil.checkNotNull(str, "key");
        if (!str.isEmpty()) {
            String str3 = null;
            try {
                if (System.getSecurityManager() == null) {
                    str = System.getProperty(str);
                    str3 = str;
                } else {
                    str3 = (String) AccessController.doPrivileged(new PrivilegedAction<String>() { // from class: io.netty.util.internal.SystemPropertyUtil.1
                        @Override // java.security.PrivilegedAction
                        public String run() {
                            return System.getProperty(str);
                        }
                    });
                }
            } catch (SecurityException e4) {
                logger.warn("Unable to retrieve a system property '{}'; default values will be used.", str, e4);
            }
            return str3 == null ? str2 : str3;
        }
        throw new IllegalArgumentException("key must not be empty.");
    }
}
