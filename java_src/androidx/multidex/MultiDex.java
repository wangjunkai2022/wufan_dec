package androidx.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.join.mgps.Util.g0;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import dalvik.system.DexFile;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipFile;
import m.a;
/* loaded from: classes.dex */
public final class MultiDex {

    /* renamed from: a  reason: collision with root package name */
    static final String f6611a = "MultiDex";

    /* renamed from: b  reason: collision with root package name */
    private static final String f6612b = "secondary-dexes";

    /* renamed from: c  reason: collision with root package name */
    private static final String f6613c = "code_cache";

    /* renamed from: d  reason: collision with root package name */
    private static final String f6614d = "secondary-dexes";

    /* renamed from: e  reason: collision with root package name */
    private static final int f6615e = 20;

    /* renamed from: f  reason: collision with root package name */
    private static final int f6616f = 4;

    /* renamed from: g  reason: collision with root package name */
    private static final int f6617g = 2;

    /* renamed from: h  reason: collision with root package name */
    private static final int f6618h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final String f6619i = "";

    /* renamed from: j  reason: collision with root package name */
    private static final Set<File> f6620j = new HashSet();

    /* renamed from: k  reason: collision with root package name */
    private static final boolean f6621k = m(System.getProperty("java.vm.version"));

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class V14 {

        /* renamed from: b  reason: collision with root package name */
        private static final int f6622b = 4;

        /* renamed from: a  reason: collision with root package name */
        private final ElementConstructor f6623a;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public interface ElementConstructor {
            Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException;
        }

        /* loaded from: classes.dex */
        private static class ICSElementConstructor implements ElementConstructor {

            /* renamed from: a  reason: collision with root package name */
            private final Constructor<?> f6624a;

            ICSElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f6624a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException {
                return this.f6624a.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* loaded from: classes.dex */
        private static class JBMR11ElementConstructor implements ElementConstructor {

            /* renamed from: a  reason: collision with root package name */
            private final Constructor<?> f6625a;

            JBMR11ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f6625a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.f6625a.newInstance(file, file, dexFile);
            }
        }

        /* loaded from: classes.dex */
        private static class JBMR2ElementConstructor implements ElementConstructor {

            /* renamed from: a  reason: collision with root package name */
            private final Constructor<?> f6626a;

            JBMR2ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f6626a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.f6626a.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        private V14() throws ClassNotFoundException, SecurityException, NoSuchMethodException {
            ElementConstructor jBMR2ElementConstructor;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                try {
                    jBMR2ElementConstructor = new ICSElementConstructor(cls);
                } catch (NoSuchMethodException unused) {
                    jBMR2ElementConstructor = new JBMR11ElementConstructor(cls);
                }
            } catch (NoSuchMethodException unused2) {
                jBMR2ElementConstructor = new JBMR2ElementConstructor(cls);
            }
            this.f6623a = jBMR2ElementConstructor;
        }

        static void a(ClassLoader classLoader, List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchFieldException {
            Object obj = MultiDex.g(classLoader, "pathList").get(classLoader);
            Object[] b4 = new V14().b(list);
            try {
                MultiDex.f(obj, "dexElements", b4);
            } catch (NoSuchFieldException unused) {
                MultiDex.f(obj, "pathElements", b4);
            }
        }

        private Object[] b(List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i2 = 0; i2 < size; i2++) {
                File file = list.get(i2);
                objArr[i2] = this.f6623a.newInstance(file, DexFile.loadDex(file.getPath(), c(file), 0));
            }
            return objArr;
        }

        private static String c(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f6622b) + ".dex").getPath();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class V19 {
        private V19() {
        }

        static void a(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
            IOException[] iOExceptionArr;
            Object obj = MultiDex.g(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            MultiDex.f(obj, "dexElements", b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    IOException iOException = (IOException) it2.next();
                }
                Field g4 = MultiDex.g(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) g4.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                g4.set(obj, iOExceptionArr);
                IOException iOException2 = new IOException("I/O exception during makeDexElement");
                iOException2.initCause((Throwable) arrayList.get(0));
                throw iOException2;
            }
        }

        private static Object[] b(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            return (Object[]) MultiDex.h(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class V4 {
        private V4() {
        }

        static void a(ClassLoader classLoader, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int size = list.size();
            Field g4 = MultiDex.g(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) g4.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File next = listIterator.next();
                String absolutePath = next.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = next;
                zipFileArr[previousIndex] = new ZipFile(next);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            g4.set(classLoader, sb.toString());
            MultiDex.f(classLoader, "mPaths", strArr);
            MultiDex.f(classLoader, "mFiles", fileArr);
            MultiDex.f(classLoader, "mZips", zipFileArr);
            MultiDex.f(classLoader, "mDexs", dexFileArr);
        }
    }

    private MultiDex() {
    }

    private static void d(Context context) throws Exception {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Clearing old secondary dex dir (");
            sb.append(file.getPath());
            sb.append(").");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to list secondary dex dir content (");
                sb2.append(file.getPath());
                sb2.append(").");
                return;
            }
            for (File file2 : listFiles) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Trying to delete old file ");
                sb3.append(file2.getPath());
                sb3.append(" of size ");
                sb3.append(file2.length());
                if (!file2.delete()) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Failed to delete old file ");
                    sb4.append(file2.getPath());
                } else {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Deleted old file ");
                    sb5.append(file2.getPath());
                }
            }
            if (!file.delete()) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append("Failed to delete secondary dex dir ");
                sb6.append(file.getPath());
                return;
            }
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Deleted old secondary dex dir ");
            sb7.append(file.getPath());
        }
    }

    private static void e(Context context, File file, File file2, String str, String str2, boolean z3) throws IOException, IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, SecurityException, ClassNotFoundException, InstantiationException {
        Set<File> set = f6620j;
        synchronized (set) {
            if (set.contains(file)) {
                return;
            }
            set.add(file);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 > 20) {
                StringBuilder sb = new StringBuilder();
                sb.append("MultiDex is not guaranteed to work in SDK version ");
                sb.append(i2);
                sb.append(": SDK version higher than ");
                sb.append(20);
                sb.append(" should be backed by ");
                sb.append("runtime with built-in multidex capabilty but it's not the ");
                sb.append("case here: java.vm.version=\"");
                sb.append(System.getProperty("java.vm.version"));
                sb.append(a.f72569g);
            }
            ClassLoader j4 = j(context);
            if (j4 == null) {
                return;
            }
            try {
                d(context);
            } catch (Throwable unused) {
            }
            File k4 = k(context, file2, str);
            MultiDexExtractor multiDexExtractor = new MultiDexExtractor(file, k4);
            IOException e4 = null;
            try {
                l(j4, k4, multiDexExtractor.k(context, str2, false));
            } catch (IOException e5) {
                if (z3) {
                    l(j4, k4, multiDexExtractor.k(context, str2, true));
                } else {
                    throw e5;
                }
            }
            try {
                multiDexExtractor.close();
            } catch (IOException e6) {
                e4 = e6;
            }
            if (e4 != null) {
                throw e4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field g4 = g(obj, str);
        Object[] objArr2 = (Object[]) g4.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        g4.set(obj, objArr3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Field g(Object obj, String str) throws NoSuchFieldException {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Method h(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    private static ApplicationInfo i(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static void install(Context context) {
        if (f6621k) {
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 4) {
            try {
                ApplicationInfo i4 = i(context);
                if (i4 == null) {
                    return;
                }
                e(context, new File(i4.sourceDir), new File(i4.dataDir), "secondary-dexes", "", true);
                return;
            } catch (Exception e4) {
                throw new RuntimeException("MultiDex installation failed (" + e4.getMessage() + ").");
            }
        }
        throw new RuntimeException("MultiDex installation failed. SDK " + i2 + " is unsupported. Min SDK version is 4" + g0.f27568a);
    }

    public static void installInstrumentation(Context context, Context context2) {
        ApplicationInfo i2;
        if (f6621k) {
            return;
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 4) {
            try {
                ApplicationInfo i5 = i(context);
                if (i5 == null || (i2 = i(context2)) == null) {
                    return;
                }
                String str = context.getPackageName() + g0.f27568a;
                File file = new File(i2.dataDir);
                e(context2, new File(i5.sourceDir), file, str + "secondary-dexes", str, false);
                e(context2, new File(i2.sourceDir), file, "secondary-dexes", "", false);
                return;
            } catch (Exception e4) {
                throw new RuntimeException("MultiDex installation failed (" + e4.getMessage() + ").");
            }
        }
        throw new RuntimeException("MultiDex installation failed. SDK " + i4 + " is unsupported. Min SDK version is 4" + g0.f27568a);
    }

    private static ClassLoader j(Context context) {
        try {
            ClassLoader classLoader = context.getClassLoader();
            if (Build.VERSION.SDK_INT >= 14) {
                if (classLoader instanceof BaseDexClassLoader) {
                    return classLoader;
                }
            } else if ((classLoader instanceof DexClassLoader) || (classLoader instanceof PathClassLoader)) {
                return classLoader;
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    private static File k(Context context, File file, String str) throws IOException {
        File file2 = new File(file, f6613c);
        try {
            n(file2);
        } catch (IOException unused) {
            file2 = new File(context.getFilesDir(), f6613c);
            n(file2);
        }
        File file3 = new File(file2, str);
        n(file3);
        return file3;
    }

    private static void l(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException, SecurityException, ClassNotFoundException, InstantiationException {
        if (list.isEmpty()) {
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            V19.a(classLoader, list, file);
        } else if (i2 >= 14) {
            V14.a(classLoader, list);
        } else {
            V4.a(classLoader, list);
        }
    }

    static boolean m(String str) {
        boolean z3 = false;
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, g0.f27568a);
            String nextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (nextToken != null && nextToken2 != null) {
                try {
                    int parseInt = Integer.parseInt(nextToken);
                    int parseInt2 = Integer.parseInt(nextToken2);
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z3 = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("VM with version ");
        sb.append(str);
        sb.append(z3 ? " has multidex support" : " does not have multidex support");
        return z3;
    }

    private static void n(File file) throws IOException {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to create dir ");
            sb.append(file.getPath());
            sb.append(". Parent file is null.");
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to create dir ");
            sb2.append(file.getPath());
            sb2.append(". parent file is a dir ");
            sb2.append(parentFile.isDirectory());
            sb2.append(", a file ");
            sb2.append(parentFile.isFile());
            sb2.append(", exists ");
            sb2.append(parentFile.exists());
            sb2.append(", readable ");
            sb2.append(parentFile.canRead());
            sb2.append(", writable ");
            sb2.append(parentFile.canWrite());
        }
        throw new IOException("Failed to create directory " + file.getPath());
    }
}
