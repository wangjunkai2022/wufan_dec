package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaGameInfo implements Serializable {
    private String icon;
    private String id;
    private String name;
    private String result_show_type;
    private String rom_type;

    public String getIcon() {
        return this.icon;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getResult_show_type() {
        return this.result_show_type;
    }

    public String getRom_type() {
        return this.rom_type;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setResult_show_type(String str) {
        this.result_show_type = str;
    }

    public void setRom_type(String str) {
        this.rom_type = str;
    }

    public String toString() {
        return "ArenaGameInfo{id='" + this.id + "', name='" + this.name + "', icon='" + this.icon + "', rom_type='" + this.rom_type + "'}";
    }
}
