package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ModInfoBean implements Serializable {
    private String compatible_version;
    private String down_url;
    private int ext64;
    private String ext64_package_name;
    private long ext64_size;
    private String ext64_url;
    private int ext64_ver;
    private boolean isIncompatible;
    private int is_golden_finger;
    private String main_game_id;
    private String main_game_ver;
    private String main_package_name;
    private String mod_game_id;
    private String mod_package_name;
    private int status = 14;
    private int ver;

    public String getCompatible_version() {
        return this.compatible_version;
    }

    public String getDown_url() {
        return this.down_url;
    }

    public int getExt64() {
        return this.ext64;
    }

    public String getExt64_package_name() {
        return this.ext64_package_name;
    }

    public long getExt64_size() {
        return this.ext64_size;
    }

    public String getExt64_url() {
        return this.ext64_url;
    }

    public int getExt64_ver() {
        return this.ext64_ver;
    }

    public int getIs_golden_finger() {
        return this.is_golden_finger;
    }

    public String getMain_game_id() {
        return this.main_game_id;
    }

    public String getMain_game_ver() {
        return this.main_game_ver;
    }

    public String getMain_package_name() {
        return this.main_package_name;
    }

    public String getMod_game_id() {
        return this.mod_game_id;
    }

    public String getMod_package_name() {
        return this.mod_package_name;
    }

    public int getStatus() {
        return this.status;
    }

    public int getVer() {
        return this.ver;
    }

    public boolean isIncompatible() {
        return this.isIncompatible;
    }

    public void setCompatible_version(String str) {
        this.compatible_version = str;
    }

    public void setDown_url(String str) {
        this.down_url = str;
    }

    public void setExt64(int i2) {
        this.ext64 = i2;
    }

    public void setExt64_package_name(String str) {
        this.ext64_package_name = str;
    }

    public void setExt64_size(long j4) {
        this.ext64_size = j4;
    }

    public void setExt64_url(String str) {
        this.ext64_url = str;
    }

    public void setExt64_ver(int i2) {
        this.ext64_ver = i2;
    }

    public void setIncompatible(boolean z3) {
        this.isIncompatible = z3;
    }

    public void setIs_golden_finger(int i2) {
        this.is_golden_finger = i2;
    }

    public void setMain_game_id(String str) {
        this.main_game_id = str;
    }

    public void setMain_game_ver(String str) {
        this.main_game_ver = str;
    }

    public void setMain_package_name(String str) {
        this.main_package_name = str;
    }

    public void setMod_game_id(String str) {
        this.mod_game_id = str;
    }

    public void setMod_package_name(String str) {
        this.mod_package_name = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setVer(int i2) {
        this.ver = i2;
    }
}
