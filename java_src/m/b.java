package m;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.data.c;
import com.xinzhu.overmind.utils.t;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f72579b;

    /* renamed from: a  reason: collision with root package name */
    public Context f72580a;

    private b() {
    }

    private static String a(String[] strArr) {
        Process process;
        String str = "";
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(strArr);
            processBuilder.redirectErrorStream(false);
            process = processBuilder.start();
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(process.getOutputStream());
                str = new DataInputStream(process.getInputStream()).readLine();
                dataOutputStream.writeBytes(t.f64784c);
                dataOutputStream.flush();
                process.waitFor();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            process = null;
        }
        try {
            process.destroy();
        } catch (Exception unused3) {
            return str;
        }
    }

    public static b b() {
        if (f72579b == null) {
            f72579b = new b();
        }
        return f72579b;
    }

    public static boolean d() {
        String[] strArr = {"/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        for (int i2 = 0; i2 < 5; i2++) {
            try {
                String str = strArr[i2] + t.f64782a;
                if (new File(str).exists()) {
                    String a4 = a(new String[]{"ls", "-l", str});
                    if (!TextUtils.isEmpty(a4)) {
                        if (a4.indexOf("root") != a4.lastIndexOf("root")) {
                            return true;
                        }
                    }
                    return false;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private Context f() {
        return this.f72580a;
    }

    private static c g() {
        return c.a();
    }

    public final void c(Context context) {
        this.f72580a = context.getApplicationContext();
    }

    public final String e() {
        try {
            return com.ta.utdid2.device.c.a(this.f72580a);
        } catch (Throwable unused) {
            return "";
        }
    }
}
