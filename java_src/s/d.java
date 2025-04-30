package s;
/* loaded from: classes2.dex */
public final class d {
    private static String a(String str) {
        return System.getProperty(str);
    }

    private static void b(String str, String str2) {
        if (t.a.b(str2)) {
            return;
        }
        System.setProperty(str, str2);
    }
}
