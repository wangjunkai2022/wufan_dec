package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class Filepath {
    private long allsize;
    private long available;
    private boolean islocal;
    private String pathHome;
    private String pathRoot;

    public long getAllsize() {
        return this.allsize;
    }

    public long getAvailable() {
        return this.available;
    }

    public String getPathHome() {
        return this.pathHome;
    }

    public String getPathRoot() {
        return this.pathRoot;
    }

    public boolean isIslocal() {
        return this.islocal;
    }

    public void setAllsize(long j4) {
        this.allsize = j4;
    }

    public void setAvailable(long j4) {
        this.available = j4;
    }

    public void setIslocal(boolean z3) {
        this.islocal = z3;
    }

    public void setPathHome(String str) {
        this.pathHome = str;
    }

    public void setPathRoot(String str) {
        this.pathRoot = str;
    }
}
