package com.swift.sandhook.xposedcompat.utils;

import android.os.Build;
import android.text.TextUtils;
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

    static {
        IS_USING_PROTECTED_STORAGE = Build.VERSION.SDK_INT >= 24;
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
            DexLog.e("getPackageName using empty dataDir");
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
            DexLog.e("error writing line to file " + file + ": " + th.getMessage());
        }
    }
}
