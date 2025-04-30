package com.android.dx;

import com.android.dex.DexFormat;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.code.RopTranslator;
import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.dex.file.DexFile;
import com.android.dx.dex.file.EncodedField;
import com.android.dx.dex.file.EncodedMethod;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
/* loaded from: classes2.dex */
public final class DexMaker {
    private static boolean didWarnBlacklistedMethods;
    private static boolean didWarnNonBaseDexClassLoader;
    private boolean markAsTrusted;
    private DexFile outputDex;
    private ClassLoader sharedClassLoader;
    private final Map<TypeId<?>, TypeDeclaration> types = new LinkedHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class FieldDeclaration {
        private final int accessFlags;
        final FieldId<?, ?> fieldId;
        private final Object staticValue;

        FieldDeclaration(FieldId<?, ?> fieldId, int accessFlags, Object staticValue) {
            if ((accessFlags & 8) == 0 && staticValue != null) {
                throw new IllegalArgumentException("instance fields may not have a value");
            }
            this.fieldId = fieldId;
            this.accessFlags = accessFlags;
            this.staticValue = staticValue;
        }

        public boolean isStatic() {
            return (this.accessFlags & 8) != 0;
        }

        EncodedField toEncodedField() {
            return new EncodedField(this.fieldId.constant, this.accessFlags);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class MethodDeclaration {
        private final Code code = new Code(this);
        private final int flags;
        final MethodId<?, ?> method;

        public MethodDeclaration(MethodId<?, ?> method, int flags) {
            this.method = method;
            this.flags = flags;
        }

        boolean isDirect() {
            return (this.flags & 65546) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isStatic() {
            return (this.flags & 8) != 0;
        }

        EncodedMethod toEncodedMethod(DexOptions dexOptions) {
            return new EncodedMethod(this.method.constant, this.flags, RopTranslator.translate(new RopMethod(this.code.toBasicBlocks(), 0), 1, null, this.code.paramSize(), dexOptions), StdTypeList.EMPTY);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class TypeDeclaration {
        private ClassDefItem classDefItem;
        private boolean declared;
        private int flags;
        private TypeList interfaces;
        private String sourceFile;
        private TypeId<?> supertype;
        private final TypeId<?> type;
        private final Map<FieldId, FieldDeclaration> fields = new LinkedHashMap();
        private final Map<MethodId, MethodDeclaration> methods = new LinkedHashMap();

        TypeDeclaration(TypeId<?> type) {
            this.type = type;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ClassDefItem toClassDefItem() {
            if (this.declared) {
                DexOptions dexOptions = new DexOptions();
                dexOptions.minSdkVersion = 13;
                CstType cstType = this.type.constant;
                if (this.classDefItem == null) {
                    this.classDefItem = new ClassDefItem(cstType, this.flags, this.supertype.constant, this.interfaces.ropTypes, new CstString(this.sourceFile));
                    for (MethodDeclaration methodDeclaration : this.methods.values()) {
                        EncodedMethod encodedMethod = methodDeclaration.toEncodedMethod(dexOptions);
                        if (methodDeclaration.isDirect()) {
                            this.classDefItem.addDirectMethod(encodedMethod);
                        } else {
                            this.classDefItem.addVirtualMethod(encodedMethod);
                        }
                    }
                    for (FieldDeclaration fieldDeclaration : this.fields.values()) {
                        EncodedField encodedField = fieldDeclaration.toEncodedField();
                        if (fieldDeclaration.isStatic()) {
                            this.classDefItem.addStaticField(encodedField, Constants.getConstant(fieldDeclaration.staticValue));
                        } else {
                            this.classDefItem.addInstanceField(encodedField);
                        }
                    }
                }
                return this.classDefItem;
            }
            throw new IllegalStateException("Undeclared type " + this.type + " declares members: " + this.fields.keySet() + " " + this.methods.keySet());
        }
    }

    private void doDeleteOatFiles(File dir, String nameStart) {
        File[] listFiles;
        if (dir.exists() && (listFiles = dir.listFiles()) != null) {
            for (File file : listFiles) {
                if (file.isFile() && file.getName().startsWith(nameStart)) {
                    file.delete();
                }
            }
        }
    }

    private ClassLoader generateClassLoader(File result, File dexCache, ClassLoader parent) {
        try {
            try {
                ClassLoader classLoader = this.sharedClassLoader;
                boolean z3 = classLoader != null;
                ClassLoader classLoader2 = parent != null ? parent : classLoader != null ? classLoader : null;
                Class<?> cls = Class.forName("dalvik.system.BaseDexClassLoader");
                if (z3 && !cls.isAssignableFrom(classLoader2.getClass())) {
                    if (!classLoader2.getClass().getName().equals("java.lang.BootClassLoader") && !didWarnNonBaseDexClassLoader) {
                        PrintStream printStream = System.err;
                        printStream.println("Cannot share classloader as shared classloader '" + classLoader2 + "' is not a subclass of '" + cls + "'");
                        didWarnNonBaseDexClassLoader = true;
                    }
                    z3 = false;
                }
                if (this.markAsTrusted) {
                    try {
                        if (z3) {
                            classLoader2.getClass().getMethod("addDexPath", String.class, Boolean.TYPE).invoke(classLoader2, result.getPath(), Boolean.TRUE);
                            return classLoader2;
                        }
                        return (ClassLoader) cls.getConstructor(String.class, File.class, String.class, ClassLoader.class, Boolean.TYPE).newInstance(result.getPath(), dexCache.getAbsoluteFile(), null, classLoader2, Boolean.TRUE);
                    } catch (InvocationTargetException e4) {
                        if (e4.getCause() instanceof SecurityException) {
                            if (!didWarnBlacklistedMethods) {
                                PrintStream printStream2 = System.err;
                                printStream2.println("Cannot allow to call blacklisted super methods. This might break spying on system classes." + e4.getCause());
                                didWarnBlacklistedMethods = true;
                            }
                        } else {
                            throw e4;
                        }
                    }
                }
                if (z3) {
                    classLoader2.getClass().getMethod("addDexPath", String.class).invoke(classLoader2, result.getPath());
                    return classLoader2;
                }
                return (ClassLoader) Class.forName("dalvik.system.DexClassLoader").getConstructor(String.class, String.class, String.class, ClassLoader.class).newInstance(result.getPath(), dexCache.getAbsolutePath(), null, classLoader2);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException(e5.getCause());
            }
        } catch (ClassNotFoundException e6) {
            throw new UnsupportedOperationException("load() requires a Dalvik VM", e6);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InstantiationException unused2) {
            throw new AssertionError();
        } catch (NoSuchMethodException unused3) {
            throw new AssertionError();
        }
    }

    private String generateFileName() {
        Set<TypeId<?>> keySet = this.types.keySet();
        int size = keySet.size();
        int[] iArr = new int[size];
        int i2 = 0;
        for (TypeId<?> typeId : keySet) {
            TypeDeclaration typeDeclaration = getTypeDeclaration(typeId);
            Set keySet2 = typeDeclaration.methods.keySet();
            if (typeDeclaration.supertype != null) {
                iArr[i2] = (((typeDeclaration.supertype.hashCode() * 31) + typeDeclaration.interfaces.hashCode()) * 31) + keySet2.hashCode();
                i2++;
            }
        }
        Arrays.sort(iArr);
        int i4 = 1;
        for (int i5 = 0; i5 < size; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        return "Generated_" + i4 + ".jar";
    }

    public void declare(TypeId<?> type, String sourceFile, int flags, TypeId<?> supertype, TypeId<?>... interfaces) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(type);
        if ((flags & (-5138)) == 0) {
            if (!typeDeclaration.declared) {
                typeDeclaration.declared = true;
                typeDeclaration.flags = flags;
                typeDeclaration.supertype = supertype;
                typeDeclaration.sourceFile = sourceFile;
                typeDeclaration.interfaces = new TypeList(interfaces);
                return;
            }
            throw new IllegalStateException("already declared: " + type);
        }
        throw new IllegalArgumentException("Unexpected flag: " + Integer.toHexString(flags));
    }

    public void deleteOldDex(File dexFile) {
        dexFile.delete();
        File file = new File(dexFile.getParent(), "/oat/");
        File file2 = new File(file, "/arm/");
        File file3 = new File(file, "/arm64/");
        if (file.exists()) {
            String replaceAll = dexFile.getName().replaceAll(".jar", "");
            doDeleteOatFiles(file, replaceAll);
            doDeleteOatFiles(file2, replaceAll);
            doDeleteOatFiles(file3, replaceAll);
        }
    }

    public byte[] generate() {
        if (this.outputDex == null) {
            DexOptions dexOptions = new DexOptions();
            dexOptions.minSdkVersion = 13;
            this.outputDex = new DexFile(dexOptions);
        }
        for (TypeDeclaration typeDeclaration : this.types.values()) {
            this.outputDex.add(typeDeclaration.toClassDefItem());
        }
        try {
            return this.outputDex.toDex(null, false);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public ClassLoader generateAndLoad(ClassLoader parent, File dexCache) throws IOException {
        return generateAndLoad(parent, dexCache, generateFileName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DexFile getDexFile() {
        if (this.outputDex == null) {
            DexOptions dexOptions = new DexOptions();
            dexOptions.minSdkVersion = 13;
            this.outputDex = new DexFile(dexOptions);
        }
        return this.outputDex;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeDeclaration getTypeDeclaration(TypeId<?> type) {
        TypeDeclaration typeDeclaration = this.types.get(type);
        if (typeDeclaration == null) {
            TypeDeclaration typeDeclaration2 = new TypeDeclaration(type);
            this.types.put(type, typeDeclaration2);
            return typeDeclaration2;
        }
        return typeDeclaration;
    }

    public ClassLoader loadClassDirect(ClassLoader parent, File dexCache, String dexFileName) {
        File file = new File(dexCache, dexFileName);
        if (file.exists()) {
            return generateClassLoader(file, dexCache, parent);
        }
        return null;
    }

    public void markAsTrusted() {
        this.markAsTrusted = true;
    }

    public void setSharedClassLoader(ClassLoader classLoader) {
        this.sharedClassLoader = classLoader;
    }

    public ClassLoader generateAndLoad(ClassLoader parent, File dexCache, String dexFileName) throws IOException {
        if (dexCache == null) {
            String property = System.getProperty("dexmaker.dexcache");
            if (property != null) {
                dexCache = new File(property);
            } else {
                dexCache = new AppDataDirGuesser().guess();
                if (dexCache == null) {
                    throw new IllegalArgumentException("dexcache == null (and no default could be found; consider setting the 'dexmaker.dexcache' system property)");
                }
            }
        }
        File file = new File(dexCache, dexFileName);
        if (file.exists()) {
            try {
                deleteOldDex(file);
            } catch (Throwable unused) {
            }
        }
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        file.createNewFile();
        JarOutputStream jarOutputStream = new JarOutputStream(new FileOutputStream(file));
        JarEntry jarEntry = new JarEntry(DexFormat.DEX_IN_JAR_NAME);
        byte[] generate = generate();
        jarEntry.setSize(generate.length);
        jarOutputStream.putNextEntry(jarEntry);
        jarOutputStream.write(generate);
        jarOutputStream.closeEntry();
        jarOutputStream.close();
        return generateClassLoader(file, dexCache, parent);
    }

    public Code declare(MethodId<?, ?> method, int flags) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(method.declaringType);
        if (typeDeclaration.methods.containsKey(method)) {
            throw new IllegalStateException("already declared: " + method);
        } else if ((flags & (-4224)) == 0) {
            if ((flags & 32) != 0) {
                flags = (flags & (-33)) | 131072;
            }
            if (method.isConstructor() || method.isStaticInitializer()) {
                flags |= 65536;
            }
            MethodDeclaration methodDeclaration = new MethodDeclaration(method, flags);
            typeDeclaration.methods.put(method, methodDeclaration);
            return methodDeclaration.code;
        } else {
            throw new IllegalArgumentException("Unexpected flag: " + Integer.toHexString(flags));
        }
    }

    public void declare(FieldId<?, ?> fieldId, int flags, Object staticValue) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(fieldId.declaringType);
        if (typeDeclaration.fields.containsKey(fieldId)) {
            throw new IllegalStateException("already declared: " + fieldId);
        } else if ((flags & (-4320)) != 0) {
            throw new IllegalArgumentException("Unexpected flag: " + Integer.toHexString(flags));
        } else if ((flags & 8) == 0 && staticValue != null) {
            throw new IllegalArgumentException("staticValue is non-null, but field is not static");
        } else {
            typeDeclaration.fields.put(fieldId, new FieldDeclaration(fieldId, flags, staticValue));
        }
    }
}
