package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArenaConfig {
    private int ping_count;
    private ArenaRoleNotice role_notice;

    public int getPing_count() {
        return this.ping_count;
    }

    public ArenaRoleNotice getRole_notice() {
        return this.role_notice;
    }

    public void setPing_count(int i2) {
        this.ping_count = i2;
    }

    public void setRole_notice(ArenaRoleNotice arenaRoleNotice) {
        this.role_notice = arenaRoleNotice;
    }

    public String toString() {
        return "ArenaConfig{ping_count=" + this.ping_count + ", role_notice=" + this.role_notice + '}';
    }
}
