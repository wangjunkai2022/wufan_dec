package com.join.mgps.socket.fight.arena;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import app.mgsim.arena.AreaInfo;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.ArenaSocketThread;
import app.mgsim.arena.ByteBufferBuilderFactory;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import app.mgsim.arena.SocketUtils;
import app.mgsim.arena.UDPHelper;
import com.join.android.app.common.utils.f;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.rpc.impl.j;
import com.join.mgps.rpc.k;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.Params;
import com.papa91.battle.protocol.Response;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.EService;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
@EService
/* loaded from: classes4.dex */
public class ArenaService extends Service {

    /* renamed from: r  reason: collision with root package name */
    private static final String f52120r = "ArenaService";

    /* renamed from: c  reason: collision with root package name */
    private AreaInfo f52123c;

    /* renamed from: d  reason: collision with root package name */
    private UDPHelper f52124d;

    /* renamed from: f  reason: collision with root package name */
    private AtomicLong f52126f;

    /* renamed from: g  reason: collision with root package name */
    private ConcurrentHashMap<Long, ArenaRequest> f52127g;
    @Bean

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.Util.b f52128h;

    /* renamed from: i  reason: collision with root package name */
    k f52129i;

    /* renamed from: j  reason: collision with root package name */
    k f52130j;

    /* renamed from: k  reason: collision with root package name */
    private ArenaSocketThread f52131k;

    /* renamed from: o  reason: collision with root package name */
    private BattleArea f52135o;

    /* renamed from: p  reason: collision with root package name */
    private ArenaRequest f52136p;

    /* renamed from: a  reason: collision with root package name */
    private final Object f52121a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f52122b = false;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f52125e = 0;

    /* renamed from: l  reason: collision with root package name */
    private HashSet<SocketListener.NotifyObserver> f52132l = new HashSet<>();

    /* renamed from: m  reason: collision with root package name */
    private final SocketListener f52133m = new a();

    /* renamed from: n  reason: collision with root package name */
    private ConcurrentHashMap<Integer, ArenaResponse> f52134n = new ConcurrentHashMap<>();

    /* renamed from: q  reason: collision with root package name */
    private int f52137q = 0;

    /* loaded from: classes4.dex */
    class a implements SocketListener {
        a() {
        }

        @Override // app.mgsim.arena.SocketListener
        public void executeRequest(ArenaRequest arenaRequest) {
            ArenaService.this.k(arenaRequest);
        }

        @Override // app.mgsim.arena.SocketListener
        public void onError(SocketError socketError) {
            ArenaService.this.y("-----onError  ----- ");
            ArenaService.this.f52123c = null;
            ArenaService.this.f52122b = false;
            ArenaService.this.f52124d.stop();
            ArenaService.this.f52131k.mHeartBeatThread.stop();
            ArenaService.this.w(socketError);
        }

        @Override // app.mgsim.arena.SocketListener
        public int onServerResponse(Object obj) throws Exception {
            ArenaService.this.r(obj);
            return 0;
        }

        @Override // app.mgsim.arena.SocketListener
        public void onSocketConnected() {
            ArenaRequest login;
            ArenaService.this.y("-----mArenaListener onSocketConnected----");
            ArenaService.this.f52131k.mHeartBeatThread.setContinue(true);
            ArenaService.this.f52131k.setLastHeartBeatStartTime(System.currentTimeMillis());
            new Thread(ArenaService.this.f52131k.mHeartBeatThread).start();
            String token = ArenaService.this.f52128h.getAccountData().getToken();
            int uid = ArenaService.this.f52128h.getAccountData().getUid();
            if (ArenaService.this.j(token, uid)) {
                if (ArenaService.this.f52136p != null) {
                    login = ArenaService.this.f52136p;
                } else {
                    login = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_PUBLIC);
                }
                ArenaService.this.f52131k.sendDataToServer(ByteBufferBuilderFactory.login(token, uid, "", ArenaService.this.l(login)));
            }
        }

        @Override // app.mgsim.arena.SocketListener
        public void onSocketDisconnected() {
            ArenaService.this.y("-----mArenaListener onSocketDisconnected----");
            onError(SocketUtils.createSocketErrorForBadNetwork("与大厅服务器连接断开！"));
        }
    }

    /* loaded from: classes4.dex */
    public class b extends Binder {
        public b() {
        }

        public ArenaService getService() {
            return ArenaService.this;
        }
    }

    private void B(ArenaResponse arenaResponse, ArenaRequest arenaRequest, Response response) {
        arenaResponse.request = arenaRequest;
        arenaResponse.responseType = arenaRequest.request_type;
        if (response.getStatusCode() == Response.StatusCode.RESULT_SUCCESS) {
            y("----responseByType ---- type:" + arenaResponse.responseType + "---success");
            arenaResponse.responseCode = 1;
            if (arenaResponse.responseType == ArenaConstants.ArenaCommand.CMD_LOGIN) {
                this.f52122b = true;
            }
            v(c.l(arenaResponse, response));
            return;
        }
        y("----responseByType ---- type:" + arenaResponse.responseType + "---failure");
        ArenaResponse k4 = c.k(arenaResponse, response);
        if (k4.responseType == ArenaConstants.ArenaCommand.CMD_LOGIN) {
            this.f52131k.handleExit(SocketUtils.createSocketError(6, c.g(k4)));
            return;
        }
        v(k4);
    }

    private void F(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        y("updateAreaOnlinePeopleCounts bj:" + areaOnlinePeopleCount.getBj() + "---sh:" + areaOnlinePeopleCount.getSh() + "---gz:" + areaOnlinePeopleCount.getGz());
        this.f52124d.updateMaps(areaOnlinePeopleCount);
    }

    private void G(int i2) {
        this.f52125e = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(String str, int i2) {
        synchronized (this.f52121a) {
            if (!TextUtils.isEmpty(str) && i2 > 0) {
                return true;
            }
            this.f52131k.handleExit(SocketUtils.createSocketError(4, "检测到你还没有登陆，请登陆！"));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long l(ArenaRequest arenaRequest) {
        if (this.f52126f == null) {
            this.f52126f = new AtomicLong(2L);
        }
        arenaRequest.requestId = this.f52126f.getAndIncrement();
        y("generateRequestId--request info " + arenaRequest.toString());
        this.f52127g.put(Long.valueOf(arenaRequest.requestId), arenaRequest);
        return arenaRequest.requestId;
    }

    private int p() {
        AreaInfo areaInfo;
        try {
            BattleArea n4 = n();
            if (n4 != null && (areaInfo = m().get(Integer.valueOf(n4.getNumber()))) != null) {
                int pingTime = (int) areaInfo.getPingTime();
                y("getPingValue pingTime by area:" + n4.getNumber() + "--- ping time :" + pingTime);
                return (int) areaInfo.getPingTime();
            }
            return this.f52125e;
        } catch (Exception e4) {
            y("getPingValue Exception:" + e4.getMessage());
            return this.f52125e;
        }
    }

    private void u(ArenaRequest arenaRequest) {
        try {
            this.f52136p = arenaRequest;
            String token = this.f52128h.getAccountData().getToken();
            int uid = this.f52128h.getAccountData().getUid();
            if (j(token, uid)) {
                ResultArenaBean<ArenaLobbyServer> P = this.f52130j.P(uid, token);
                if (P != null) {
                    if (P.getError() == 0) {
                        AreaInfo lobbyServer = P.getData().getLobbyServer();
                        this.f52123c = lobbyServer;
                        this.f52124d.initUDPAndStart(P.getData().getPing());
                        this.f52135o = c.c(this.f52123c.getArea());
                        y("ArenaLobbyServer info--> " + P.getData().toString());
                        this.f52131k.setLobbyServer(lobbyServer.getHost(), lobbyServer.getPort());
                        new Thread(this.f52131k).start();
                    } else if (P.getError() == 701) {
                        y("handleLogin user need retry login");
                        this.f52131k.handleExit(SocketUtils.createSocketError(3, "你的手机登陆已经失效，请重新登陆!"));
                        a("你的手机登陆已经失效，请重新登陆!");
                    } else {
                        int i2 = this.f52137q;
                        if (i2 <= 3) {
                            this.f52137q = i2 + 1;
                            u(arenaRequest);
                        } else {
                            this.f52131k.handleExit(SocketUtils.createSocketErrorForBadNetwork("获取对战大厅服务器地址失败！"));
                        }
                    }
                } else {
                    int i4 = this.f52137q;
                    if (i4 <= 3) {
                        this.f52137q = i4 + 1;
                        u(arenaRequest);
                    } else {
                        this.f52131k.handleExit(SocketUtils.createSocketErrorForBadNetwork("获取对战大厅服务器地址失败！"));
                    }
                }
            }
        } catch (Exception e4) {
            y("handleLogin exception: " + e4.getMessage());
            y("handleLogin retryCount: " + this.f52137q);
            int i5 = this.f52137q;
            if (i5 <= 3) {
                this.f52137q = i5 + 1;
                u(arenaRequest);
                return;
            }
            this.f52131k.handleExit(SocketUtils.createSocketErrorForBadNetwork("获取对战大厅服务器地址失败！"));
        }
    }

    public void A(Object obj) {
        synchronized (this.f52132l) {
            if (this.f52132l.contains(obj)) {
                this.f52132l.remove(obj);
            }
        }
    }

    @Background
    public void C(ArenaRequest arenaRequest) {
        this.f52133m.executeRequest(arenaRequest);
    }

    public void D(BattleArea battleArea) {
        this.f52135o = battleArea;
    }

    public void E(ArenaResponse arenaResponse) {
        this.f52134n.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a(String str) {
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void i() {
        y("---cancelSubscribe----");
        if (f.j(this) && s()) {
            C(ArenaRequestFactory.cancelSubscribeGameRoom());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k(ArenaRequest arenaRequest) {
        Params.RoomType roomType;
        String str = arenaRequest.request_type;
        y("dispatchRequest-->type :" + str);
        synchronized (this.f52121a) {
            if (str.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                q(arenaRequest);
            } else if (!s()) {
                this.f52131k.handleExit(SocketUtils.createSocketErrorForBadNetwork("未登陆，需要重新登陆！"));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.createRoom(this.f52128h.getAccountData().getUid(), arenaRequest.gameId, l(arenaRequest), p(), arenaRequest.coins, arenaRequest.allowPeripheralJoin, arenaRequest.allowPCJoin, arenaRequest.allowSpectatorJoin, c.o(getApplicationContext()), arenaRequest.isFromLive));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SUBSCRIBE_GAME_ROOMLIST)) {
                if (arenaRequest.roomType == 2) {
                    roomType = Params.RoomType.ELITE;
                } else {
                    roomType = Params.RoomType.NORMAL;
                }
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.subscribeGameRoom(arenaRequest.collectionId, roomType, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CHALLENGE_COINS_ATTR)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.setChallengeCoins(arenaRequest.roomId, arenaRequest.coins, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PASSWORD_ATTR)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.setRoomPassword(arenaRequest.roomId, arenaRequest.password, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SERVER_PLAY_MODE)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.setRoomServerPlayMode(arenaRequest.playMode, arenaRequest.roomId, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PERIPHERAL_JOIN_ATTR)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.setAllowPeripheralJoin(arenaRequest.roomId, arenaRequest.allowPeripheralJoin, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PC_JOIN_ALTR)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.setAllowPcJoin(arenaRequest.roomId, arenaRequest.allowPCJoin, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SPECTATOR_JOIN_ATTR)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.setAllowSpectatorJoin(arenaRequest.roomId, arenaRequest.allowSpectatorJoin, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.joinRoom(arenaRequest.roomId, arenaRequest.password, c.o(getApplicationContext()), p(), l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P1_POSITION)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.closeRoomPosition(arenaRequest.roomId, arenaRequest.position, arenaRequest.isClosePosition, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P2_POSITION)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.closeRoomPosition(arenaRequest.roomId, arenaRequest.position, arenaRequest.isClosePosition, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P3_POSITION)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.closeRoomPosition(arenaRequest.roomId, arenaRequest.position, arenaRequest.isClosePosition, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P4_POSITION)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.closeRoomPosition(arenaRequest.roomId, arenaRequest.position, arenaRequest.isClosePosition, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_LEAVE_ROOM)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.leaveRoom(arenaRequest.roomId, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_KICK_OUT_ROOM_POSITION)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.kickOutRoomPosition(arenaRequest.roomId, arenaRequest.position, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.fastJoinRoom(arenaRequest.gameId, arenaRequest.collectionId, p(), c.o(getApplicationContext()), l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.searchRoomByID(arenaRequest.roomId, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_LOBBY_START_GAME)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.lobbyStartGame(arenaRequest.roomId, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_PLAYER_READY_GAME)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.playerReadyGame(arenaRequest.roomId, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_CANCEL_SUBSCRIBE_GAME_ROOM)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.cancelSubscribeGameRoom(l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SHARE_JOIN_ROOM)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.shareJoinRoom(arenaRequest.gameId, arenaRequest.roomId, arenaRequest.fightId, arenaRequest.password, p(), c.o(getApplicationContext()), l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SPECTATOR_SIT)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.spectatorSit(arenaRequest.roomId, arenaRequest.position, p(), l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_GET_KICK_OUT_ROOM_POSITION_INFO)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.getKickPlayerInfo(arenaRequest.roomId, arenaRequest.position, p(), l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_GET_FRAMEFORWARD_SERVER)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.getFrameForwardServer(arenaRequest.roomId, l(arenaRequest)));
            } else if (str.equals(ArenaConstants.ArenaCommand.CMD_JOIN_BATTLE_AREA)) {
                this.f52131k.sendDataToServer(ByteBufferBuilderFactory.joinBattleArea(arenaRequest.battleArea, l(arenaRequest)));
            }
        }
    }

    public ConcurrentHashMap<Integer, AreaInfo> m() {
        return this.f52124d.getAreaMaps();
    }

    public BattleArea n() {
        return this.f52135o;
    }

    public ArenaResponse o(int i2) {
        return this.f52134n.get(Integer.valueOf(i2));
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        y("---service onBind----");
        return new b();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f52129i = com.join.mgps.rpc.impl.k.n0();
        this.f52130j = j.n0();
        y("---service onCreate----");
        this.f52131k = new ArenaSocketThread(this.f52133m);
        AtomicLong atomicLong = new AtomicLong(2L);
        this.f52126f = atomicLong;
        atomicLong.getAndDecrement();
        this.f52127g = new ConcurrentHashMap<>();
        this.f52124d = new UDPHelper(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        y("---service onDestroy----");
        this.f52131k.mHeartBeatThread.stop();
        this.f52127g.clear();
        this.f52126f = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        y("---service onStartCommand----");
        if (intent != null && intent.getAction() != null && !TextUtils.isEmpty(intent.getAction())) {
            String action = intent.getAction();
            y("---service onStartCommand----action-->" + action);
            if (ArenaConstants.ACTION_LEAVE_ROOM.equals(action)) {
                t(intent.getIntExtra("gameId", 0));
            } else if (ArenaConstants.ACTION_CANCEL_SUBSCRIBE.equals(action)) {
                i();
            }
        }
        return super.onStartCommand(intent, 1, i4);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        y("---service onUnbind----");
        return super.onUnbind(intent);
    }

    void q(ArenaRequest arenaRequest) {
        this.f52137q = 0;
        u(arenaRequest);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r(Object obj) {
        int currentTimeMillis;
        synchronized (this.f52121a) {
            Response response = (Response) obj;
            long requestId = response.getRequestId();
            y("handleServerResponse  requestId :" + requestId);
            ArenaResponse arenaResponse = new ArenaResponse();
            if (requestId == 0) {
                arenaResponse.messageType = 2;
                arenaResponse.responseCode = 1;
                Response.ProtoType type = response.getType();
                y("handleServerResponse server push message type : " + type);
                if (type == Response.ProtoType.PONG) {
                    if (response.getPong() != null && (currentTimeMillis = (int) (System.currentTimeMillis() - response.getPong().getTimestamp())) >= 0) {
                        y("ping value :" + currentTimeMillis);
                        this.f52125e = currentTimeMillis;
                    }
                } else if (type == Response.ProtoType.ACCOUNT_KICK_BROADCAST) {
                    this.f52131k.handleExit(SocketUtils.createSocketError(2, "检测到你的账户在另外一台手机登陆!"));
                } else {
                    if (type == Response.ProtoType.UPDATE_AREA_ONLINE_PEOPLE_BROADCAST) {
                        arenaResponse.data = response.getAreaOnlinePeopleCount();
                        arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_UPDATE_AREA_ONLINE_PEOPLE_BROADCAST;
                        F(response.getAreaOnlinePeopleCount());
                    } else {
                        arenaResponse = c.j(arenaResponse, response);
                    }
                    String str = arenaResponse.responseType;
                    if (str == ArenaConstants.ArenaCommand.PUSH_DISSOLVE_ROOM || str == ArenaConstants.ArenaCommand.PUSH_UPDATE_ROOM || str == ArenaConstants.ArenaCommand.PUSH_KICK_ROOM_BROADCAST) {
                        this.f52134n.put(Integer.valueOf(response.getRoom().getRoomId()), arenaResponse);
                    }
                    v(arenaResponse);
                }
            } else {
                ArenaRequest arenaRequest = this.f52127g.get(Long.valueOf(requestId));
                if (arenaRequest == null) {
                    y("handleServerResponse get request is null by request id :" + requestId);
                    return;
                }
                arenaResponse.messageType = 1;
                B(arenaResponse, arenaRequest, response);
            }
        }
    }

    public boolean s() {
        return this.f52123c != null && this.f52122b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t(int i2) {
        if (f.j(this) && s()) {
            y("leaved room");
            C(ArenaRequestFactory.leaveRoom(i2));
            com.wufan.friend.chat.c.u().i(1, i2);
        }
    }

    void v(ArenaResponse arenaResponse) {
        try {
            synchronized (this.f52132l) {
                if (com.wufan.friend.chat.c.u().j(arenaResponse)) {
                    return;
                }
                Iterator<SocketListener.NotifyObserver> it2 = this.f52132l.iterator();
                while (it2.hasNext()) {
                    it2.next().onServerResponse(arenaResponse);
                }
            }
        } catch (Exception e4) {
            y("notifyObservers exception:" + e4.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void w(SocketError socketError) {
        synchronized (this.f52132l) {
            Iterator<SocketListener.NotifyObserver> it2 = this.f52132l.iterator();
            while (it2.hasNext()) {
                it2.next().onError(socketError);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Receiver(actions = {f1.a.B})
    public void x() {
        y("----receiver on onUID Changed---");
        this.f52131k.handleExit(SocketUtils.createSocketError(5, "切换账户，需要重新登陆"));
    }

    void y(String str) {
        t0.b("ArenaService", str);
    }

    public void z(SocketListener.NotifyObserver notifyObserver) {
        synchronized (this.f52132l) {
            if (!this.f52132l.contains(notifyObserver)) {
                this.f52132l.add(notifyObserver);
            }
        }
    }
}
