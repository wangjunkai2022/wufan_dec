package com.j256.ormlite.android.apptools;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.db.SqliteAndroidDatabaseType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.ForeignCollectionField;
import com.j256.ormlite.table.DatabaseTable;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import com.join.mgps.Util.g0;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public class OrmLiteConfigUtil {
    protected static final String RAW_DIR_NAME = "raw";
    protected static final String RESOURCE_DIR_NAME = "res";
    private static final DatabaseType databaseType = new SqliteAndroidDatabaseType();
    protected static int maxFindSourceLevel = 20;

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
                if (i2 < maxFindSourceLevel) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public static File findRawDir(File file) {
        for (int i2 = 0; file != null && i2 < 20; i2++) {
            File findResRawDir = findResRawDir(file);
            if (findResRawDir != null) {
                return findResRawDir;
            }
            file = file.getParentFile();
        }
        return null;
    }

    private static File findResRawDir(File file) {
        File[] listFiles;
        for (File file2 : file.listFiles()) {
            if (file2.getName().equals("res") && file2.isDirectory()) {
                File[] listFiles2 = file2.listFiles(new FileFilter() { // from class: com.j256.ormlite.android.apptools.OrmLiteConfigUtil.1
                    @Override // java.io.FileFilter
                    public boolean accept(File file3) {
                        return file3.getName().equals(OrmLiteConfigUtil.RAW_DIR_NAME) && file3.isDirectory();
                    }
                });
                if (listFiles2.length == 1) {
                    return listFiles2[0];
                }
            }
        }
        return null;
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

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 1) {
            writeConfigFile(strArr[0]);
            return;
        }
        throw new IllegalArgumentException("Main can take a single file-name argument.");
    }

    public static void writeConfigFile(String str) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, new File(g0.f27568a), 0);
        writeConfigFile(str, (Class[]) arrayList.toArray(new Class[arrayList.size()]));
    }

    private static void writeConfigForTable(BufferedWriter bufferedWriter, Class<?> cls) throws SQLException, IOException {
        String extractTableName = DatabaseTableConfig.extractTableName(cls);
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                for (Field field : cls2.getDeclaredFields()) {
                    DatabaseFieldConfig fromField = DatabaseFieldConfig.fromField(databaseType, extractTableName, field);
                    if (fromField != null) {
                        arrayList.add(fromField);
                    }
                }
            } catch (Error e4) {
                System.err.println("Skipping " + cls + " because we got an error finding its definition: " + e4.getMessage());
                return;
            }
        }
        if (arrayList.isEmpty()) {
            System.out.println("Skipping " + cls + " because no annotated fields found");
            return;
        }
        DatabaseTableConfigLoader.write(bufferedWriter, new DatabaseTableConfig(cls, extractTableName, arrayList));
        bufferedWriter.append("#################################");
        bufferedWriter.newLine();
        System.out.println("Wrote config for " + cls);
    }

    private static void writeHeader(BufferedWriter bufferedWriter) throws IOException {
        bufferedWriter.append('#');
        bufferedWriter.newLine();
        bufferedWriter.append("# generated on ").append((CharSequence) new SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(new Date()));
        bufferedWriter.newLine();
        bufferedWriter.append('#');
        bufferedWriter.newLine();
    }

    public static void writeConfigFile(String str, Class<?>[] clsArr) throws SQLException, IOException {
        File findRawDir = findRawDir(new File(g0.f27568a));
        if (findRawDir == null) {
            System.err.println("Could not find raw directory which is typically in the res directory");
        } else {
            writeConfigFile(new File(findRawDir, str), clsArr);
        }
    }

    public static void writeConfigFile(File file) throws SQLException, IOException {
        writeConfigFile(file, new File(g0.f27568a));
    }

    public static void writeConfigFile(File file, File file2) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, file2, 0);
        writeConfigFile(file, (Class[]) arrayList.toArray(new Class[arrayList.size()]));
    }

    public static void writeConfigFile(File file, Class<?>[] clsArr) throws SQLException, IOException {
        PrintStream printStream = System.out;
        printStream.println("Writing configurations to " + file.getAbsolutePath());
        writeConfigFile(new FileOutputStream(file), clsArr);
    }

    public static void writeConfigFile(OutputStream outputStream, File file) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, file, 0);
        writeConfigFile(outputStream, (Class[]) arrayList.toArray(new Class[arrayList.size()]));
    }

    public static void writeConfigFile(OutputStream outputStream, Class<?>[] clsArr) throws SQLException, IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 4096);
        try {
            writeHeader(bufferedWriter);
            for (Class<?> cls : clsArr) {
                writeConfigForTable(bufferedWriter, cls);
            }
            System.out.println("Done.");
        } finally {
            bufferedWriter.close();
        }
    }
}
