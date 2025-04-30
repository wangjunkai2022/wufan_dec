package com.papa91.arc.util;

import com.join.mgps.Util.g0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public class FileUtils {
    public static boolean copyFile(String str, String str2) {
        try {
            File file = new File(str);
            if (!file.exists() || !file.isFile() || !file.canRead()) {
                return false;
            }
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (-1 != read) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return true;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean copyFolder(String str, String str2) {
        File file;
        try {
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            String[] list = new File(str).list();
            if (list != null) {
                for (String str3 : list) {
                    String str4 = File.separator;
                    if (str.endsWith(str4)) {
                        file = new File(str + str3);
                    } else {
                        file = new File(str + str4 + str3);
                    }
                    if (file.isDirectory()) {
                        copyFolder(str + e.F0 + str3, str2 + e.F0 + str3);
                    } else if (!file.exists() || !file.isFile() || !file.canRead()) {
                        return false;
                    } else {
                        if (new File(str2 + e.F0 + file.getName()).exists()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("copyFolder:  new file exist, replace=");
                            sb.append(false);
                        } else {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            FileOutputStream fileOutputStream = new FileOutputStream(str2 + e.F0 + file.getName());
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                            fileInputStream.close();
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        }
                    }
                }
                return true;
            }
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean deleteDirs(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    return false;
                }
                boolean z3 = true;
                for (File file2 : listFiles) {
                    z3 = z3 && deleteDirs(file2.getAbsolutePath());
                }
                try {
                    return z3 && file.delete();
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            try {
                return file.delete();
            } catch (Exception e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return true;
    }

    public static long fileSize(String str) {
        File[] listFiles;
        long length;
        File file = new File(str);
        long j4 = 0;
        if (file.exists()) {
            try {
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (file.isFile()) {
                return file.length();
            }
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    length = fileSize(file2.getAbsolutePath());
                } else if (file2.exists()) {
                    length = file2.length();
                }
                j4 += length;
            }
            return j4;
        }
        return 0L;
    }

    public static FilenameFilter getSlotFilter() {
        return new FilenameFilter() { // from class: com.papa91.arc.util.FileUtils.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (str.contains(g0.f27568a)) {
                    return isNumeric(str.substring(str.lastIndexOf(g0.f27568a) + 1));
                }
                return false;
            }

            public boolean isNumeric(String str) {
                return Pattern.compile("[0-9]*").matcher(str).matches();
            }
        };
    }

    public static boolean copyFolder(String str, String str2, String[] strArr) {
        File file;
        try {
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            String[] list = new File(str).list();
            if (list != null) {
                for (String str3 : list) {
                    String str4 = File.separator;
                    if (str.endsWith(str4)) {
                        file = new File(str + str3);
                    } else {
                        file = new File(str + str4 + str3);
                    }
                    if (file.isDirectory()) {
                        copyFolder(str + e.F0 + str3, str2 + e.F0 + str3);
                    } else if (!file.exists() || !file.isFile() || !file.canRead()) {
                        return false;
                    } else {
                        if (new File(str2 + e.F0 + file.getName()).exists()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("copyFolder:  new file exist, replace=");
                            sb.append(false);
                        } else {
                            if (strArr != null && strArr.length > 0) {
                                List asList = Arrays.asList(strArr);
                                String name = file.getName();
                                if (!asList.contains(name.substring(name.lastIndexOf(g0.f27568a)))) {
                                }
                            }
                            FileInputStream fileInputStream = new FileInputStream(file);
                            FileOutputStream fileOutputStream = new FileOutputStream(str2 + e.F0 + file.getName());
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                            fileInputStream.close();
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        }
                    }
                }
                return true;
            }
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }
}
