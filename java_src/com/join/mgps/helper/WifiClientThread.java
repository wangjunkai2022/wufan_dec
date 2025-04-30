package com.join.mgps.helper;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.aidl.FightProtocal;
import com.join.mgps.aidl.FightProtocalManager;
import com.join.mgps.data.c;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class WifiClientThread {
    public static final int SERVERPORT = 8193;
    private String IP;
    private BufferedOutputStream bufferedOutputStream;
    public Context context;

    /* renamed from: in  reason: collision with root package name */
    public InputStream f50872in;
    private DataInputStream ind;
    private Handler mHandler;
    public Socket socket;
    private String TAG = getClass().getSimpleName();
    private boolean checking = true;
    private List<byte[]> datas = new ArrayList(0);

    /* loaded from: classes4.dex */
    class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50873a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f50874b;

        /* renamed from: com.join.mgps.helper.WifiClientThread$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0214a implements Runnable {
            RunnableC0214a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    Socket socket = WifiClientThread.this.socket;
                    if (socket != null && socket.isClosed()) {
                        break;
                    }
                    try {
                        Message message = new Message();
                        int available = WifiClientThread.this.ind.available();
                        while (available == 0) {
                            available = WifiClientThread.this.ind.available();
                        }
                        byte[] bArr = new byte[available];
                        WifiClientThread.this.ind.read(bArr);
                        String str = new String(bArr, "utf8");
                        String unused = WifiClientThread.this.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("client Receiver:");
                        sb.append(str);
                        FightProtocal fightProtocal = (FightProtocal) JsonMapper.getInstance().fromJson(str, FightProtocal.class);
                        if (fightProtocal.getType() == FightProtocal.TYPE_ACK) {
                            try {
                                if (fightProtocal.getNo() == FightProtocalManager.ackSignal) {
                                    message.what = 9001;
                                    message.obj = fightProtocal.getBrand() + "-" + fightProtocal.getOpponent();
                                    WifiClientThread.this.mHandler.sendMessage(message);
                                } else if (fightProtocal.getGameId().equals(a.this.f50874b)) {
                                    fightProtocal.setOpponent(AccountUtil_.getInstance_(WifiClientThread.this.context).getAccountData().getAvatarSrc());
                                    WifiClientThread.this.bufferedOutputStream.write(FightProtocalManager.ackSignalClient(fightProtocal).getBytes());
                                    WifiClientThread.this.bufferedOutputStream.flush();
                                } else {
                                    message.what = c.E;
                                    message.obj = fightProtocal.getGameId() + "_" + fightProtocal.getGameName();
                                    WifiClientThread.this.mHandler.sendMessage(message);
                                    WifiClientThread.this.close();
                                }
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_DISCONNECT) {
                            WifiClientThread.this.bufferedOutputStream.write(FightProtocalManager.ackDisconnect(fightProtocal).getBytes());
                            WifiClientThread.this.bufferedOutputStream.flush();
                            WifiClientThread.this.socket.close();
                            WifiClientThread.this.mHandler.sendEmptyMessage(9002);
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_AckDISCONNECT) {
                            WifiClientThread.this.socket.close();
                            WifiClientThread.this.mHandler.sendEmptyMessage(c.D);
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_STARTGAME) {
                            String unused2 = WifiClientThread.this.TAG;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("start game:");
                            sb2.append(available);
                            WifiClientThread.this.socket.close();
                            WifiClientThread.this.mHandler.sendEmptyMessage(c.f47311z);
                        }
                    } catch (Exception e5) {
                        String unused3 = WifiClientThread.this.TAG;
                        e5.toString();
                        WifiClientThread.this.mHandler.sendEmptyMessage(9003);
                        try {
                            Socket socket2 = WifiClientThread.this.socket;
                            if (socket2 == null) {
                                break;
                            }
                            socket2.close();
                            break;
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                }
                String unused4 = WifiClientThread.this.TAG;
            }
        }

        a(String str, String str2) {
            this.f50873a = str;
            this.f50874b = str2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                WifiClientThread.this.socket = new Socket(this.f50873a, 8193);
                WifiClientThread.this.socket.setKeepAlive(true);
                WifiClientThread.this.ind = new DataInputStream(WifiClientThread.this.socket.getInputStream());
                WifiClientThread.this.bufferedOutputStream = new BufferedOutputStream(WifiClientThread.this.socket.getOutputStream());
                new Thread(new RunnableC0214a()).start();
            } catch (Exception e4) {
                String unused = WifiClientThread.this.TAG;
                WifiClientThread.this.mHandler.sendEmptyMessage(20000);
                WifiClientThread.this.socket = null;
                e4.printStackTrace();
            }
        }
    }

    public WifiClientThread(Context context, Handler handler) {
        this.context = context;
        this.mHandler = handler;
    }

    public void close() {
        if (this.socket != null) {
            try {
                send(c.f47306u.getBytes("utf8"));
                this.socket.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        this.socket = null;
        System.gc();
    }

    public void disConnect() {
        try {
            if (this.bufferedOutputStream != null && !this.socket.isClosed()) {
                this.bufferedOutputStream.write(FightProtocalManager.disconnect().getBytes());
                this.bufferedOutputStream.flush();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public byte[] get() {
        byte[] bArr = this.datas.get(0);
        this.datas.remove(0);
        return bArr;
    }

    public void run(String str, String str2) {
        new a(str, str2).start();
    }

    public void send(byte[] bArr) {
        Socket socket = this.socket;
        if (socket != null && !socket.isClosed()) {
            try {
                this.bufferedOutputStream.write(bArr);
                this.bufferedOutputStream.flush();
                return;
            } catch (Exception e4) {
                this.checking = false;
                this.mHandler.sendEmptyMessage(9002);
                e4.printStackTrace();
                close();
                return;
            }
        }
        this.checking = false;
    }

    public void close(boolean z3) {
        try {
            Socket socket = this.socket;
            if (socket != null) {
                socket.close();
            }
            if (z3) {
                this.mHandler.sendEmptyMessage(9002);
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }
}
