package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ConfigData {
    boolean anti_addiction_switch;
    boolean b_side;
    String client_ip;
    boolean download_game_switch;
    boolean launch_game_switch;
    boolean non_online_user_switch;
    List<String> real_name_black_list;

    public String getClient_ip() {
        return this.client_ip;
    }

    public List<String> getReal_name_black_list() {
        return this.real_name_black_list;
    }

    public boolean isAnti_addiction_switch() {
        return this.anti_addiction_switch;
    }

    public boolean isB_side() {
        return this.b_side;
    }

    public boolean isDownload_game_switch() {
        return this.download_game_switch;
    }

    public boolean isLaunch_game_switch() {
        return this.launch_game_switch;
    }

    public boolean isNon_online_user_switch() {
        return this.non_online_user_switch;
    }

    public void setAnti_addiction_switch(boolean z3) {
        this.anti_addiction_switch = z3;
    }

    public void setB_side(boolean z3) {
        this.b_side = z3;
    }

    public void setClient_ip(String str) {
        this.client_ip = str;
    }

    public void setDownload_game_switch(boolean z3) {
        this.download_game_switch = z3;
    }

    public void setLaunch_game_switch(boolean z3) {
        this.launch_game_switch = z3;
    }

    public void setNon_online_user_switch(boolean z3) {
        this.non_online_user_switch = z3;
    }

    public void setReal_name_black_list(List<String> list) {
        this.real_name_black_list = list;
    }
}
