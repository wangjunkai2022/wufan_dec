package org.androidannotations.api;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewDebug;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* compiled from: ViewServer.java */
/* loaded from: classes5.dex */
public class c implements Runnable {

    /* renamed from: j  reason: collision with root package name */
    private static final int f73158j = 4939;

    /* renamed from: k  reason: collision with root package name */
    private static final int f73159k = 10;

    /* renamed from: l  reason: collision with root package name */
    private static final String f73160l = "user";

    /* renamed from: m  reason: collision with root package name */
    private static final String f73161m = "ViewServer";

    /* renamed from: n  reason: collision with root package name */
    private static final String f73162n = "4";

    /* renamed from: o  reason: collision with root package name */
    private static final String f73163o = "4";

    /* renamed from: p  reason: collision with root package name */
    private static final String f73164p = "PROTOCOL";

    /* renamed from: q  reason: collision with root package name */
    private static final String f73165q = "SERVER";

    /* renamed from: r  reason: collision with root package name */
    private static final String f73166r = "LIST";

    /* renamed from: s  reason: collision with root package name */
    private static final String f73167s = "AUTOLIST";

    /* renamed from: t  reason: collision with root package name */
    private static final String f73168t = "GET_FOCUS";

    /* renamed from: u  reason: collision with root package name */
    private static c f73169u;

    /* renamed from: a  reason: collision with root package name */
    private ServerSocket f73170a;

    /* renamed from: b  reason: collision with root package name */
    private final int f73171b;

    /* renamed from: c  reason: collision with root package name */
    private Thread f73172c;

    /* renamed from: d  reason: collision with root package name */
    private ExecutorService f73173d;

    /* renamed from: e  reason: collision with root package name */
    private final List<e> f73174e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<View, String> f73175f;

    /* renamed from: g  reason: collision with root package name */
    private final ReentrantReadWriteLock f73176g;

    /* renamed from: h  reason: collision with root package name */
    private View f73177h;

    /* renamed from: i  reason: collision with root package name */
    private final ReentrantReadWriteLock f73178i;

    /* compiled from: ViewServer.java */
    /* loaded from: classes5.dex */
    private static final class b extends c {
        @Override // org.androidannotations.api.c
        public void h(Activity activity) {
        }

        @Override // org.androidannotations.api.c
        public void i(View view, String str) {
        }

        @Override // org.androidannotations.api.c
        public boolean n() {
            return false;
        }

        @Override // org.androidannotations.api.c
        public void o(Activity activity) {
        }

        @Override // org.androidannotations.api.c
        public void p(View view) {
        }

        @Override // org.androidannotations.api.c
        public void r(Activity activity) {
        }

        @Override // org.androidannotations.api.c, java.lang.Runnable
        public void run() {
        }

        @Override // org.androidannotations.api.c
        public void t(View view) {
        }

        @Override // org.androidannotations.api.c
        public boolean u() throws IOException {
            return false;
        }

        @Override // org.androidannotations.api.c
        public boolean v() {
            return false;
        }

        private b() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewServer.java */
    /* renamed from: org.androidannotations.api.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0488c extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final OutputStream f73179a;

        C0488c(OutputStream outputStream) {
            this.f73179a = outputStream;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public boolean equals(Object obj) {
            return this.f73179a.equals(obj);
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f73179a.flush();
        }

        public int hashCode() {
            return this.f73179a.hashCode();
        }

        public String toString() {
            return this.f73179a.toString();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i4) throws IOException {
            this.f73179a.write(bArr, i2, i4);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f73179a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(int i2) throws IOException {
            this.f73179a.write(i2);
        }
    }

    /* compiled from: ViewServer.java */
    /* loaded from: classes5.dex */
    private class d implements Runnable, e {

        /* renamed from: a  reason: collision with root package name */
        private Socket f73180a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f73181b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f73182c;

        /* renamed from: d  reason: collision with root package name */
        private final Object[] f73183d;

        private View c(int i2) {
            if (i2 == -1) {
                c.this.f73176g.readLock().lock();
                try {
                    return c.this.f73177h;
                } finally {
                }
            }
            c.this.f73176g.readLock().lock();
            try {
                for (Map.Entry entry : c.this.f73175f.entrySet()) {
                    if (System.identityHashCode(entry.getKey()) == i2) {
                        return (View) entry.getKey();
                    }
                }
                c.this.f73176g.readLock().unlock();
                return null;
            } finally {
            }
        }

        private boolean d(Socket socket) {
            BufferedWriter bufferedWriter;
            boolean z3 = false;
            BufferedWriter bufferedWriter2 = null;
            try {
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
                } catch (IOException unused) {
                }
            } catch (Exception unused2) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                c.this.f73178i.readLock().lock();
                try {
                    View view = c.this.f73177h;
                    if (view != null) {
                        c.this.f73176g.readLock().lock();
                        try {
                            String str = (String) c.this.f73175f.get(c.this.f73177h);
                            c.this.f73176g.readLock().unlock();
                            bufferedWriter.write(Integer.toHexString(System.identityHashCode(view)));
                            bufferedWriter.write(32);
                            bufferedWriter.append((CharSequence) str);
                        } catch (Throwable th2) {
                            c.this.f73176g.readLock().unlock();
                            throw th2;
                        }
                    }
                    bufferedWriter.write(10);
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    z3 = true;
                } finally {
                    c.this.f73178i.readLock().unlock();
                }
            } catch (Exception unused3) {
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    bufferedWriter2.close();
                }
                return z3;
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
            return z3;
        }

        private boolean e(Socket socket) {
            BufferedWriter bufferedWriter;
            boolean z3 = false;
            BufferedWriter bufferedWriter2 = null;
            try {
                try {
                    c.this.f73176g.readLock().lock();
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
                } catch (IOException unused) {
                }
            } catch (Exception unused2) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                for (Map.Entry entry : c.this.f73175f.entrySet()) {
                    bufferedWriter.write(Integer.toHexString(System.identityHashCode(entry.getKey())));
                    bufferedWriter.write(32);
                    bufferedWriter.append((CharSequence) entry.getValue());
                    bufferedWriter.write(10);
                }
                bufferedWriter.write("DONE.\n");
                bufferedWriter.flush();
                c.this.f73176g.readLock().unlock();
                bufferedWriter.close();
                z3 = true;
            } catch (Exception unused3) {
                bufferedWriter2 = bufferedWriter;
                c.this.f73176g.readLock().unlock();
                if (bufferedWriter2 != null) {
                    bufferedWriter2.close();
                }
                return z3;
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter2 = bufferedWriter;
                c.this.f73176g.readLock().unlock();
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
            return z3;
        }

        private boolean f(Socket socket, String str, String str2) {
            BufferedWriter bufferedWriter = null;
            try {
                try {
                    try {
                        int indexOf = str2.indexOf(32);
                        if (indexOf == -1) {
                            indexOf = str2.length();
                        }
                        int parseLong = (int) Long.parseLong(str2.substring(0, indexOf), 16);
                        str2 = indexOf < str2.length() ? str2.substring(indexOf + 1) : "";
                        View c4 = c(parseLong);
                        if (c4 == null) {
                            return false;
                        }
                        Method declaredMethod = ViewDebug.class.getDeclaredMethod("dispatchCommand", View.class, String.class, String.class, OutputStream.class);
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(null, c4, str, str2, new C0488c(socket.getOutputStream()));
                        if (!socket.isOutputShutdown()) {
                            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
                            try {
                                bufferedWriter2.write("DONE\n");
                                bufferedWriter2.flush();
                                bufferedWriter = bufferedWriter2;
                            } catch (Exception unused) {
                                bufferedWriter = bufferedWriter2;
                                StringBuilder sb = new StringBuilder();
                                sb.append("Could not send command ");
                                sb.append(str);
                                sb.append(" with parameters ");
                                sb.append(str2);
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                bufferedWriter = bufferedWriter2;
                                if (bufferedWriter != null) {
                                    try {
                                        bufferedWriter.close();
                                    } catch (IOException unused2) {
                                    }
                                }
                                throw th;
                            }
                        }
                        if (bufferedWriter != null) {
                            bufferedWriter.close();
                            return true;
                        }
                        return true;
                    } catch (IOException unused3) {
                        return false;
                    }
                } catch (Exception unused4) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        private boolean g() {
            boolean z3;
            boolean z4;
            boolean z5;
            c.this.j(this);
            BufferedWriter bufferedWriter = null;
            try {
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(this.f73180a.getOutputStream()));
                    while (!Thread.interrupted()) {
                        try {
                            synchronized (this.f73183d) {
                                while (true) {
                                    z3 = this.f73181b;
                                    if (z3 || this.f73182c) {
                                        break;
                                    }
                                    this.f73183d.wait();
                                }
                                z4 = false;
                                if (z3) {
                                    this.f73181b = false;
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (this.f73182c) {
                                    this.f73182c = false;
                                    z4 = true;
                                }
                            }
                            if (z5) {
                                bufferedWriter2.write("LIST UPDATE\n");
                                bufferedWriter2.flush();
                            }
                            if (z4) {
                                bufferedWriter2.write("FOCUS UPDATE\n");
                                bufferedWriter2.flush();
                            }
                        } catch (Exception unused) {
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                bufferedWriter.close();
                            }
                            c.this.q(this);
                            return true;
                        } catch (Throwable th) {
                            th = th;
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException unused2) {
                                }
                            }
                            c.this.q(this);
                            throw th;
                        }
                    }
                    bufferedWriter2.close();
                } catch (IOException unused3) {
                }
            } catch (Exception unused4) {
            } catch (Throwable th2) {
                th = th2;
            }
            c.this.q(this);
            return true;
        }

        @Override // org.androidannotations.api.c.e
        public void a() {
            synchronized (this.f73183d) {
                this.f73181b = true;
                this.f73183d.notifyAll();
            }
        }

        @Override // org.androidannotations.api.c.e
        public void b() {
            synchronized (this.f73183d) {
                this.f73182c = true;
                this.f73183d.notifyAll();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            BufferedReader bufferedReader;
            Throwable th;
            String substring;
            boolean w3;
            Socket socket;
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(this.f73180a.getInputStream()), 1024);
                } catch (IOException e4) {
                    e4.printStackTrace();
                    return;
                }
            } catch (IOException unused) {
            } catch (Throwable th2) {
                bufferedReader = null;
                th = th2;
            }
            try {
                String readLine = bufferedReader.readLine();
                int indexOf = readLine.indexOf(32);
                if (indexOf == -1) {
                    substring = "";
                } else {
                    String substring2 = readLine.substring(0, indexOf);
                    substring = readLine.substring(indexOf + 1);
                    readLine = substring2;
                }
                if (c.f73164p.equalsIgnoreCase(readLine)) {
                    w3 = c.w(this.f73180a, "4");
                } else {
                    w3 = c.f73165q.equalsIgnoreCase(readLine) ? c.w(this.f73180a, "4") : c.f73166r.equalsIgnoreCase(readLine) ? e(this.f73180a) : c.f73168t.equalsIgnoreCase(readLine) ? d(this.f73180a) : c.f73167s.equalsIgnoreCase(readLine) ? g() : f(this.f73180a, readLine, substring);
                }
                if (!w3) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("An error occurred with the command: ");
                    sb.append(readLine);
                }
                try {
                    bufferedReader.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
                socket = this.f73180a;
            } catch (IOException unused2) {
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                Socket socket2 = this.f73180a;
                if (socket2 != null) {
                    socket2.close();
                }
                return;
            } catch (Throwable th3) {
                th = th3;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                Socket socket3 = this.f73180a;
                if (socket3 != null) {
                    try {
                        socket3.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
                throw th;
            }
            if (socket != null) {
                socket.close();
            }
        }

        private d(Socket socket) {
            this.f73183d = new Object[0];
            this.f73180a = socket;
            this.f73181b = false;
            this.f73182c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewServer.java */
    /* loaded from: classes5.dex */
    public interface e {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(e eVar) {
        if (this.f73174e.contains(eVar)) {
            return;
        }
        this.f73174e.add(eVar);
    }

    private void k() {
        for (e eVar : this.f73174e) {
            eVar.b();
        }
    }

    private void l() {
        for (e eVar : this.f73174e) {
            eVar.a();
        }
    }

    public static c m(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (f73160l.equals(Build.TYPE) && (applicationInfo.flags & 2) != 0) {
            if (f73169u == null) {
                f73169u = new c((int) f73158j);
            }
            if (!f73169u.n()) {
                try {
                    f73169u.u();
                } catch (IOException unused) {
                }
            }
        } else {
            f73169u = new b();
        }
        return f73169u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(e eVar) {
        this.f73174e.remove(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean w(Socket socket, String str) {
        BufferedWriter bufferedWriter;
        boolean z3 = false;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
            } catch (IOException unused) {
            }
        } catch (Exception unused2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(str);
            bufferedWriter.write("\n");
            bufferedWriter.flush();
            bufferedWriter.close();
            z3 = true;
        } catch (Exception unused3) {
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
            return z3;
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        return z3;
    }

    public void h(Activity activity) {
        String str;
        String charSequence = activity.getTitle().toString();
        if (TextUtils.isEmpty(charSequence)) {
            str = activity.getClass().getCanonicalName() + "/0x" + System.identityHashCode(activity);
        } else {
            str = charSequence + "(" + activity.getClass().getCanonicalName() + ")";
        }
        i(activity.getWindow().getDecorView(), str);
    }

    public void i(View view, String str) {
        this.f73176g.writeLock().lock();
        try {
            this.f73175f.put(view.getRootView(), str);
            this.f73176g.writeLock().unlock();
            l();
        } catch (Throwable th) {
            this.f73176g.writeLock().unlock();
            throw th;
        }
    }

    public boolean n() {
        Thread thread = this.f73172c;
        return thread != null && thread.isAlive();
    }

    public void o(Activity activity) {
        p(activity.getWindow().getDecorView());
    }

    public void p(View view) {
        this.f73176g.writeLock().lock();
        try {
            View rootView = view.getRootView();
            this.f73175f.remove(rootView);
            this.f73176g.writeLock().unlock();
            this.f73178i.writeLock().lock();
            try {
                if (this.f73177h == rootView) {
                    this.f73177h = null;
                }
                this.f73178i.writeLock().unlock();
                l();
            } catch (Throwable th) {
                this.f73178i.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            this.f73176g.writeLock().unlock();
            throw th2;
        }
    }

    public void r(Activity activity) {
        t(activity.getWindow().getDecorView());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:4:0x0010 -> B:5:0x0011). Please submit an issue!!! */
    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f73170a = new ServerSocket(this.f73171b, 10, InetAddress.getLocalHost());
        } catch (Exception unused) {
        }
        while (this.f73170a != null && Thread.currentThread() == this.f73172c) {
            Socket accept = this.f73170a.accept();
            ExecutorService executorService = this.f73173d;
            if (executorService != null) {
                executorService.submit(new d(accept));
            } else {
                try {
                    accept.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public void t(View view) {
        View rootView;
        this.f73178i.writeLock().lock();
        if (view == null) {
            rootView = null;
        } else {
            try {
                rootView = view.getRootView();
            } catch (Throwable th) {
                this.f73178i.writeLock().unlock();
                throw th;
            }
        }
        this.f73177h = rootView;
        this.f73178i.writeLock().unlock();
        k();
    }

    public boolean u() throws IOException {
        if (this.f73172c != null) {
            return false;
        }
        this.f73172c = new Thread(this, "Local View Server [port=" + this.f73171b + "]");
        this.f73173d = Executors.newFixedThreadPool(10);
        this.f73172c.start();
        return true;
    }

    public boolean v() {
        Thread thread = this.f73172c;
        if (thread != null) {
            thread.interrupt();
            ExecutorService executorService = this.f73173d;
            if (executorService != null) {
                try {
                    executorService.shutdownNow();
                } catch (SecurityException unused) {
                }
            }
            this.f73173d = null;
            this.f73172c = null;
            try {
                this.f73170a.close();
                this.f73170a = null;
                return true;
            } catch (IOException unused2) {
            }
        }
        this.f73176g.writeLock().lock();
        try {
            this.f73175f.clear();
            this.f73176g.writeLock().unlock();
            this.f73178i.writeLock().lock();
            try {
                this.f73177h = null;
                this.f73178i.writeLock().unlock();
                return false;
            } catch (Throwable th) {
                this.f73178i.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            this.f73176g.writeLock().unlock();
            throw th2;
        }
    }

    private c() {
        this.f73174e = new CopyOnWriteArrayList();
        this.f73175f = new HashMap();
        this.f73176g = new ReentrantReadWriteLock();
        this.f73178i = new ReentrantReadWriteLock();
        this.f73171b = -1;
    }

    private c(int i2) {
        this.f73174e = new CopyOnWriteArrayList();
        this.f73175f = new HashMap();
        this.f73176g = new ReentrantReadWriteLock();
        this.f73178i = new ReentrantReadWriteLock();
        this.f73171b = i2;
    }
}
