package app.mgsim.arena;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class UDPHelper {
    private static final String TAG = "ArenaUDP";
    private static int UPD_PORT = 12306;
    private DatagramSocket mClient;
    private final Context mContext;
    private WifiManager.MulticastLock mLock;
    private volatile int mRetryCount = 10;
    private ConcurrentHashMap<Integer, AreaInfo> mAreaMaps = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class UDPReceiveThread extends SocketThread {
        private UDPReceiveThread() {
        }

        @Override // app.mgsim.arena.SocketThread
        protected void execute() {
            try {
                try {
                    UDPHelper.this.mLock.acquire();
                    byte[] bArr = new byte[10];
                    DatagramPacket datagramPacket = new DatagramPacket(bArr, 10);
                    while (UDPHelper.this.mClient != null && !UDPHelper.this.mClient.isClosed()) {
                        UDPHelper.this.mClient.receive(datagramPacket);
                        ByteBuffer wrap = ByteBuffer.wrap(bArr);
                        wrap.order(ByteOrder.LITTLE_ENDIAN);
                        byte b4 = wrap.get();
                        long currentTimeMillis = System.currentTimeMillis() - wrap.getLong();
                        UDPHelper uDPHelper = UDPHelper.this;
                        uDPHelper.printMsg("receive meg for area: " + ((int) b4) + "---get ping time :" + currentTimeMillis);
                        UDPHelper.this.updateMapForPings(b4, currentTimeMillis);
                    }
                    UDPHelper.this.printMsg("UDPReceiveThread client is null or is closed----");
                } catch (Exception e4) {
                    if (UDPHelper.this.mClient != null && !UDPHelper.this.mClient.isClosed()) {
                        UDPHelper.this.printMsg("UDPReceiveThread while exception ,restart receive thread...");
                        UDPHelper.this.restartReceiveThread();
                    }
                    UDPHelper uDPHelper2 = UDPHelper.this;
                    uDPHelper2.printMsg("UDPReceiveThread while exception:" + e4.getMessage());
                }
            } finally {
                UDPHelper.this.printMsg("UDPReceiveThread finally----");
                UDPHelper.this.releaseWifiLock();
            }
        }
    }

    /* loaded from: classes2.dex */
    private class UDPSendThread extends SocketThread {
        private AreaInfo info;
        int retryCount;

        public UDPSendThread(AreaInfo areaInfo) {
            this.info = areaInfo;
        }

        @Override // app.mgsim.arena.SocketThread
        protected void execute() {
            int i2;
            ByteBuffer byteBuffer = null;
            try {
                byteBuffer = UDPHelper.this.createBuf(9);
                while (UDPHelper.this.mClient != null && !UDPHelper.this.mClient.isClosed()) {
                    byteBuffer.clear();
                    String host = this.info.getHost();
                    int port = this.info.getPort();
                    long currentTimeMillis = System.currentTimeMillis();
                    byteBuffer.put((byte) this.info.getArea());
                    byteBuffer.putLong(currentTimeMillis);
                    UDPHelper.this.mClient.send(new DatagramPacket(byteBuffer.array(), 0, byteBuffer.array().length, InetAddress.getByName(host), port));
                    Thread.sleep(5000L);
                }
                UDPHelper.this.printMsg("UDPSendThread client is null or client is closed---");
            } catch (Exception e4) {
                if (byteBuffer != null) {
                    try {
                        byteBuffer.clear();
                    } catch (Exception unused) {
                    }
                }
                if (UDPHelper.this.mClient != null && !UDPHelper.this.mClient.isClosed() && (i2 = this.retryCount) <= 10) {
                    this.retryCount = i2 + 1;
                    UDPHelper.this.printMsg("UDPSendThread while exception restart send thread....");
                    execute();
                }
                UDPHelper uDPHelper = UDPHelper.this;
                uDPHelper.printMsg("UDPSendThread while exception:" + e4.getMessage());
            }
        }
    }

    public UDPHelper(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ByteBuffer createBuf(int i2) {
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        return allocate;
    }

    private void initUDPClient() {
        try {
            DatagramSocket datagramSocket = new DatagramSocket(UPD_PORT);
            this.mClient = datagramSocket;
            datagramSocket.setSoTimeout(10000);
        } catch (SocketException e4) {
            if (this.mRetryCount > 0) {
                UPD_PORT++;
                initUDPClient();
            }
            printMsg("initUDP -->mRetryCount:" + this.mRetryCount + "--SocketException: " + e4.getMessage());
            this.mRetryCount = this.mRetryCount + (-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartReceiveThread() {
        releaseWifiLock();
        this.mLock = ((WifiManager) this.mContext.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).createMulticastLock("test udp wifi");
        new Thread(new UDPReceiveThread()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMapForPings(byte b4, long j4) {
        synchronized (this.mAreaMaps) {
            Enumeration<AreaInfo> elements = this.mAreaMaps.elements();
            while (true) {
                if (!elements.hasMoreElements()) {
                    break;
                }
                AreaInfo nextElement = elements.nextElement();
                if (nextElement != null && nextElement.getArea() == b4) {
                    nextElement.setPingTime(j4);
                    this.mAreaMaps.replace(Integer.valueOf(b4), nextElement);
                    break;
                }
            }
        }
    }

    public ConcurrentHashMap<Integer, AreaInfo> getAreaMaps() {
        ConcurrentHashMap<Integer, AreaInfo> concurrentHashMap;
        synchronized (this.mAreaMaps) {
            concurrentHashMap = this.mAreaMaps;
        }
        return concurrentHashMap;
    }

    public void initUDPAndStart(AreaInfo[] areaInfoArr) {
        this.mAreaMaps.clear();
        for (AreaInfo areaInfo : areaInfoArr) {
            this.mAreaMaps.put(Integer.valueOf(areaInfo.getArea()), areaInfo);
        }
        if (this.mLock == null) {
            this.mLock = ((WifiManager) this.mContext.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).createMulticastLock("test udp wifi");
        }
        this.mRetryCount = 10;
        initUDPClient();
        new Thread(new UDPReceiveThread()).start();
        for (AreaInfo areaInfo2 : areaInfoArr) {
            new Thread(new UDPSendThread(areaInfo2)).start();
        }
    }

    void printMsg(String str) {
    }

    void releaseWifiLock() {
        try {
            WifiManager.MulticastLock multicastLock = this.mLock;
            if (multicastLock != null) {
                multicastLock.release();
            }
        } catch (Exception e4) {
            printMsg("releaseWifiLock mLock  release exception----" + e4.getMessage());
        }
    }

    public void stop() {
        DatagramSocket datagramSocket = this.mClient;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.mClient = null;
        }
        this.mRetryCount = 10;
        this.mAreaMaps.clear();
    }

    public void updateMaps(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        synchronized (this.mAreaMaps) {
            Enumeration<AreaInfo> elements = this.mAreaMaps.elements();
            while (elements.hasMoreElements()) {
                AreaInfo nextElement = elements.nextElement();
                if (nextElement != null) {
                    if (nextElement.getArea() == 1) {
                        nextElement.setOnLinePeopleCounts(areaOnlinePeopleCount.getBj());
                        this.mAreaMaps.replace(1, nextElement);
                    } else if (nextElement.getArea() == 2) {
                        nextElement.setOnLinePeopleCounts(areaOnlinePeopleCount.getSh());
                        this.mAreaMaps.replace(2, nextElement);
                    } else if (nextElement.getArea() == 3) {
                        nextElement.setOnLinePeopleCounts(areaOnlinePeopleCount.getGz());
                        this.mAreaMaps.replace(3, nextElement);
                    }
                }
            }
        }
    }
}
