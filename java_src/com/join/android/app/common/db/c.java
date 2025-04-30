package com.join.android.app.common.db;

import com.j256.ormlite.android.apptools.OrmLiteConfigUtil;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;
import com.j256.ormlite.table.DatabaseTable;
import com.join.mgps.Util.g0;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DatabaseConfigUtil.java */
/* loaded from: classes.dex */
public class c extends OrmLiteConfigUtil {
    private static boolean classHasAnnotations(Class<?> cls) {
        Field[] declaredFields;
        while (cls != null) {
            if (cls.getAnnotation(DatabaseTable.class) != null) {
                return true;
            }
            try {
                for (Field field : cls.getDeclaredFields()) {
                    if (field.getAnnotation(DatabaseField.class) != null || field.getAnnotation(ForeignCollectionField.class) != null) {
                        return true;
                    }
                }
                try {
                    cls = cls.getSuperclass();
                } catch (Throwable th) {
                    System.err.println("Could not get super class for: " + cls);
                    System.err.println("     " + th);
                    return false;
                }
            } catch (Throwable th2) {
                System.err.println("Could not load get delcared fields from: " + cls);
                System.err.println("     " + th2);
            }
        }
        return false;
    }

    private static void findAnnotatedClasses(List<Class<?>> list, File file, int i2) throws SQLException, IOException {
        File[] listFiles;
        String name;
        Class<?>[] declaredClasses;
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                if (i2 < OrmLiteConfigUtil.maxFindSourceLevel) {
                    findAnnotatedClasses(list, file2, i2 + 1);
                }
            } else if (file2.getName().endsWith(".java")) {
                String packageOfClass = getPackageOfClass(file2);
                if (packageOfClass == null) {
                    System.err.println("Could not find package name for: " + file2);
                } else {
                    try {
                        Class<?> cls = Class.forName(packageOfClass + g0.f27568a + file2.getName().substring(0, name.length() - 5));
                        if (classHasAnnotations(cls)) {
                            list.add(cls);
                        }
                        try {
                            for (Class<?> cls2 : cls.getDeclaredClasses()) {
                                if (classHasAnnotations(cls2)) {
                                    list.add(cls2);
                                }
                            }
                        } catch (Throwable th) {
                            System.err.println("Could not load inner classes for: " + cls);
                            System.err.println("     " + th);
                        }
                    } catch (Throwable th2) {
                        System.err.println("Could not load class file for: " + file2);
                        System.err.println("     " + th2);
                    }
                }
            }
        }
    }

    private static String getPackageOfClass(File file) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return null;
                } else if (readLine.contains("package")) {
                    String[] split = readLine.split("[ \t;]");
                    if (split.length > 1 && split[0].equals("package")) {
                        return split[1];
                    }
                }
            } finally {
                bufferedReader.close();
            }
        }
    }

    public static void main(String[] strArr) throws SQLException, IOException {
        writeConfigFile("ormlite_config.txt");
    }

    public static void writeConfigFile(String str) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, new File("./app/src/main/java/com/github/snowdream/android/app/downloader"), 0);
        findAnnotatedClasses(arrayList, new File("./app/src/main/java/com/join/android/app/common/db"), 0);
        findAnnotatedClasses(arrayList, new File("./app/src/main/java/com/join/mgps/db/tables"), 0);
        writeConfigFile(str, (Class[]) arrayList.toArray(new Class[arrayList.size()]));
    }

    public static void writeConfigFile(String str, Class<?>[] clsArr) throws SQLException, IOException {
        File findRawDir = OrmLiteConfigUtil.findRawDir(new File(new File(g0.f27568a), "app/src/main"));
        if (findRawDir == null) {
            System.err.println("Could not find raw directory which is typically in the res directory");
        } else {
            OrmLiteConfigUtil.writeConfigFile(new File(findRawDir, str), clsArr);
        }
    }
}
