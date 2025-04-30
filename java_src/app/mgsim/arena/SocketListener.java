package app.mgsim.arena;
/* loaded from: classes2.dex */
public interface SocketListener {

    /* loaded from: classes2.dex */
    public interface NotifyObserver {
        void onError(SocketError socketError);

        void onServerResponse(ArenaResponse arenaResponse);
    }

    void executeRequest(ArenaRequest arenaRequest);

    void onError(SocketError socketError);

    int onServerResponse(Object obj) throws Exception;

    void onSocketConnected();

    void onSocketDisconnected();
}
