package app.mgsim.arena;

import java.util.Arrays;
/* loaded from: classes2.dex */
public class ArenaLobbyServer {
    private int disabled;
    private String disabledMessage;
    private AreaInfo lobbyServer;
    private AreaInfo[] ping;
    private int startGameCopper;

    public int getDisabled() {
        return this.disabled;
    }

    public String getDisabledMessage() {
        return this.disabledMessage;
    }

    public AreaInfo getLobbyServer() {
        return this.lobbyServer;
    }

    public AreaInfo[] getPing() {
        return this.ping;
    }

    public int getStartGameCopper() {
        return this.startGameCopper;
    }

    public void setDisabled(int i2) {
        this.disabled = i2;
    }

    public void setDisabledMessage(String str) {
        this.disabledMessage = str;
    }

    public void setLobbyServer(AreaInfo areaInfo) {
        this.lobbyServer = areaInfo;
    }

    public void setPing(AreaInfo[] areaInfoArr) {
        this.ping = areaInfoArr;
    }

    public void setStartGameCopper(int i2) {
        this.startGameCopper = i2;
    }

    public String toString() {
        return "ArenaLobbyServer{lobbyServer=" + this.lobbyServer + ", ping=" + Arrays.toString(this.ping) + '}';
    }
}
