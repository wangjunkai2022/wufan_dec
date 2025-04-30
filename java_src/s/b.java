package s;

import android.os.Environment;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class b {
    public static String a(String str) {
        try {
            if (c()) {
                File file = new File(Environment.getExternalStorageDirectory(), str);
                if (file.exists()) {
                    return t.a.c(file.getAbsolutePath());
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static void b(String str, String str2) {
        FileWriter fileWriter;
        Throwable th;
        try {
            if (c()) {
                File file = new File(Environment.getExternalStorageDirectory(), str);
                if (!file.exists()) {
                    file.getParentFile().mkdirs();
                }
                FileWriter fileWriter2 = null;
                try {
                    fileWriter = new FileWriter(new File(file.getAbsolutePath()), false);
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    fileWriter = null;
                    th = th2;
                }
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
                } catch (Throwable th3) {
                    th = th3;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException | Exception unused5) {
        }
    }

    public static boolean c() {
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState == null || externalStorageState.length() <= 0) {
            return false;
        }
        return (externalStorageState.equals("mounted") || externalStorageState.equals("mounted_ro")) && Environment.getExternalStorageDirectory() != null;
    }
}
