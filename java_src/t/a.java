package t;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
/* loaded from: classes2.dex */
public final class a {
    private static void a(String str, String str2) {
        FileWriter fileWriter;
        Throwable th;
        File file = new File(str);
        FileWriter fileWriter2 = null;
        try {
            fileWriter = new FileWriter(file, false);
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
                try {
                    fileWriter2.close();
                } catch (IOException unused4) {
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (fileWriter != null) {
                try {
                    fileWriter.close();
                } catch (IOException unused5) {
                }
            }
            throw th;
        }
    }

    public static boolean b(String str) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(str.charAt(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String c(String str) {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
        } catch (IOException unused) {
        } catch (Throwable th) {
            th = th;
        }
        if (new File(str).exists()) {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(str), "UTF-8"));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                } catch (IOException unused2) {
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    return sb.toString();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    throw th;
                }
            }
            bufferedReader2.close();
            return sb.toString();
        }
        return null;
    }
}
