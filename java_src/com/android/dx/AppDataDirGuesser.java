package com.android.dx;

import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
/* loaded from: classes2.dex */
class AppDataDirGuesser {
    public static final int PER_USER_RANGE = 100000;

    private String getPathFromThisClassLoader(ClassLoader classLoader, Class<?> pathClassLoaderClass) {
        try {
            Field declaredField = pathClassLoaderClass.getDeclaredField("path");
            declaredField.setAccessible(true);
            return (String) declaredField.get(classLoader);
        } catch (ClassCastException | IllegalAccessException | NoSuchFieldException unused) {
            return processClassLoaderString(classLoader.toString());
        }
    }

    private File getWriteableDirectory(String pathName) {
        File file = new File(pathName);
        if (isWriteableDirectory(file)) {
            return file;
        }
        return null;
    }

    private ClassLoader guessSuitableClassLoader() {
        return AppDataDirGuesser.class.getClassLoader();
    }

    static String processClassLoaderString(String input) {
        if (input.contains("DexPathList")) {
            return processClassLoaderString43OrLater(input);
        }
        return processClassLoaderString42OrEarlier(input);
    }

    private static String processClassLoaderString42OrEarlier(String input) {
        int lastIndexOf = input.lastIndexOf(91);
        if (lastIndexOf != -1) {
            input = input.substring(lastIndexOf + 1);
        }
        int indexOf = input.indexOf(93);
        return indexOf == -1 ? input : input.substring(0, indexOf);
    }

    private static String processClassLoaderString43OrLater(String input) {
        int indexOf = input.indexOf("DexPathList") + 11;
        if (input.length() > indexOf + 4) {
            String substring = input.substring(indexOf);
            int indexOf2 = substring.indexOf(93);
            if (substring.charAt(0) == '[' && substring.charAt(1) == '[' && indexOf2 >= 0) {
                String[] split = substring.substring(2, indexOf2).split(",");
                for (int i2 = 0; i2 < split.length; i2++) {
                    int indexOf3 = split[i2].indexOf(34);
                    int lastIndexOf = split[i2].lastIndexOf(34);
                    if (indexOf3 > 0 && indexOf3 < lastIndexOf) {
                        split[i2] = split[i2].substring(indexOf3 + 1, lastIndexOf);
                    }
                }
                StringBuilder sb = new StringBuilder();
                for (String str : split) {
                    if (sb.length() > 0) {
                        sb.append(':');
                    }
                    sb.append(str);
                }
                return sb.toString();
            }
            return input;
        }
        return input;
    }

    static String[] splitPathList(String input) {
        if (input.startsWith("dexPath=")) {
            int indexOf = input.indexOf(44);
            input = indexOf == -1 ? input.substring(8) : input.substring(8, indexOf);
        }
        return input.split(":");
    }

    boolean fileOrDirExists(File file) {
        return file.exists();
    }

    Integer getProcessUid() {
        try {
            return (Integer) Class.forName("android.os.Process").getMethod("myUid", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public File guess() {
        try {
            ClassLoader guessSuitableClassLoader = guessSuitableClassLoader();
            Class<?> cls = Class.forName("dalvik.system.PathClassLoader");
            cls.cast(guessSuitableClassLoader);
            File[] guessPath = guessPath(getPathFromThisClassLoader(guessSuitableClassLoader, cls));
            if (guessPath.length > 0) {
                return guessPath[0];
            }
            return null;
        } catch (ClassCastException | ClassNotFoundException unused) {
            return null;
        }
    }

    File[] guessPath(String input) {
        String[] splitPathList;
        int lastIndexOf;
        ArrayList arrayList = new ArrayList();
        for (String str : splitPathList(input)) {
            if (str.startsWith("/data/app/") && (lastIndexOf = str.lastIndexOf(".apk")) == str.length() - 4) {
                int indexOf = str.indexOf("-");
                if (indexOf != -1) {
                    lastIndexOf = indexOf;
                }
                String substring = str.substring(10, lastIndexOf);
                File writeableDirectory = getWriteableDirectory("/data/data/" + substring);
                if (writeableDirectory == null) {
                    writeableDirectory = guessUserDataDirectory(substring);
                }
                if (writeableDirectory != null) {
                    File file = new File(writeableDirectory, "cache");
                    if ((fileOrDirExists(file) || file.mkdir()) && isWriteableDirectory(file)) {
                        arrayList.add(file);
                    }
                }
            }
        }
        return (File[]) arrayList.toArray(new File[arrayList.size()]);
    }

    File guessUserDataDirectory(String packageName) {
        Integer processUid = getProcessUid();
        if (processUid == null) {
            return null;
        }
        return getWriteableDirectory(String.format("/data/user/%d/%s", Integer.valueOf(processUid.intValue() / 100000), packageName));
    }

    boolean isWriteableDirectory(File file) {
        return file.isDirectory() && file.canWrite();
    }
}
