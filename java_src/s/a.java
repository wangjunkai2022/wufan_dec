package s;

import android.os.Environment;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class a {
    public static String a(String str) {
        String str2;
        try {
            str2 = System.getProperty(str);
        } catch (Throwable unused) {
            str2 = "";
        }
        if (t.a.b(str2)) {
            return b.a(".SystemConfig" + File.separator + str);
        }
        return str2;
    }

    public static void b(String str, String str2) {
        FileWriter fileWriter;
        Throwable th;
        try {
            if (!t.a.b(str2)) {
                System.setProperty(str, str2);
            }
        } catch (Throwable unused) {
        }
        if (!b.c()) {
            return;
        }
        String str3 = ".SystemConfig" + File.separator + str;
        try {
            if (!b.c()) {
                return;
            }
            File file = new File(Environment.getExternalStorageDirectory(), str3);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
            }
            FileWriter fileWriter2 = null;
            try {
                fileWriter = new FileWriter(new File(file.getAbsolutePath()), false);
                try {
                    fileWriter.write(str2);
                    try {
                        fileWriter.close();
                    } catch (IOException unused2) {
                    }
                } catch (Exception unused3) {
                    fileWriter2 = fileWriter;
                    if (fileWriter2 != null) {
                        fileWriter2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused5) {
            } catch (Throwable th3) {
                fileWriter = null;
                th = th3;
            }
        } catch (IOException | Exception unused6) {
        }
    }
}
