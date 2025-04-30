package com.join.kotlin.ui.cloudarchive.data;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class ModGameArchivePathData implements Serializable {
    private String archiveFileSuffix;
    private int archiveType;
    private String gameId;
    private String mainArchiveLocalPath;
    private String mainGamePackageName;
    private String modPackageName;
    private String subArchiveLocalPath;

    public String getArchiveFileSuffix() {
        return this.archiveFileSuffix;
    }

    public int getArchiveType() {
        return this.archiveType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getMainArchiveLocalPath() {
        return this.mainArchiveLocalPath;
    }

    public String getMainGamePackageName() {
        return this.mainGamePackageName;
    }

    public String getModPackageName() {
        return this.modPackageName;
    }

    public String getSubArchiveLocalPath() {
        return this.subArchiveLocalPath;
    }

    public void setArchiveFileSuffix(String str) {
        this.archiveFileSuffix = str;
    }

    public void setArchiveType(int i2) {
        this.archiveType = i2;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setMainArchiveLocalPath(String str) {
        this.mainArchiveLocalPath = str;
    }

    public void setMainGamePackageName(String str) {
        this.mainGamePackageName = str;
    }

    public void setModPackageName(String str) {
        this.modPackageName = str;
    }

    public void setSubArchiveLocalPath(String str) {
        this.subArchiveLocalPath = str;
    }
}
