package com.swift.sandhook.xposedcompat.classloaders;
/* loaded from: classes.dex */
public class ProxyClassLoader extends ClassLoader {
    private final ClassLoader mClassLoader;

    public ProxyClassLoader(ClassLoader parentCL, ClassLoader appCL) {
        super(parentCL);
        this.mClassLoader = appCL;
    }

    @Override // java.lang.ClassLoader
    protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        Class<?> cls;
        try {
            cls = this.mClassLoader.loadClass(name);
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls == null && (cls = super.loadClass(name, resolve)) == null) {
            throw new ClassNotFoundException();
        }
        return cls;
    }
}
