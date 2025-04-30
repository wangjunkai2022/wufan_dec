package com.mob.mgs.impl;

import com.mob.MobSDK;
import com.mob.tools.utils.DeviceHelper;
import com.umeng.analytics.pro.ai;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f53260a = new a();

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f53261b = Executors.newSingleThreadExecutor();

    /* renamed from: c  reason: collision with root package name */
    private ExecutorService f53262c = Executors.newSingleThreadExecutor();

    /* renamed from: d  reason: collision with root package name */
    private ConcurrentHashMap<String, LinkedBlockingQueue<Boolean>> f53263d = new ConcurrentHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private ConcurrentHashMap<Integer, String> f53264e = new ConcurrentHashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private ConcurrentHashMap<Integer, SelectionKey> f53265f = new ConcurrentHashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private Socket f53266g = null;

    /* renamed from: h  reason: collision with root package name */
    private int f53267h = 5;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f53269j = false;

    /* renamed from: i  reason: collision with root package name */
    private ScheduledExecutorService f53268i = Executors.newSingleThreadScheduledExecutor();

    private a() {
    }

    static /* synthetic */ int g(a aVar) {
        int i2 = aVar.f53267h;
        aVar.f53267h = i2 - 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            this.f53263d.clear();
            this.f53264e.clear();
            this.f53265f.clear();
        } catch (Throwable th) {
            e.a().b(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f53269j) {
            e.a().a("[GuardConnect] HB already started");
            return;
        }
        try {
            this.f53268i.scheduleWithFixedDelay(new Runnable() { // from class: com.mob.mgs.impl.a.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        e a4 = e.a();
                        a4.a("[GuardConnect] sendPing clientSocket: " + a.this.f53266g);
                        if (a.this.f53266g != null) {
                            OutputStream outputStream = a.this.f53266g.getOutputStream();
                            outputStream.write(ai.av.getBytes());
                            outputStream.flush();
                        }
                    } catch (Throwable th) {
                        e.a().a(th);
                    }
                }
            }, 0L, 240L, TimeUnit.SECONDS);
        } catch (Throwable th) {
            e.a().a("[GuardConnect] HB timer error", th);
        }
    }

    private void e() {
        try {
            Socket socket = this.f53266g;
            if (socket != null) {
                socket.close();
                this.f53266g = null;
            }
        } catch (Throwable th) {
            e.a().b(th);
        }
    }

    public void b() {
        this.f53261b.execute(new Runnable() { // from class: com.mob.mgs.impl.a.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (a.this.f53266g != null) {
                        a.this.f53266g.close();
                        a.this.f53266g = null;
                    }
                    a.this.f53266g = new Socket(DeviceHelper.getInstance(MobSDK.getContext()).getIPAddress(), 59898);
                    if (a.this.f53266g.isConnected()) {
                        a.this.f53267h = 5;
                        e.a().a("[GuardConnect] clientSocket connected");
                        try {
                            String packageName = MobSDK.getContext().getPackageName();
                            OutputStream outputStream = a.this.f53266g.getOutputStream();
                            outputStream.write(("lg_" + packageName).getBytes("utf-8"));
                            outputStream.flush();
                        } catch (Throwable th) {
                            e.a().b(th);
                        }
                        a.this.d();
                    }
                    InputStream inputStream = a.this.f53266g.getInputStream();
                    while (a.this.f53266g.isConnected() && !a.this.f53266g.isClosed()) {
                        byte[] bArr = new byte[1024];
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            e.a().a("[GuardConnect] client received server disconnect");
                            a.this.a(false);
                        } else {
                            String str = new String(bArr, 0, read);
                            e a4 = e.a();
                            a4.a("[GuardConnect] client received server msg: " + str);
                            if ("chk".equals(str)) {
                                try {
                                    String packageName2 = MobSDK.getContext().getPackageName();
                                    OutputStream outputStream2 = a.this.f53266g.getOutputStream();
                                    outputStream2.write(("chk_cb_" + packageName2).getBytes("utf-8"));
                                    outputStream2.flush();
                                    e a5 = e.a();
                                    a5.a("[GuardConnect] client send alive check msg callback to server: chk_cb_" + packageName2);
                                } catch (Throwable th2) {
                                    e.a().b(th2);
                                }
                            }
                        }
                    }
                } catch (SocketException e4) {
                    e a6 = e.a();
                    a6.a("[GuardConnect] client received socket exception: " + e4.getMessage());
                    e.a().a(e4);
                    a.this.a(true);
                } catch (Throwable th3) {
                    e a7 = e.a();
                    a7.a("[GuardConnect] clientSocket exception: " + th3.getMessage());
                    e.a().a(th3);
                }
            }
        });
    }

    public static a a() {
        return f53260a;
    }

    public void a(final BlockingQueue<Boolean> blockingQueue) {
        this.f53261b.execute(new Runnable() { // from class: com.mob.mgs.impl.a.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ServerSocketChannel open = ServerSocketChannel.open();
                    open.configureBlocking(false);
                    open.socket().bind(new InetSocketAddress(59898));
                    e.a().a("[GuardConnect] registerServerSocket success");
                    blockingQueue.offer(Boolean.TRUE);
                    Selector open2 = Selector.open();
                    open.register(open2, 16);
                    while (open2 != null) {
                        if (!open2.isOpen()) {
                            return;
                        }
                        if (open2.select() > 0) {
                            Iterator<SelectionKey> it2 = open2.selectedKeys().iterator();
                            while (it2.hasNext()) {
                                SelectionKey next = it2.next();
                                it2.remove();
                                if (next.isValid() && next.isAcceptable()) {
                                    SocketChannel accept = ((ServerSocketChannel) next.channel()).accept();
                                    accept.configureBlocking(false);
                                    accept.register(open2, 1);
                                }
                                if (next.isValid() && next.isReadable()) {
                                    SocketChannel socketChannel = (SocketChannel) next.channel();
                                    ByteBuffer allocate = ByteBuffer.allocate(1024);
                                    int read = socketChannel.read(allocate);
                                    e a4 = e.a();
                                    a4.a("[GuardConnect] serverSocket received bytes:" + read);
                                    if (read > 0) {
                                        String str = new String(allocate.array(), 0, read);
                                        e a5 = e.a();
                                        a5.a("[GuardConnect] serverSocket received msg:" + str);
                                        if (!ai.av.equals(str)) {
                                            if (str.startsWith("lg_")) {
                                                int port = ((InetSocketAddress) socketChannel.socket().getRemoteSocketAddress()).getPort();
                                                String substring = str.substring(3);
                                                a.this.f53264e.put(Integer.valueOf(port), substring);
                                                a.this.f53265f.put(Integer.valueOf(port), next);
                                                c.a().b(substring);
                                            } else if (str.startsWith("chk_cb_")) {
                                                a.this.a(str.substring(7));
                                            }
                                        }
                                    } else {
                                        int port2 = ((InetSocketAddress) socketChannel.socket().getRemoteSocketAddress()).getPort();
                                        String str2 = (String) a.this.f53264e.remove(Integer.valueOf(port2));
                                        a.this.f53265f.remove(Integer.valueOf(port2));
                                        e a6 = e.a();
                                        a6.a("[GuardConnect] serverSocket received client disconnect pkg: " + str2);
                                        c.a().a(str2, false);
                                        socketChannel.close();
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    e a7 = e.a();
                    a7.a("[GuardConnect] serverSocket exception: " + th.getMessage());
                    e.a().b(th);
                    a.this.c();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        LinkedBlockingQueue<Boolean> remove = this.f53263d.remove(str);
        if (remove != null) {
            remove.offer(Boolean.TRUE);
        }
    }

    public int a(String str, LinkedBlockingQueue linkedBlockingQueue) {
        int i2 = 0;
        for (Map.Entry<Integer, String> entry : this.f53264e.entrySet()) {
            if (entry.getValue().equals(str) && entry.getKey() != null) {
                this.f53263d.put(str, linkedBlockingQueue);
                SelectionKey selectionKey = this.f53265f.get(entry.getKey());
                if (selectionKey != null) {
                    i2 = a(selectionKey) ? 1 : 2;
                }
            }
        }
        return i2;
    }

    private boolean a(SelectionKey selectionKey) {
        try {
            if (selectionKey.isValid()) {
                ((SocketChannel) selectionKey.channel()).write(ByteBuffer.wrap("chk".getBytes("utf-8")));
                return true;
            }
            return false;
        } catch (Throwable th) {
            e.a().a(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z3) {
        e a4 = e.a();
        a4.a("[GuardConnect] onServerDisconnect maxRegisterClientFailedCount: " + this.f53267h + ", isConnectException: " + z3);
        e();
        this.f53262c.execute(new Runnable() { // from class: com.mob.mgs.impl.a.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (c.a().c()) {
                        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
                        a.this.a(linkedBlockingQueue);
                        if (((Boolean) linkedBlockingQueue.take()).booleanValue()) {
                            c.a().a((String) null, true);
                            return;
                        }
                    }
                    if (a.this.f53267h > 0) {
                        if (z3 && a.this.f53267h < 5) {
                            try {
                                Thread.sleep((5 - a.this.f53267h) * 1000);
                            } catch (Throwable unused) {
                            }
                        }
                        a.g(a.this);
                        a.this.b();
                    }
                } catch (Throwable th) {
                    e.a().a(th);
                }
            }
        });
    }
}
