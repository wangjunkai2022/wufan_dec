package com.github.snowdream.android.app.downloader;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: CommonDownloadFactory.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: f  reason: collision with root package name */
    private static b f13937f;

    /* renamed from: a  reason: collision with root package name */
    InterfaceC0098b f13938a;

    /* renamed from: b  reason: collision with root package name */
    private List<InterfaceC0098b> f13939b = Collections.synchronizedList(new ArrayList());

    /* renamed from: c  reason: collision with root package name */
    private Map<String, c> f13940c = new ConcurrentHashMap(0);

    /* renamed from: d  reason: collision with root package name */
    private ThreadPoolExecutor f13941d = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    /* renamed from: e  reason: collision with root package name */
    private Handler f13942e = new a();

    /* compiled from: CommonDownloadFactory.java */
    /* loaded from: classes2.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            synchronized (b.this.f13939b) {
                if (b.this.f13938a == null) {
                    return;
                }
                String obj = message.obj.toString();
                InterfaceC0098b interfaceC0098b = b.this.f13938a;
                int i2 = message.what;
                if (i2 == 2) {
                    interfaceC0098b.onStart(message.obj.toString());
                } else if (i2 == 4) {
                    interfaceC0098b.onError(obj);
                    b.this.l(obj);
                } else if (i2 == 3) {
                    interfaceC0098b.onStop(obj);
                    b.this.l(obj);
                } else if (i2 == 1) {
                    interfaceC0098b.onFinish(message.obj.toString());
                    b.this.l(obj);
                } else if (i2 == 7) {
                    interfaceC0098b.updateSize("url", Long.parseLong(message.obj.toString()));
                } else if (i2 == 5) {
                    try {
                        String[] split = message.obj.toString().split(";");
                        interfaceC0098b.onProgress(split[0], Integer.parseInt(split[2]), split[1]);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    /* compiled from: CommonDownloadFactory.java */
    /* renamed from: com.github.snowdream.android.app.downloader.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0098b {
        void onError(String str);

        void onFinish(String str);

        void onProgress(String str, int i2, String str2);

        void onStart(String str);

        void onStop(String str);

        void onWait(String str);

        void updateSize(String str, long j4);
    }

    private b() {
    }

    public static b e() {
        if (f13937f == null) {
            f13937f = new b();
        }
        return f13937f;
    }

    public String b(c cVar) {
        if (this.f13940c == null) {
            return null;
        }
        if (cVar == null || cVar.l() == null || cVar.l().equals("")) {
            return "";
        }
        String l4 = cVar.l();
        if (this.f13940c.get(cVar.l()) != null) {
            return l4;
        }
        cVar.r(this.f13942e);
        Message obtain = Message.obtain();
        obtain.obj = l4;
        obtain.what = 6;
        this.f13942e.sendMessage(obtain);
        synchronized (this.f13940c) {
            this.f13940c.put(l4, cVar);
        }
        this.f13941d.execute(cVar);
        return l4;
    }

    public void c(String str) {
        c cVar = this.f13940c.get(str);
        if (cVar != null) {
            cVar.e();
        }
    }

    public void d() {
        this.f13940c.clear();
    }

    public InterfaceC0098b f() {
        InterfaceC0098b interfaceC0098b;
        synchronized (this.f13939b) {
            interfaceC0098b = this.f13938a;
        }
        return interfaceC0098b;
    }

    public int g() {
        Map<String, c> map = this.f13940c;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public void h() {
        this.f13941d.purge();
        this.f13941d.getQueue();
    }

    public void i() {
        Map<String, c> map = this.f13940c;
        if (map == null) {
            return;
        }
        for (String str : map.keySet()) {
            this.f13941d.remove(this.f13940c.get(str));
            if (this.f13940c.get(str) != null) {
                this.f13940c.get(str).e();
                this.f13940c.remove(str);
            }
        }
    }

    public void j(InterfaceC0098b interfaceC0098b) {
        synchronized (this.f13939b) {
            Iterator<InterfaceC0098b> it2 = this.f13939b.iterator();
            while (it2.hasNext()) {
                if (interfaceC0098b == it2.next()) {
                    it2.remove();
                }
            }
        }
    }

    public void k(String str) {
        this.f13941d.remove(this.f13940c.get(str));
    }

    public void l(String str) {
        Map<String, c> map = this.f13940c;
        if (map == null) {
            return;
        }
        synchronized (map) {
            if (this.f13938a != null && this.f13940c.get(str) != null) {
                this.f13940c.get(str).e();
                this.f13940c.remove(str);
            }
        }
    }

    public void m(InterfaceC0098b interfaceC0098b) {
        synchronized (this.f13939b) {
            this.f13938a = interfaceC0098b;
        }
    }

    public synchronized void n() {
        Map<String, c> map;
        try {
            this.f13941d.shutdownNow();
            this.f13941d.awaitTermination(1L, TimeUnit.MILLISECONDS);
            this.f13941d = null;
            map = this.f13940c;
        } catch (InterruptedException e4) {
            e4.printStackTrace();
            this.f13941d = null;
            Map<String, c> map2 = this.f13940c;
            if (map2 == null) {
                return;
            }
            map2.clear();
        }
        if (map == null) {
            return;
        }
        map.clear();
        this.f13940c = null;
    }
}
