package com.danikula.videocache.file;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: LruDiskUsage.java */
/* loaded from: classes2.dex */
public abstract class e implements com.danikula.videocache.file.a {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f11094a = Executors.newSingleThreadExecutor();

    /* compiled from: LruDiskUsage.java */
    /* loaded from: classes2.dex */
    private class a implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        private final File f11095a;

        public a(File file) {
            this.f11095a = file;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            e.this.e(this.f11095a);
            return null;
        }
    }

    private long d(List<File> list) {
        long j4 = 0;
        for (File file : list) {
            j4 += file.length();
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(File file) throws IOException {
        d.e(file);
        f(d.a(file.getParentFile()));
    }

    private void f(List<File> list) {
        long d4 = d(list);
        int size = list.size();
        for (File file : list) {
            if (!b(file, d4, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    d4 -= length;
                    com.danikula.videocache.h.h("Cache file " + file + " is deleted because it exceeds cache limit");
                } else {
                    com.danikula.videocache.h.e("Error deleting file " + file + " for trimming cache");
                }
            }
        }
    }

    @Override // com.danikula.videocache.file.a
    public void a(File file) throws IOException {
        this.f11094a.submit(new a(file));
    }

    protected abstract boolean b(File file, long j4, int i2);
}
