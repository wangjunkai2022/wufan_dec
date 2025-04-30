package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArenaRoleNotice {
    private ArenaNotice client;
    private ArenaNotice master;
    private ArenaNotice spectator;

    public ArenaNotice getClient() {
        return this.client;
    }

    public ArenaNotice getMaster() {
        return this.master;
    }

    public ArenaNotice getSpectator() {
        return this.spectator;
    }

    public void setClient(ArenaNotice arenaNotice) {
        this.client = arenaNotice;
    }

    public void setMaster(ArenaNotice arenaNotice) {
        this.master = arenaNotice;
    }

    public void setSpectator(ArenaNotice arenaNotice) {
        this.spectator = arenaNotice;
    }

    public String toString() {
        return "ArenaRoleNotice{client=" + this.client + ", master=" + this.master + ", spectator=" + this.spectator + '}';
    }
}
