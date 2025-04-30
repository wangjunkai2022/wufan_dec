package com.swift.sandhook.utils;

import android.os.Build;
import android.system.Os;
import android.text.TextUtils;
import com.swift.sandhook.HookLog;
import com.swift.sandhook.SandHookConfig;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public class FileUtils {
    public static final boolean IS_USING_PROTECTED_STORAGE;

    /* loaded from: classes4.dex */
    public interface FileMode {
        public static final int MODE_755 = 493;
        public static final int MODE_IRGRP = 32;
        public static final int MODE_IROTH = 4;
        public static final int MODE_IRUSR = 256;
        public static final int MODE_ISGID = 1024;
        public static final int MODE_ISUID = 2048;
        public static final int MODE_ISVTX = 512;
        public static final int MODE_IWGRP = 16;
        public static final int MODE_IWOTH = 2;
        public static final int MODE_IWUSR = 128;
        public static final int MODE_IXGRP = 8;
        public static final int MODE_IXOTH = 1;
        public static final int MODE_IXUSR = 64;
    }

    static {
        IS_USING_PROTECTED_STORAGE = Build.VERSION.SDK_INT >= 24;
    }

    public static void chmod(String path, int mode) throws Exception {
        if (SandHookConfig.SDK_INT >= 21) {
            try {
                Os.chmod(path, mode);
                return;
            } catch (Exception unused) {
            }
        }
        String str = "chmod ";
        if (new File(path).isDirectory()) {
            str = "chmod  -R ";
        }
        String format = String.format("%o", Integer.valueOf(mode));
        Runtime.getRuntime().exec(str + format + " " + path).waitFor();
    }

    public static void delete(File file) throws IOException {
        File[] listFiles;
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                delete(file2);
            } else if (!file2.delete()) {
                throw new IOException();
            }
        }
        if (!file.delete()) {
            throw new IOException();
        }
    }

    public static String getDataPathPrefix() {
        return IS_USING_PROTECTED_STORAGE ? "/data/user_de/0/" : "/data/data/";
    }

    public static String getPackageName(String dataDir) {
        if (TextUtils.isEmpty(dataDir)) {
            HookLog.e("getPackageName using empty dataDir");
            return "";
        }
        int lastIndexOf = dataDir.lastIndexOf(e.F0);
        return lastIndexOf < 0 ? dataDir : dataDir.substring(lastIndexOf + 1);
    }

    public static String readLine(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            return readLine;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static void writeLine(File file, String line) {
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            bufferedWriter.write(line);
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (Throwable th) {
            HookLog.e("error writing line to file " + file + ": " + th.getMessage());
        }
    }
}
