package app.mgsim.arena;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.concurrent.Executors;
import org.jboss.netty.bootstrap.b;
import org.jboss.netty.buffer.c;
import org.jboss.netty.channel.e;
import org.jboss.netty.channel.j;
import org.jboss.netty.channel.o;
import org.jboss.netty.channel.s;
import org.jboss.netty.channel.socket.nio.n;
/* loaded from: classes2.dex */
public class ArenaSocketThread extends SocketThread {
    private static final long INTERVAL_NEXT_CHECK_HEARTBEAT_TIME = 10000;
    private static final long REQUESTID_HEARBEAT = -1;
    private static final String TAG = "ArenaService";
    private b bootstrap;
    private String host;
    private final SocketListener mSocketListener;
    private int port;
    private e writeChannel;
    public long mLastHeartBeatStartTime = 0;
    public final CheckThread mHeartBeatThread = new CheckThread() { // from class: app.mgsim.arena.ArenaSocketThread.2
        @Override // app.mgsim.arena.CheckThread
        public boolean check() {
            long currentTimeMillis = System.currentTimeMillis();
            ArenaSocketThread arenaSocketThread = ArenaSocketThread.this;
            if (currentTimeMillis - arenaSocketThread.mLastHeartBeatStartTime > 10000) {
                arenaSocketThread.mLastHeartBeatStartTime = System.currentTimeMillis();
                return true;
            }
            return false;
        }

        @Override // app.mgsim.arena.CheckThread
        public void handle() {
            try {
                ArenaSocketThread.this.printMessgae("ArenaService", "---send heart beat to server----");
                ArenaSocketThread.this.sendDataToServer(ByteBufferBuilderFactory.ping(-1L));
            } catch (Exception e4) {
                ArenaSocketThread arenaSocketThread = ArenaSocketThread.this;
                arenaSocketThread.printMessgae("ArenaService", "---send heart beat to server exception:" + e4.getMessage());
                ArenaSocketThread.this.handleExit(SocketUtils.createSocketErrorForBadNetwork("网络异常！"));
            }
        }

        @Override // app.mgsim.arena.CheckThread
        public void next() {
            try {
                Thread.sleep(1000L);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    };

    public ArenaSocketThread(SocketListener socketListener) {
        this.mSocketListener = socketListener;
    }

    @Override // app.mgsim.arena.SocketThread
    protected void execute() {
        try {
            b bVar = new b(new n(Executors.newCachedThreadPool(), Executors.newCachedThreadPool()));
            this.bootstrap = bVar;
            Boolean bool = Boolean.TRUE;
            bVar.k("tcpNoDelay", bool);
            this.bootstrap.k("keepAlive", bool);
            this.bootstrap.o(new o() { // from class: app.mgsim.arena.ArenaSocketThread.1
                @Override // org.jboss.netty.channel.o
                public org.jboss.netty.channel.n getPipeline() throws Exception {
                    return s.S(new ProtobufferDecoder(), new BattleServiceHandler(ArenaSocketThread.this.mSocketListener));
                }
            });
            j p3 = this.bootstrap.p(new InetSocketAddress(this.host, this.port));
            p3.awaitUninterruptibly();
            this.writeChannel = p3.getChannel();
        } catch (Exception e4) {
            printMessgae("ArenaService", "init socket exception : " + e4.getMessage());
            handleExit(SocketUtils.createSocketErrorForBadNetwork("初始化大厅服务器异常！"));
        }
    }

    public void handleExit(SocketError socketError) {
        this.mSocketListener.onError(socketError);
        e eVar = this.writeChannel;
        if (eVar != null) {
            eVar.close();
        }
        this.writeChannel = null;
        b bVar = this.bootstrap;
        if (bVar != null) {
            bVar.shutdown();
        }
        this.bootstrap = null;
    }

    public void sendDataToServer(ByteBuffer byteBuffer) {
        try {
            c cVar = new c(byteBuffer.array().length);
            cVar.B(byteBuffer.array());
            this.writeChannel.write(cVar);
        } catch (Exception e4) {
            handleExit(SocketUtils.createSocketErrorForBadNetwork("消息发送失败！"));
            printMessgae("ArenaService", "writeData IOException :" + e4.getMessage());
            e4.printStackTrace();
        }
    }

    public void setLastHeartBeatStartTime(long j4) {
        this.mLastHeartBeatStartTime = j4;
    }

    public void setLobbyServer(String str, int i2) {
        this.host = str;
        this.port = i2;
    }
}
