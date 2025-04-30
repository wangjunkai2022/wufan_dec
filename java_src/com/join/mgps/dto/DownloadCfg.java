package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class DownloadCfg implements Serializable {
    private String cfg_switch;
    private String cfg_switch_express;
    private String cfg_values;
    private String cfg_values_express;

    public DownloadCfg() {
    }

    public String getCfg_switch() {
        return this.cfg_switch;
    }

    public String getCfg_switch_express() {
        return this.cfg_switch_express;
    }

    public String getCfg_values() {
        return this.cfg_values;
    }

    public String getCfg_values_express() {
        return this.cfg_values_express;
    }

    public void setCfg_switch(String str) {
        this.cfg_switch = str;
    }

    public void setCfg_switch_express(String str) {
        this.cfg_switch_express = str;
    }

    public void setCfg_values(String str) {
        this.cfg_values = str;
    }

    public void setCfg_values_express(String str) {
        this.cfg_values_express = str;
    }

    public DownloadCfg(String str, String str2) {
        this.cfg_switch_express = str;
        this.cfg_values_express = str2;
    }
}
