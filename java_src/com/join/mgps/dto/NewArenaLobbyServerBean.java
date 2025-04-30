package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class NewArenaLobbyServerBean {
    private LobbyServer lobbyServer;

    /* loaded from: classes4.dex */
    public static class LobbyServer {
        private int area;
        private String host;
        private int port;

        public int getArea() {
            return this.area;
        }

        public String getHost() {
            return this.host;
        }

        public int getPort() {
            return this.port;
        }

        public void setArea(int i2) {
            this.area = i2;
        }

        public void setHost(String str) {
            this.host = str;
        }

        public void setPort(int i2) {
            this.port = i2;
        }
    }

    public LobbyServer getLobbyServer() {
        return this.lobbyServer;
    }

    public void setLobbyServer(LobbyServer lobbyServer) {
        this.lobbyServer = lobbyServer;
    }
}
