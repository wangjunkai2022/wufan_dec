package androidx.core.content;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.ArrayList;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public final class MimeTypeFilter {
    private MimeTypeFilter() {
    }

    private static boolean a(@NonNull String[] strArr, @NonNull String[] strArr2) {
        if (strArr2.length == 2) {
            if (!strArr2[0].isEmpty() && !strArr2[1].isEmpty()) {
                if (strArr.length != 2) {
                    return false;
                }
                if (WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD.equals(strArr2[0]) || strArr2[0].equals(strArr[0])) {
                    return WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD.equals(strArr2[1]) || strArr2[1].equals(strArr[1]);
                }
                return false;
            }
            throw new IllegalArgumentException("Ill-formatted MIME type filter. Type or subtype empty.");
        }
        throw new IllegalArgumentException("Ill-formatted MIME type filter. Must be type/subtype.");
    }

    public static boolean matches(@Nullable String str, @NonNull String str2) {
        if (str == null) {
            return false;
        }
        return a(str.split(e.F0), str2.split(e.F0));
    }

    @NonNull
    public static String[] matchesMany(@Nullable String[] strArr, @NonNull String str) {
        if (strArr == null) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        String[] split = str.split(e.F0);
        for (String str2 : strArr) {
            if (a(str2.split(e.F0), split)) {
                arrayList.add(str2);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Nullable
    public static String matches(@Nullable String str, @NonNull String[] strArr) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(e.F0);
        for (String str2 : strArr) {
            if (a(split, str2.split(e.F0))) {
                return str2;
            }
        }
        return null;
    }

    @Nullable
    public static String matches(@Nullable String[] strArr, @NonNull String str) {
        if (strArr == null) {
            return null;
        }
        String[] split = str.split(e.F0);
        for (String str2 : strArr) {
            if (a(str2.split(e.F0), split)) {
                return str2;
            }
        }
        return null;
    }
}
