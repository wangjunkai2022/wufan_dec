package de.robv.android.xposed;

import dalvik.system.DexClassLoader;
import dalvik.system.DexFile;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.IXposedHookZygoteInit;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public final class XposedInit {
    private static final String INSTANT_RUN_CLASS = "com.android.tools.fd.runtime.BootstrapApplication";
    private static final String TAG = "SandXposed";
    private static boolean disableResources = true;
    private static volatile AtomicBoolean bootstrapHooked = new AtomicBoolean(false);
    private static volatile AtomicBoolean modulesLoaded = new AtomicBoolean(false);

    private XposedInit() {
    }

    static void hookResources() throws Throwable {
    }

    public static void loadModule(String modulePath, String moduleOdexDir, String moduleSoPath, ClassLoader topClassLoader) {
        if (!new File(modulePath).exists()) {
            return;
        }
        try {
            DexFile dexFile = new DexFile(modulePath);
            if (dexFile.loadClass(INSTANT_RUN_CLASS, topClassLoader) != null) {
                XposedHelpers.closeSilently(dexFile);
            } else if (dexFile.loadClass(XposedBridge.class.getName(), topClassLoader) != null) {
                XposedHelpers.closeSilently(dexFile);
            } else {
                XposedHelpers.closeSilently(dexFile);
                ZipFile zipFile = null;
                try {
                    ZipFile zipFile2 = new ZipFile(modulePath);
                    try {
                        ZipEntry entry = zipFile2.getEntry("assets/xposed_init");
                        if (entry == null) {
                            XposedHelpers.closeSilently(zipFile2);
                            return;
                        }
                        InputStream inputStream = zipFile2.getInputStream(entry);
                        DexClassLoader dexClassLoader = new DexClassLoader(modulePath, moduleOdexDir, moduleSoPath, topClassLoader);
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                        while (true) {
                            try {
                                try {
                                    String readLine = bufferedReader.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    String trim = readLine.trim();
                                    if (!trim.isEmpty() && !trim.startsWith("#")) {
                                        try {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("  Loading class ");
                                            sb.append(trim);
                                            Class<?> loadClass = dexClassLoader.loadClass(trim);
                                            if (IXposedMod.class.isAssignableFrom(loadClass) && (!disableResources || !IXposedHookInitPackageResources.class.isAssignableFrom(loadClass))) {
                                                Object newInstance = loadClass.newInstance();
                                                if (newInstance instanceof IXposedHookZygoteInit) {
                                                    IXposedHookZygoteInit.StartupParam startupParam = new IXposedHookZygoteInit.StartupParam();
                                                    startupParam.modulePath = modulePath;
                                                    startupParam.startsSystemServer = false;
                                                    ((IXposedHookZygoteInit) newInstance).initZygote(startupParam);
                                                }
                                                if (newInstance instanceof IXposedHookLoadPackage) {
                                                    XposedBridge.hookLoadPackage(new IXposedHookLoadPackage.Wrapper((IXposedHookLoadPackage) newInstance));
                                                }
                                                if (newInstance instanceof IXposedHookInitPackageResources) {
                                                    throw new UnsupportedOperationException("can not hook resource!");
                                                    break;
                                                }
                                            }
                                        } catch (Throwable unused) {
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append("    Failed to load class ");
                                            sb2.append(trim);
                                        }
                                    }
                                } catch (IOException unused2) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("  Failed to load module from ");
                                    sb3.append(modulePath);
                                }
                            } finally {
                                XposedHelpers.closeSilently(inputStream);
                                XposedHelpers.closeSilently(zipFile2);
                            }
                        }
                    } catch (IOException unused3) {
                        zipFile = zipFile2;
                        XposedHelpers.closeSilently(zipFile);
                    }
                } catch (IOException unused4) {
                }
            }
        } catch (IOException unused5) {
        }
    }

    private static boolean needsToCloseFilesForFork() {
        return false;
    }
}
