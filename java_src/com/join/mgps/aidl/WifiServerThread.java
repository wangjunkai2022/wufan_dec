package com.join.mgps.aidl;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.join.mgps.aidl.Client;
import com.join.mgps.data.c;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class WifiServerThread {
    private static final int SERVERPORT = 8193;
    private Context context;
    private Handler handler;
    private ServerSocket mserverSocket;
    private int single;
    private String TAG = getClass().getSimpleName();
    private Boolean isrun = Boolean.TRUE;
    private Map<String, Client> clientMap = new HashMap(0);

    /* loaded from: classes3.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                WifiServerThread.this.mserverSocket = new ServerSocket(8193);
                while (WifiServerThread.this.isrun.booleanValue() && !WifiServerThread.this.mserverSocket.isClosed()) {
                    String unused = WifiServerThread.this.TAG;
                    Socket accept = WifiServerThread.this.mserverSocket.accept();
                    b bVar = new b(accept);
                    Client client = new Client();
                    client.setUuid(accept.getInetAddress().getHostAddress());
                    client.setsClient(bVar);
                    WifiServerThread.this.clientMap.put(accept.getInetAddress().getHostAddress(), client);
                    new Thread(bVar).start();
                }
                String unused2 = WifiServerThread.this.TAG;
                if (WifiServerThread.this.mserverSocket != null) {
                    try {
                        WifiServerThread.this.mserverSocket.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Socket f44713a;

        /* renamed from: c  reason: collision with root package name */
        private BufferedOutputStream f44715c;

        /* renamed from: d  reason: collision with root package name */
        DataInputStream f44716d;

        /* renamed from: g  reason: collision with root package name */
        private Client f44719g;

        /* renamed from: h  reason: collision with root package name */
        private Object f44720h;

        /* renamed from: b  reason: collision with root package name */
        private BufferedReader f44714b = null;

        /* renamed from: e  reason: collision with root package name */
        private List<byte[]> f44717e = new ArrayList(0);

        /* renamed from: f  reason: collision with root package name */
        private boolean f44718f = false;

        public b(Socket socket) {
            this.f44713a = null;
            this.f44713a = socket;
            try {
                this.f44715c = new BufferedOutputStream(this.f44713a.getOutputStream());
                this.f44716d = new DataInputStream(this.f44713a.getInputStream());
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }

        public void a() {
            Socket socket = this.f44713a;
            if (socket != null) {
                try {
                    if (!socket.isClosed()) {
                        this.f44713a.shutdownInput();
                        this.f44713a.shutdownOutput();
                        this.f44713a.close();
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            WifiServerThread.this.handler.sendEmptyMessage(9002);
        }

        public byte[] b() {
            byte[] bArr = this.f44717e.get(0);
            this.f44717e.remove(0);
            return bArr;
        }

        public String c() {
            return this.f44713a.getInetAddress().getHostAddress();
        }

        public boolean d() {
            Socket socket = this.f44713a;
            if (socket == null || socket.isInputShutdown() || this.f44713a.isOutputShutdown()) {
                return true;
            }
            return this.f44713a.isClosed();
        }

        public void e(byte[] bArr) {
            try {
                String str = new String(bArr, "gbk");
                String unused = WifiServerThread.this.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("server send=");
                sb.append(str);
                this.f44715c.write(bArr);
                this.f44715c.flush();
            } catch (Exception e4) {
                e4.printStackTrace();
                WifiServerThread.this.handler.sendEmptyMessage(9002);
                WifiServerThread.this.isrun = Boolean.FALSE;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f44719g = (Client) WifiServerThread.this.clientMap.get(this.f44713a.getInetAddress().getHostAddress());
            WifiServerThread.this.single = (int) (Math.random() * 100.0d);
            String unused = WifiServerThread.this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("send =wifiap_single_acknowledge");
            sb.append(WifiServerThread.this.single);
            try {
                this.f44715c.write((c.f47303r + WifiServerThread.this.single).getBytes());
                this.f44715c.flush();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            while (!this.f44713a.isClosed()) {
                try {
                    Message message = new Message();
                    int available = this.f44716d.available();
                    while (available == 0) {
                        available = this.f44716d.available();
                    }
                    byte[] bArr = new byte[available];
                    this.f44716d.read(bArr);
                    String str = new String(bArr, "gbk");
                    String unused2 = WifiServerThread.this.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("server receive:");
                    sb2.append(available);
                    this.f44719g.setLastResponseTime(System.currentTimeMillis());
                    if (!this.f44718f && str.startsWith(c.f47303r) && Integer.parseInt(str.split(c.f47303r)[1].replace("\n", "")) == WifiServerThread.this.single + 1) {
                        String unused3 = WifiServerThread.this.TAG;
                        ((Client) WifiServerThread.this.clientMap.get(this.f44713a.getInetAddress().getHostAddress())).setStatus(Client.ClientStatus.BOUND);
                        message.what = 9001;
                        WifiServerThread.this.handler.sendMessage(message);
                        this.f44718f = true;
                        if (this.f44719g == null) {
                            this.f44713a.close();
                            return;
                        }
                        continue;
                    } else if (!str.startsWith(c.f47305t)) {
                        if (str.startsWith(c.f47306u)) {
                            a();
                        } else {
                            this.f44717e.add(bArr);
                        }
                    }
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
        }
    }

    public WifiServerThread(Context context, Handler handler) {
        this.context = context;
        this.handler = handler;
    }

    public void close() {
        for (Map.Entry<String, Client> entry : this.clientMap.entrySet()) {
            entry.getValue().getsClient().a();
            this.clientMap.clear();
        }
    }

    public byte[] getData() {
        if (this.clientMap.size() == 0) {
            return new byte[0];
        }
        Iterator<Map.Entry<String, Client>> it2 = this.clientMap.entrySet().iterator();
        return it2.hasNext() ? it2.next().getValue().getsClient().b() : new byte[0];
    }

    public String getIP() {
        Iterator<Map.Entry<String, Client>> it2 = this.clientMap.entrySet().iterator();
        return it2.hasNext() ? it2.next().getValue().getsClient().c() : com.join.mgps.socket.entity.b.f52090j;
    }

    public boolean isShutDown() {
        ServerSocket serverSocket = this.mserverSocket;
        if (serverSocket == null) {
            return true;
        }
        return serverSocket.isClosed();
    }

    public void run() {
        ServerSocket serverSocket = this.mserverSocket;
        if (serverSocket == null || serverSocket.isClosed()) {
            new a().start();
        }
    }

    public void send(InputStream inputStream) {
    }

    public void send(byte[] bArr) {
        if (this.clientMap.size() == 0) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("server send:");
            sb.append(new String(bArr, "gbk"));
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
        for (Map.Entry<String, Client> entry : this.clientMap.entrySet()) {
            entry.getValue().getsClient().e(bArr);
        }
    }

    public void shutDown() {
        try {
            if (this.mserverSocket != null) {
                send(c.f47306u.getBytes("gbk"));
                close();
                this.mserverSocket.close();
            }
            this.isrun = Boolean.FALSE;
            this.mserverSocket = null;
            System.gc();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }
}
