package com.android.dx.command.dexer;

import com.alipay.sdk.app.statistic.c;
import com.android.dex.Dex;
import com.android.dex.DexException;
import com.android.dex.DexFormat;
import com.android.dex.util.FileUtils;
import com.android.dx.cf.code.SimException;
import com.android.dx.cf.direct.ClassPathOpener;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.command.UsageException;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.cf.CfOptions;
import com.android.dx.dex.cf.CfTranslator;
import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.dex.file.DexFile;
import com.android.dx.dex.file.EncodedMethod;
import com.android.dx.merge.CollisionPolicy;
import com.android.dx.merge.DexMerger;
import com.android.dx.rop.annotation.Annotation;
import com.android.dx.rop.annotation.Annotations;
import com.android.dx.rop.annotation.AnnotationsList;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;
import com.umeng.analytics.pro.ai;
import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import org.apache.http.conn.ssl.TokenParser;
/* loaded from: classes2.dex */
public class Main {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String DEX_EXTENSION = ".dex";
    private static final String DEX_PREFIX = "classes";
    private static final String IN_RE_CORE_CLASSES = "Ill-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application's project, when using an IDE (such as\nEclipse). If you are sure you're not intentionally defining a\ncore class, then this is the most likely explanation of what's\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n";
    private static final String MANIFEST_NAME = "META-INF/MANIFEST.MF";
    private static final int MAX_FIELD_ADDED_DURING_DEX_CREATION = 9;
    private static final int MAX_METHOD_ADDED_DURING_DEX_CREATION = 2;
    private volatile boolean anyFilesProcessed;
    private Arguments args;
    private ExecutorService classDefItemConsumer;
    private ExecutorService classTranslatorPool;
    private final DxContext context;
    private ExecutorService dexOutPool;
    private DexFile outputDex;
    private TreeMap<String, byte[]> outputResources;
    private static final Attributes.Name CREATED_BY = new Attributes.Name("Created-By");
    private static final String[] JAVAX_CORE = {"accessibility", "crypto", "imageio", "management", "naming", c.f9616k, "print", "rmi", "security", "sip", "sound", "sql", "swing", "transaction", "xml"};
    private AtomicInteger errors = new AtomicInteger(0);
    private final List<byte[]> libraryDexBuffers = new ArrayList();
    private List<Future<Boolean>> addToDexFutures = new ArrayList();
    private List<Future<byte[]>> dexOutputFutures = new ArrayList();
    private Object dexRotationLock = new Object();
    private int maxMethodIdsInProcess = 0;
    private int maxFieldIdsInProcess = 0;
    private long minimumFileAge = 0;
    private Set<String> classesInMainDex = null;
    private List<byte[]> dexOutputArrays = new ArrayList();
    private OutputStreamWriter humanOutWriter = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class BestEffortMainDexListFilter implements ClassPathOpener.FileNameFilter {
        Map<String, List<String>> map = new HashMap();

        public BestEffortMainDexListFilter() {
            for (String str : Main.this.classesInMainDex) {
                String fixPath = Main.fixPath(str);
                String simpleName = getSimpleName(fixPath);
                List<String> list = this.map.get(simpleName);
                if (list == null) {
                    list = new ArrayList<>(1);
                    this.map.put(simpleName, list);
                }
                list.add(fixPath);
            }
        }

        private String getSimpleName(String str) {
            int lastIndexOf = str.lastIndexOf(47);
            return lastIndexOf >= 0 ? str.substring(lastIndexOf + 1) : str;
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            if (str.endsWith(".class")) {
                String fixPath = Main.fixPath(str);
                List<String> list = this.map.get(getSimpleName(fixPath));
                if (list != null) {
                    for (String str2 : list) {
                        if (fixPath.endsWith(str2)) {
                            return true;
                        }
                    }
                    return false;
                }
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ClassDefItemConsumer implements Callable<Boolean> {
        Future<ClassDefItem> futureClazz;
        int maxFieldIdsInClass;
        int maxMethodIdsInClass;
        String name;

        private ClassDefItemConsumer(String str, Future<ClassDefItem> future, int i2, int i4) {
            this.name = str;
            this.futureClazz = future;
            this.maxMethodIdsInClass = i2;
            this.maxFieldIdsInClass = i4;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            try {
                try {
                    ClassDefItem classDefItem = this.futureClazz.get();
                    if (classDefItem != null) {
                        Main.this.addClassToDex(classDefItem);
                        Main.this.updateStatus(true);
                    }
                    Boolean bool = Boolean.TRUE;
                    if (Main.this.args.multiDex) {
                        synchronized (Main.this.dexRotationLock) {
                            Main.this.maxMethodIdsInProcess -= this.maxMethodIdsInClass;
                            Main.this.maxFieldIdsInProcess -= this.maxFieldIdsInClass;
                            Main.this.dexRotationLock.notifyAll();
                        }
                    }
                    return bool;
                } catch (ExecutionException e4) {
                    Throwable cause = e4.getCause();
                    if (cause instanceof Exception) {
                        throw ((Exception) cause);
                    }
                    throw e4;
                }
            } catch (Throwable th) {
                if (Main.this.args.multiDex) {
                    synchronized (Main.this.dexRotationLock) {
                        Main.this.maxMethodIdsInProcess -= this.maxMethodIdsInClass;
                        Main.this.maxFieldIdsInProcess -= this.maxFieldIdsInClass;
                        Main.this.dexRotationLock.notifyAll();
                    }
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ClassParserTask implements Callable<DirectClassFile> {
        byte[] bytes;
        String name;

        private ClassParserTask(String str, byte[] bArr) {
            this.name = str;
            this.bytes = bArr;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public DirectClassFile call() throws Exception {
            return Main.this.parseClass(this.name, this.bytes);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ClassTranslatorTask implements Callable<ClassDefItem> {
        byte[] bytes;
        DirectClassFile classFile;
        String name;

        private ClassTranslatorTask(String str, byte[] bArr, DirectClassFile directClassFile) {
            this.name = str;
            this.bytes = bArr;
            this.classFile = directClassFile;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public ClassDefItem call() {
            return Main.this.translateClass(this.bytes, this.classFile);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class DexWriter implements Callable<byte[]> {
        private final DexFile dexFile;

        private DexWriter(DexFile dexFile) {
            this.dexFile = dexFile;
        }

        @Override // java.util.concurrent.Callable
        public byte[] call() throws IOException {
            return Main.this.writeDex(this.dexFile);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class DirectClassFileConsumer implements Callable<Boolean> {
        byte[] bytes;
        Future<DirectClassFile> dcff;
        String name;

        private DirectClassFileConsumer(String str, byte[] bArr, Future<DirectClassFile> future) {
            this.name = str;
            this.bytes = bArr;
            this.dcff = future;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            return call(this.dcff.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't wrap try/catch for region: R(6:23|(2:28|(4:30|31|d2|35)(1:36))|37|38|31|d2) */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00d3 A[Catch: all -> 0x00fa, TRY_ENTER, TryCatch #4 {, blocks: (B:6:0x0030, B:7:0x0036, B:11:0x005d, B:13:0x006e, B:23:0x00ab, B:24:0x00bf, B:15:0x0080, B:17:0x0088, B:20:0x0091, B:22:0x00a5, B:27:0x00cc, B:28:0x00d2, B:26:0x00c3, B:29:0x00d3, B:30:0x00f7, B:8:0x0037, B:9:0x005b), top: B:45:0x0030 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean call(com.android.dx.cf.direct.DirectClassFile r11) {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.dx.command.dexer.Main.DirectClassFileConsumer.call(com.android.dx.cf.direct.DirectClassFile):java.lang.Boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class FileBytesConsumer implements ClassPathOpener.Consumer {
        private FileBytesConsumer() {
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.Consumer
        public void onException(Exception exc) {
            if (!(exc instanceof StopProcessing)) {
                if (exc instanceof SimException) {
                    Main.this.context.err.println("\nEXCEPTION FROM SIMULATION:");
                    PrintStream printStream = Main.this.context.err;
                    printStream.println(exc.getMessage() + "\n");
                    Main.this.context.err.println(((SimException) exc).getContext());
                } else if (exc instanceof ParseException) {
                    Main.this.context.err.println("\nPARSE ERROR:");
                    ParseException parseException = (ParseException) exc;
                    if (Main.this.args.debug) {
                        parseException.printStackTrace(Main.this.context.err);
                    } else {
                        parseException.printContext(Main.this.context.err);
                    }
                } else {
                    Main.this.context.err.println("\nUNEXPECTED TOP-LEVEL EXCEPTION:");
                    exc.printStackTrace(Main.this.context.err);
                }
                Main.this.errors.incrementAndGet();
                return;
            }
            throw ((StopProcessing) exc);
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.Consumer
        public void onProcessArchiveStart(File file) {
            if (Main.this.args.verbose) {
                PrintStream printStream = Main.this.context.out;
                printStream.println("processing archive " + file + "...");
            }
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.Consumer
        public boolean processFileBytes(String str, long j4, byte[] bArr) {
            return Main.this.processFileBytes(str, j4, bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class MainDexListFilter implements ClassPathOpener.FileNameFilter {
        private MainDexListFilter() {
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            if (str.endsWith(".class")) {
                return Main.this.classesInMainDex.contains(Main.fixPath(str));
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class NotFilter implements ClassPathOpener.FileNameFilter {
        private final ClassPathOpener.FileNameFilter filter;

        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            return !this.filter.accept(str);
        }

        private NotFilter(ClassPathOpener.FileNameFilter fileNameFilter) {
            this.filter = fileNameFilter;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class RemoveModuleInfoFilter implements ClassPathOpener.FileNameFilter {
        protected final ClassPathOpener.FileNameFilter delegate;

        public RemoveModuleInfoFilter(ClassPathOpener.FileNameFilter fileNameFilter) {
            this.delegate = fileNameFilter;
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            return this.delegate.accept(str) && !"module-info.class".equals(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class StopProcessing extends RuntimeException {
        private StopProcessing() {
        }
    }

    public Main(DxContext dxContext) {
        this.context = dxContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addClassToDex(ClassDefItem classDefItem) {
        synchronized (this.outputDex) {
            this.outputDex.add(classDefItem);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (java.util.Arrays.binarySearch(com.android.dx.command.dexer.Main.JAVAX_CORE, r6.substring(6, r0)) >= 0) goto L3;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkClassName(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "java/"
            boolean r0 = r6.startsWith(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lc
        La:
            r1 = 1
            goto L2c
        Lc:
            java.lang.String r0 = "javax/"
            boolean r0 = r6.startsWith(r0)
            if (r0 == 0) goto L2c
            r0 = 47
            r3 = 6
            int r0 = r6.indexOf(r0, r3)
            r4 = -1
            if (r0 != r4) goto L1f
            goto La
        L1f:
            java.lang.String r0 = r6.substring(r3, r0)
            java.lang.String[] r3 = com.android.dx.command.dexer.Main.JAVAX_CORE
            int r0 = java.util.Arrays.binarySearch(r3, r0)
            if (r0 < 0) goto L2c
            goto La
        L2c:
            if (r1 != 0) goto L2f
            return
        L2f:
            com.android.dx.command.dexer.DxContext r0 = r5.context
            java.io.PrintStream r0 = r0.err
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "\ntrouble processing \""
            r1.append(r2)
            r1.append(r6)
            java.lang.String r6 = "\":\n\n"
            r1.append(r6)
            java.lang.String r6 = "Ill-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application's project, when using an IDE (such as\nEclipse). If you are sure you're not intentionally defining a\ncore class, then this is the most likely explanation of what's\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n"
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            r0.println(r6)
            java.util.concurrent.atomic.AtomicInteger r6 = r5.errors
            r6.incrementAndGet()
            com.android.dx.command.dexer.Main$StopProcessing r6 = new com.android.dx.command.dexer.Main$StopProcessing
            r0 = 0
            r6.<init>()
            goto L5e
        L5d:
            throw r6
        L5e:
            goto L5d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.dx.command.dexer.Main.checkClassName(java.lang.String):void");
    }

    public static void clearInternTables() {
        Prototype.clearInternTable();
        RegisterSpec.clearInternTable();
        CstType.clearInternTable();
        Type.clearInternTable();
    }

    private void closeOutput(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            return;
        }
        outputStream.flush();
        if (outputStream != this.context.out) {
            outputStream.close();
        }
    }

    private void createDexFile() {
        DexFile dexFile = new DexFile(this.args.dexOptions);
        this.outputDex = dexFile;
        int i2 = this.args.dumpWidth;
        if (i2 != 0) {
            dexFile.setDumpWidth(i2);
        }
    }

    private boolean createJar(String str) {
        try {
            Manifest makeManifest = makeManifest();
            OutputStream openOutput = openOutput(str);
            JarOutputStream jarOutputStream = new JarOutputStream(openOutput, makeManifest);
            for (Map.Entry<String, byte[]> entry : this.outputResources.entrySet()) {
                String key = entry.getKey();
                byte[] value = entry.getValue();
                JarEntry jarEntry = new JarEntry(key);
                int length = value.length;
                if (this.args.verbose) {
                    PrintStream printStream = this.context.out;
                    printStream.println("writing " + key + "; size " + length + "...");
                }
                jarEntry.setSize(length);
                jarOutputStream.putNextEntry(jarEntry);
                jarOutputStream.write(value);
                jarOutputStream.closeEntry();
            }
            jarOutputStream.finish();
            jarOutputStream.flush();
            closeOutput(openOutput);
            return true;
        } catch (Exception e4) {
            if (this.args.debug) {
                this.context.err.println("\ntrouble writing output:");
                e4.printStackTrace(this.context.err);
                return false;
            }
            PrintStream printStream2 = this.context.err;
            printStream2.println("\ntrouble writing output: " + e4.getMessage());
            return false;
        }
    }

    private void dumpMethod(DexFile dexFile, String str, OutputStreamWriter outputStreamWriter) {
        boolean endsWith = str.endsWith(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD);
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf > 0 && lastIndexOf != str.length() - 1) {
            String replace = str.substring(0, lastIndexOf).replace(d.f65364a, '/');
            String substring = str.substring(lastIndexOf + 1);
            ClassDefItem classOrNull = dexFile.getClassOrNull(replace);
            if (classOrNull == null) {
                PrintStream printStream = this.context.err;
                printStream.println("no such class: " + replace);
                return;
            }
            if (endsWith) {
                substring = substring.substring(0, substring.length() - 1);
            }
            ArrayList<EncodedMethod> methods = classOrNull.getMethods();
            TreeMap treeMap = new TreeMap();
            Iterator<EncodedMethod> it2 = methods.iterator();
            while (it2.hasNext()) {
                EncodedMethod next = it2.next();
                String string = next.getName().getString();
                if ((endsWith && string.startsWith(substring)) || (!endsWith && string.equals(substring))) {
                    treeMap.put(next.getRef().getNat(), next);
                }
            }
            if (treeMap.size() == 0) {
                PrintStream printStream2 = this.context.err;
                printStream2.println("no such method: " + str);
                return;
            }
            PrintWriter printWriter = new PrintWriter(outputStreamWriter);
            for (EncodedMethod encodedMethod : treeMap.values()) {
                encodedMethod.debugPrint(printWriter, this.args.verboseDump);
                CstString sourceFile = classOrNull.getSourceFile();
                if (sourceFile != null) {
                    printWriter.println("  source file: " + sourceFile.toQuoted());
                }
                Annotations methodAnnotations = classOrNull.getMethodAnnotations(encodedMethod.getRef());
                AnnotationsList parameterAnnotations = classOrNull.getParameterAnnotations(encodedMethod.getRef());
                if (methodAnnotations != null) {
                    printWriter.println("  method annotations:");
                    Iterator<Annotation> it3 = methodAnnotations.getAnnotations().iterator();
                    while (it3.hasNext()) {
                        printWriter.println("    " + it3.next());
                    }
                }
                if (parameterAnnotations != null) {
                    printWriter.println("  parameter annotations:");
                    int size = parameterAnnotations.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        printWriter.println("    parameter " + i2);
                        Iterator<Annotation> it4 = parameterAnnotations.get(i2).getAnnotations().iterator();
                        while (it4.hasNext()) {
                            printWriter.println("      " + it4.next());
                        }
                    }
                }
            }
            printWriter.flush();
            return;
        }
        PrintStream printStream3 = this.context.err;
        printStream3.println("bogus fully-qualified method name: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String fixPath(String str) {
        if (File.separatorChar == '\\') {
            str = str.replace(TokenParser.ESCAPE, '/');
        }
        int lastIndexOf = str.lastIndexOf("/./");
        if (lastIndexOf != -1) {
            return str.substring(lastIndexOf + 3);
        }
        return str.startsWith("./") ? str.substring(2) : str;
    }

    private static String getDexFileName(int i2) {
        if (i2 == 0) {
            return DexFormat.DEX_IN_JAR_NAME;
        }
        return DEX_PREFIX + (i2 + 1) + DEX_EXTENSION;
    }

    public static void main(String[] strArr) throws IOException {
        DxContext dxContext = new DxContext();
        Arguments arguments = new Arguments(dxContext);
        arguments.parse(strArr);
        int runDx = new Main(dxContext).runDx(arguments);
        if (runDx != 0) {
            System.exit(runDx);
        }
    }

    private Manifest makeManifest() throws IOException {
        Attributes attributes;
        Manifest manifest;
        String str;
        byte[] bArr = this.outputResources.get(MANIFEST_NAME);
        if (bArr == null) {
            manifest = new Manifest();
            attributes = manifest.getMainAttributes();
            attributes.put(Attributes.Name.MANIFEST_VERSION, "1.0");
        } else {
            Manifest manifest2 = new Manifest(new ByteArrayInputStream(bArr));
            Attributes mainAttributes = manifest2.getMainAttributes();
            this.outputResources.remove(MANIFEST_NAME);
            attributes = mainAttributes;
            manifest = manifest2;
        }
        Attributes.Name name = CREATED_BY;
        String value = attributes.getValue(name);
        if (value == null) {
            str = "";
        } else {
            str = value + " + ";
        }
        attributes.put(name, str + "dx 1.16");
        attributes.putValue("Dex-Location", DexFormat.DEX_IN_JAR_NAME);
        return manifest;
    }

    private byte[] mergeIncremental(byte[] bArr, File file) throws IOException {
        Dex dex = bArr != null ? new Dex(bArr) : null;
        Dex dex2 = file.exists() ? new Dex(file) : null;
        if (dex == null && dex2 == null) {
            return null;
        }
        if (dex == null) {
            dex = dex2;
        } else if (dex2 != null) {
            dex = new DexMerger(new Dex[]{dex, dex2}, CollisionPolicy.KEEP_FIRST, this.context).merge();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        dex.writeTo(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    private byte[] mergeLibraryDexBuffers(byte[] bArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (bArr != null) {
            arrayList.add(new Dex(bArr));
        }
        for (byte[] bArr2 : this.libraryDexBuffers) {
            arrayList.add(new Dex(bArr2));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new DexMerger((Dex[]) arrayList.toArray(new Dex[arrayList.size()]), CollisionPolicy.FAIL, this.context).merge().getBytes();
    }

    private OutputStream openOutput(String str) throws IOException {
        if (!str.equals("-") && !str.startsWith("-.")) {
            return new FileOutputStream(str);
        }
        return this.context.out;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DirectClassFile parseClass(String str, byte[] bArr) {
        DirectClassFile directClassFile = new DirectClassFile(bArr, str, this.args.cfOptions.strictNameCheck);
        directClassFile.setAttributeFactory(StdAttributeFactory.THE_ONE);
        directClassFile.getMagic();
        return directClassFile;
    }

    private boolean processAllFiles() {
        createDexFile();
        if (this.args.jarOutput) {
            this.outputResources = new TreeMap<>();
        }
        this.anyFilesProcessed = false;
        String[] strArr = this.args.fileNames;
        Arrays.sort(strArr);
        int i2 = this.args.numThreads;
        this.classTranslatorPool = new ThreadPoolExecutor(i2, i2, 0L, TimeUnit.SECONDS, new ArrayBlockingQueue(this.args.numThreads * 2, true), new ThreadPoolExecutor.CallerRunsPolicy());
        this.classDefItemConsumer = Executors.newSingleThreadExecutor();
        try {
            Arguments arguments = this.args;
            if (arguments.mainDexListFile != null) {
                ClassPathOpener.FileNameFilter mainDexListFilter = arguments.strictNameCheck ? new MainDexListFilter() : new BestEffortMainDexListFilter();
                for (String str : strArr) {
                    processOne(str, mainDexListFilter);
                }
                if (this.dexOutputFutures.size() <= 0) {
                    if (this.args.minimalMainDex) {
                        synchronized (this.dexRotationLock) {
                            while (true) {
                                if (this.maxMethodIdsInProcess <= 0 && this.maxFieldIdsInProcess <= 0) {
                                    break;
                                }
                                try {
                                    this.dexRotationLock.wait();
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                        rotateDexFile();
                    }
                    RemoveModuleInfoFilter removeModuleInfoFilter = new RemoveModuleInfoFilter(new NotFilter(mainDexListFilter));
                    for (String str2 : strArr) {
                        processOne(str2, removeModuleInfoFilter);
                    }
                } else {
                    throw new DexException("Too many classes in --main-dex-list, main dex capacity exceeded");
                }
            } else {
                RemoveModuleInfoFilter removeModuleInfoFilter2 = new RemoveModuleInfoFilter(ClassPathOpener.acceptAll);
                for (String str3 : strArr) {
                    processOne(str3, removeModuleInfoFilter2);
                }
            }
        } catch (StopProcessing unused2) {
        }
        try {
            this.classTranslatorPool.shutdown();
            ExecutorService executorService = this.classTranslatorPool;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            executorService.awaitTermination(600L, timeUnit);
            this.classDefItemConsumer.shutdown();
            this.classDefItemConsumer.awaitTermination(600L, timeUnit);
            for (Future<Boolean> future : this.addToDexFutures) {
                try {
                    future.get();
                } catch (ExecutionException e4) {
                    if (this.errors.incrementAndGet() < 10) {
                        if (this.args.debug) {
                            this.context.err.println("Uncaught translation error:");
                            e4.getCause().printStackTrace(this.context.err);
                        } else {
                            this.context.err.println("Uncaught translation error: " + e4.getCause());
                        }
                    } else {
                        throw new InterruptedException("Too many errors");
                    }
                }
            }
            int i4 = this.errors.get();
            if (i4 != 0) {
                PrintStream printStream = this.context.err;
                StringBuilder sb = new StringBuilder();
                sb.append(i4);
                sb.append(" error");
                sb.append(i4 == 1 ? "" : ai.az);
                sb.append("; aborting");
                printStream.println(sb.toString());
                return false;
            } else if (!this.args.incremental || this.anyFilesProcessed) {
                if (!this.anyFilesProcessed && !this.args.emptyOk) {
                    this.context.err.println("no classfiles specified");
                    return false;
                }
                Arguments arguments2 = this.args;
                if (arguments2.optimize && arguments2.statistics) {
                    DxContext dxContext = this.context;
                    dxContext.codeStatistics.dumpStatistics(dxContext.out);
                }
                return true;
            } else {
                return true;
            }
        } catch (InterruptedException e5) {
            this.classTranslatorPool.shutdownNow();
            this.classDefItemConsumer.shutdownNow();
            throw new RuntimeException("Translation has been interrupted", e5);
        } catch (Exception e6) {
            this.classTranslatorPool.shutdownNow();
            this.classDefItemConsumer.shutdownNow();
            e6.printStackTrace(this.context.out);
            throw new RuntimeException("Unexpected exception in translator thread.", e6);
        }
    }

    private boolean processClass(String str, byte[] bArr) {
        if (!this.args.coreLibrary) {
            checkClassName(str);
        }
        try {
            new DirectClassFileConsumer(str, bArr, null).call(new ClassParserTask(str, bArr).call());
            return true;
        } catch (ParseException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new RuntimeException("Exception parsing classes", e5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processFileBytes(String str, long j4, byte[] bArr) {
        boolean endsWith = str.endsWith(".class");
        boolean equals = str.equals(DexFormat.DEX_IN_JAR_NAME);
        boolean z3 = this.outputResources != null;
        if (!endsWith && !equals && !z3) {
            if (this.args.verbose) {
                PrintStream printStream = this.context.out;
                printStream.println("ignored resource " + str);
            }
            return false;
        }
        if (this.args.verbose) {
            PrintStream printStream2 = this.context.out;
            printStream2.println("processing " + str + "...");
        }
        String fixPath = fixPath(str);
        if (!endsWith) {
            if (equals) {
                synchronized (this.libraryDexBuffers) {
                    this.libraryDexBuffers.add(bArr);
                }
                return true;
            }
            synchronized (this.outputResources) {
                this.outputResources.put(fixPath, bArr);
            }
            return true;
        }
        if (z3 && this.args.keepClassesInJar) {
            synchronized (this.outputResources) {
                this.outputResources.put(fixPath, bArr);
            }
        }
        if (j4 < this.minimumFileAge) {
            return true;
        }
        processClass(fixPath, bArr);
        return false;
    }

    private void processOne(String str, ClassPathOpener.FileNameFilter fileNameFilter) {
        if (new ClassPathOpener(str, true, fileNameFilter, new FileBytesConsumer()).process()) {
            updateStatus(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readPathsFromFile(String str, Collection<String> collection) throws IOException {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(str));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine != null) {
                        collection.add(fixPath(readLine));
                    } else {
                        bufferedReader2.close();
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rotateDexFile() {
        DexFile dexFile = this.outputDex;
        if (dexFile != null) {
            ExecutorService executorService = this.dexOutPool;
            if (executorService != null) {
                this.dexOutputFutures.add(executorService.submit(new DexWriter(dexFile)));
            } else {
                this.dexOutputArrays.add(writeDex(dexFile));
            }
        }
        createDexFile();
    }

    public static int run(Arguments arguments) throws IOException {
        return new Main(new DxContext()).runDx(arguments);
    }

    private int runMonoDex() throws IOException {
        File file;
        byte[] writeDex;
        String str;
        Arguments arguments = this.args;
        if (!arguments.incremental) {
            file = null;
        } else if (arguments.outName == null) {
            this.context.err.println("error: no incremental output name specified");
            return -1;
        } else {
            file = new File(this.args.outName);
            if (file.exists()) {
                this.minimumFileAge = file.lastModified();
            }
        }
        if (processAllFiles()) {
            if (!this.args.incremental || this.anyFilesProcessed) {
                if (this.outputDex.isEmpty() && this.args.humanOutName == null) {
                    writeDex = null;
                } else {
                    writeDex = writeDex(this.outputDex);
                    if (writeDex == null) {
                        return 2;
                    }
                }
                if (this.args.incremental) {
                    writeDex = mergeIncremental(writeDex, file);
                }
                byte[] mergeLibraryDexBuffers = mergeLibraryDexBuffers(writeDex);
                Arguments arguments2 = this.args;
                if (arguments2.jarOutput) {
                    this.outputDex = null;
                    if (mergeLibraryDexBuffers != null) {
                        this.outputResources.put(DexFormat.DEX_IN_JAR_NAME, mergeLibraryDexBuffers);
                    }
                    if (!createJar(this.args.outName)) {
                        return 3;
                    }
                } else if (mergeLibraryDexBuffers != null && (str = arguments2.outName) != null) {
                    OutputStream openOutput = openOutput(str);
                    openOutput.write(mergeLibraryDexBuffers);
                    closeOutput(openOutput);
                }
                return 0;
            }
            return 0;
        }
        return 1;
    }

    private int runMultiDex() throws IOException {
        if (this.args.mainDexListFile != null) {
            HashSet hashSet = new HashSet();
            this.classesInMainDex = hashSet;
            readPathsFromFile(this.args.mainDexListFile, hashSet);
        }
        this.dexOutPool = Executors.newFixedThreadPool(this.args.numThreads);
        if (processAllFiles()) {
            if (this.libraryDexBuffers.isEmpty()) {
                DexFile dexFile = this.outputDex;
                if (dexFile != null) {
                    this.dexOutputFutures.add(this.dexOutPool.submit(new DexWriter(dexFile)));
                    this.outputDex = null;
                }
                try {
                    this.dexOutPool.shutdown();
                    if (this.dexOutPool.awaitTermination(600L, TimeUnit.SECONDS)) {
                        for (Future<byte[]> future : this.dexOutputFutures) {
                            this.dexOutputArrays.add(future.get());
                        }
                        Arguments arguments = this.args;
                        if (arguments.jarOutput) {
                            for (int i2 = 0; i2 < this.dexOutputArrays.size(); i2++) {
                                this.outputResources.put(getDexFileName(i2), this.dexOutputArrays.get(i2));
                            }
                            if (!createJar(this.args.outName)) {
                                return 3;
                            }
                        } else if (arguments.outName != null) {
                            File file = new File(this.args.outName);
                            for (int i4 = 0; i4 < this.dexOutputArrays.size(); i4++) {
                                FileOutputStream fileOutputStream = new FileOutputStream(new File(file, getDexFileName(i4)));
                                try {
                                    fileOutputStream.write(this.dexOutputArrays.get(i4));
                                    closeOutput(fileOutputStream);
                                } catch (Throwable th) {
                                    closeOutput(fileOutputStream);
                                    throw th;
                                }
                            }
                        }
                        return 0;
                    }
                    throw new RuntimeException("Timed out waiting for dex writer threads.");
                } catch (InterruptedException unused) {
                    this.dexOutPool.shutdownNow();
                    throw new RuntimeException("A dex writer thread has been interrupted.");
                } catch (Exception unused2) {
                    this.dexOutPool.shutdownNow();
                    throw new RuntimeException("Unexpected exception in dex writer thread");
                }
            }
            throw new DexException("Library dex files are not supported in multi-dex mode");
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ClassDefItem translateClass(byte[] bArr, DirectClassFile directClassFile) {
        try {
            DxContext dxContext = this.context;
            Arguments arguments = this.args;
            return CfTranslator.translate(dxContext, directClassFile, bArr, arguments.cfOptions, arguments.dexOptions, this.outputDex);
        } catch (ParseException e4) {
            this.context.err.println("\ntrouble processing:");
            if (this.args.debug) {
                e4.printStackTrace(this.context.err);
            } else {
                e4.printContext(this.context.err);
            }
            this.errors.incrementAndGet();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatus(boolean z3) {
        this.anyFilesProcessed = z3 | this.anyFilesProcessed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] writeDex(DexFile dexFile) {
        byte[] dex;
        try {
            Arguments arguments = this.args;
            if (arguments.methodToDump != null) {
                dexFile.toDex(null, false);
                dumpMethod(dexFile, this.args.methodToDump, this.humanOutWriter);
                dex = null;
            } else {
                dex = dexFile.toDex(this.humanOutWriter, arguments.verboseDump);
            }
            if (this.args.statistics) {
                this.context.out.println(dexFile.getStatistics().toHuman());
            }
            OutputStreamWriter outputStreamWriter = this.humanOutWriter;
            if (outputStreamWriter != null) {
                outputStreamWriter.flush();
            }
            return dex;
        } catch (Exception e4) {
            if (this.args.debug) {
                this.context.err.println("\ntrouble writing output:");
                e4.printStackTrace(this.context.err);
            } else {
                this.context.err.println("\ntrouble writing output: " + e4.getMessage());
            }
            return null;
        }
    }

    public int runDx(Arguments arguments) throws IOException {
        OutputStream outputStream;
        this.errors.set(0);
        this.libraryDexBuffers.clear();
        this.args = arguments;
        arguments.makeOptionsObjects();
        String str = this.args.humanOutName;
        if (str != null) {
            outputStream = openOutput(str);
            this.humanOutWriter = new OutputStreamWriter(outputStream);
        } else {
            outputStream = null;
        }
        try {
            if (this.args.multiDex) {
                return runMultiDex();
            }
            return runMonoDex();
        } finally {
            closeOutput(outputStream);
        }
    }

    /* loaded from: classes2.dex */
    public static class Arguments {
        private static final String INCREMENTAL_OPTION = "--incremental";
        private static final String INPUT_LIST_OPTION = "--input-list";
        private static final String MAIN_DEX_LIST_OPTION = "--main-dex-list";
        private static final String MINIMAL_MAIN_DEX_OPTION = "--minimal-main-dex";
        private static final String MULTI_DEX_OPTION = "--multi-dex";
        private static final String NUM_THREADS_OPTION = "--num-threads";
        public boolean allowAllInterfaceMethodInvokes;
        public CfOptions cfOptions;
        public final DxContext context;
        public boolean coreLibrary;
        public boolean debug;
        public DexOptions dexOptions;
        public String dontOptimizeListFile;
        public int dumpWidth;
        public boolean emptyOk;
        public String[] fileNames;
        public boolean forceJumbo;
        public String humanOutName;
        public boolean incremental;
        private List<String> inputList;
        public boolean jarOutput;
        public boolean keepClassesInJar;
        public boolean localInfo;
        public String mainDexListFile;
        public int maxNumberOfIdxPerDex;
        public String methodToDump;
        public int minSdkVersion;
        public boolean minimalMainDex;
        public boolean multiDex;
        public int numThreads;
        public boolean optimize;
        public String optimizeListFile;
        public String outName;
        private boolean outputIsDirectDex;
        private boolean outputIsDirectory;
        public int positionInfo;
        public boolean statistics;
        public boolean strictNameCheck;
        public boolean verbose;
        public boolean verboseDump;
        public boolean warnings;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static class ArgumentsParser {
            private final String[] arguments;
            private String current;
            private int index = 0;
            private String lastValue;

            public ArgumentsParser(String[] strArr) {
                this.arguments = strArr;
            }

            private boolean getNextValue() {
                int i2 = this.index;
                String[] strArr = this.arguments;
                if (i2 >= strArr.length) {
                    return false;
                }
                this.current = strArr[i2];
                this.index = i2 + 1;
                return true;
            }

            public String getCurrent() {
                return this.current;
            }

            public String getLastValue() {
                return this.lastValue;
            }

            public boolean getNext() {
                int i2 = this.index;
                String[] strArr = this.arguments;
                if (i2 >= strArr.length) {
                    return false;
                }
                String str = strArr[i2];
                this.current = str;
                if (str.equals("--") || !this.current.startsWith("--")) {
                    return false;
                }
                this.index++;
                return true;
            }

            public String[] getRemaining() {
                String[] strArr = this.arguments;
                int length = strArr.length;
                int i2 = this.index;
                int i4 = length - i2;
                String[] strArr2 = new String[i4];
                if (i4 > 0) {
                    System.arraycopy(strArr, i2, strArr2, 0, i4);
                }
                return strArr2;
            }

            public boolean isArg(String str) {
                int length = str.length();
                if (length > 0) {
                    int i2 = length - 1;
                    if (str.charAt(i2) == '=') {
                        if (this.current.startsWith(str)) {
                            this.lastValue = this.current.substring(length);
                            return true;
                        }
                        String substring = str.substring(0, i2);
                        if (this.current.equals(substring)) {
                            if (getNextValue()) {
                                this.lastValue = this.current;
                                return true;
                            }
                            System.err.println("Missing value after parameter " + substring);
                            throw new UsageException();
                        }
                        return false;
                    }
                }
                return this.current.equals(str);
            }
        }

        public Arguments(DxContext dxContext) {
            this.debug = false;
            this.warnings = true;
            this.verbose = false;
            this.verboseDump = false;
            this.coreLibrary = false;
            this.methodToDump = null;
            this.dumpWidth = 0;
            this.outName = null;
            this.humanOutName = null;
            this.strictNameCheck = true;
            this.emptyOk = false;
            this.jarOutput = false;
            this.keepClassesInJar = false;
            this.minSdkVersion = 13;
            this.positionInfo = 2;
            this.localInfo = true;
            this.incremental = false;
            this.forceJumbo = false;
            this.allowAllInterfaceMethodInvokes = false;
            this.optimize = true;
            this.optimizeListFile = null;
            this.dontOptimizeListFile = null;
            this.numThreads = 1;
            this.multiDex = false;
            this.mainDexListFile = null;
            this.minimalMainDex = false;
            this.maxNumberOfIdxPerDex = 65536;
            this.inputList = null;
            this.outputIsDirectory = false;
            this.outputIsDirectDex = false;
            this.context = dxContext;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parse(String[] strArr) {
            ArgumentsParser argumentsParser = new ArgumentsParser(strArr);
            parseFlags(argumentsParser);
            this.fileNames = argumentsParser.getRemaining();
            List<String> list = this.inputList;
            if (list != null && !list.isEmpty()) {
                this.inputList.addAll(Arrays.asList(this.fileNames));
                List<String> list2 = this.inputList;
                this.fileNames = (String[]) list2.toArray(new String[list2.size()]);
            }
            if (this.fileNames.length == 0) {
                if (!this.emptyOk) {
                    this.context.err.println("no input files specified");
                    throw new UsageException();
                }
            } else if (this.emptyOk) {
                this.context.out.println("ignoring input files");
            }
            if (this.humanOutName == null && this.methodToDump != null) {
                this.humanOutName = "-";
            }
            String str = this.mainDexListFile;
            if (str != null && !this.multiDex) {
                this.context.err.println("--main-dex-list is only supported in combination with --multi-dex");
                throw new UsageException();
            } else if (this.minimalMainDex && (str == null || !this.multiDex)) {
                this.context.err.println("--minimal-main-dex is only supported in combination with --multi-dex and --main-dex-list");
                throw new UsageException();
            } else {
                boolean z3 = this.multiDex;
                if (z3 && this.incremental) {
                    this.context.err.println("--incremental is not supported with --multi-dex");
                    throw new UsageException();
                } else if (z3 && this.outputIsDirectDex) {
                    PrintStream printStream = this.context.err;
                    printStream.println("Unsupported output \"" + this.outName + "\". " + MULTI_DEX_OPTION + " supports only archive or directory output");
                    throw new UsageException();
                } else {
                    if (this.outputIsDirectory && !z3) {
                        this.outName = new File(this.outName, DexFormat.DEX_IN_JAR_NAME).getPath();
                    }
                    makeOptionsObjects();
                }
            }
        }

        private void parseFlags(ArgumentsParser argumentsParser) {
            int i2;
            while (argumentsParser.getNext()) {
                if (argumentsParser.isArg("--debug")) {
                    this.debug = true;
                } else if (argumentsParser.isArg("--no-warning")) {
                    this.warnings = false;
                } else if (argumentsParser.isArg("--verbose")) {
                    this.verbose = true;
                } else if (argumentsParser.isArg("--verbose-dump")) {
                    this.verboseDump = true;
                } else if (argumentsParser.isArg("--no-files")) {
                    this.emptyOk = true;
                } else if (argumentsParser.isArg("--no-optimize")) {
                    this.optimize = false;
                } else if (argumentsParser.isArg("--no-strict")) {
                    this.strictNameCheck = false;
                } else if (argumentsParser.isArg("--core-library")) {
                    this.coreLibrary = true;
                } else if (argumentsParser.isArg("--statistics")) {
                    this.statistics = true;
                } else if (argumentsParser.isArg("--optimize-list=")) {
                    if (this.dontOptimizeListFile == null) {
                        this.optimize = true;
                        this.optimizeListFile = argumentsParser.getLastValue();
                    } else {
                        this.context.err.println("--optimize-list and --no-optimize-list are incompatible.");
                        throw new UsageException();
                    }
                } else if (argumentsParser.isArg("--no-optimize-list=")) {
                    if (this.dontOptimizeListFile == null) {
                        this.optimize = true;
                        this.dontOptimizeListFile = argumentsParser.getLastValue();
                    } else {
                        this.context.err.println("--optimize-list and --no-optimize-list are incompatible.");
                        throw new UsageException();
                    }
                } else if (argumentsParser.isArg("--keep-classes")) {
                    this.keepClassesInJar = true;
                } else if (argumentsParser.isArg("--output=")) {
                    this.outName = argumentsParser.getLastValue();
                    if (new File(this.outName).isDirectory()) {
                        this.jarOutput = false;
                        this.outputIsDirectory = true;
                    } else if (FileUtils.hasArchiveSuffix(this.outName)) {
                        this.jarOutput = true;
                    } else if (!this.outName.endsWith(Main.DEX_EXTENSION) && !this.outName.equals("-")) {
                        PrintStream printStream = this.context.err;
                        printStream.println("unknown output extension: " + this.outName);
                        throw new UsageException();
                    } else {
                        this.jarOutput = false;
                        this.outputIsDirectDex = true;
                    }
                } else if (argumentsParser.isArg("--dump-to=")) {
                    this.humanOutName = argumentsParser.getLastValue();
                } else if (argumentsParser.isArg("--dump-width=")) {
                    this.dumpWidth = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg("--dump-method=")) {
                    this.methodToDump = argumentsParser.getLastValue();
                    this.jarOutput = false;
                } else if (argumentsParser.isArg("--positions=")) {
                    String intern = argumentsParser.getLastValue().intern();
                    if (intern == "none") {
                        this.positionInfo = 1;
                    } else if (intern == "important") {
                        this.positionInfo = 3;
                    } else if (intern == "lines") {
                        this.positionInfo = 2;
                    } else {
                        PrintStream printStream2 = this.context.err;
                        printStream2.println("unknown positions option: " + intern);
                        throw new UsageException();
                    }
                } else if (argumentsParser.isArg("--no-locals")) {
                    this.localInfo = false;
                } else if (argumentsParser.isArg("--num-threads=")) {
                    this.numThreads = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg(INCREMENTAL_OPTION)) {
                    this.incremental = true;
                } else if (argumentsParser.isArg("--force-jumbo")) {
                    this.forceJumbo = true;
                } else if (argumentsParser.isArg(MULTI_DEX_OPTION)) {
                    this.multiDex = true;
                } else if (argumentsParser.isArg("--main-dex-list=")) {
                    this.mainDexListFile = argumentsParser.getLastValue();
                } else if (argumentsParser.isArg(MINIMAL_MAIN_DEX_OPTION)) {
                    this.minimalMainDex = true;
                } else if (argumentsParser.isArg("--set-max-idx-number=")) {
                    this.maxNumberOfIdxPerDex = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg("--input-list=")) {
                    File file = new File(argumentsParser.getLastValue());
                    try {
                        this.inputList = new ArrayList();
                        Main.readPathsFromFile(file.getAbsolutePath(), this.inputList);
                    } catch (IOException unused) {
                        PrintStream printStream3 = this.context.err;
                        printStream3.println("Unable to read input list file: " + file.getName());
                        throw new UsageException();
                    }
                } else if (argumentsParser.isArg("--min-sdk-version=")) {
                    String lastValue = argumentsParser.getLastValue();
                    try {
                        i2 = Integer.parseInt(lastValue);
                    } catch (NumberFormatException unused2) {
                        i2 = -1;
                    }
                    if (i2 >= 1) {
                        this.minSdkVersion = i2;
                    } else {
                        PrintStream printStream4 = System.err;
                        printStream4.println("improper min-sdk-version option: " + lastValue);
                        throw new UsageException();
                    }
                } else if (argumentsParser.isArg("--allow-all-interface-method-invokes")) {
                    this.allowAllInterfaceMethodInvokes = true;
                } else {
                    PrintStream printStream5 = this.context.err;
                    printStream5.println("unknown option: " + argumentsParser.getCurrent());
                    throw new UsageException();
                }
            }
        }

        public void makeOptionsObjects() {
            CfOptions cfOptions = new CfOptions();
            this.cfOptions = cfOptions;
            cfOptions.positionInfo = this.positionInfo;
            cfOptions.localInfo = this.localInfo;
            cfOptions.strictNameCheck = this.strictNameCheck;
            cfOptions.optimize = this.optimize;
            cfOptions.optimizeListFile = this.optimizeListFile;
            cfOptions.dontOptimizeListFile = this.dontOptimizeListFile;
            cfOptions.statistics = this.statistics;
            if (this.warnings) {
                cfOptions.warn = this.context.err;
            } else {
                cfOptions.warn = this.context.noop;
            }
            DexOptions dexOptions = new DexOptions(this.context.err);
            this.dexOptions = dexOptions;
            dexOptions.minSdkVersion = this.minSdkVersion;
            dexOptions.forceJumbo = this.forceJumbo;
            dexOptions.allowAllInterfaceMethodInvokes = this.allowAllInterfaceMethodInvokes;
        }

        public Arguments() {
            this(new DxContext());
        }

        public void parseFlags(String[] strArr) {
            parseFlags(new ArgumentsParser(strArr));
        }
    }
}
