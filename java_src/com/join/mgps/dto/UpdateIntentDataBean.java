package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.db.tables.EMUApkTable;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class UpdateIntentDataBean implements Serializable {
    private DownloadTask downloadTask;
    private EMUApkTable emuApkTable;
    private boolean isFight;
    private boolean peizhiMustUpdate;
    private boolean peizhiNewUpdate;
    private boolean romeMustUpdate;
    private boolean romeNewUpdate;
    private boolean sourceMustUpdate;
    private boolean sourceNewUpdate;

    public UpdateIntentDataBean() {
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public EMUApkTable getEmuApkTable() {
        return this.emuApkTable;
    }

    public boolean isFight() {
        return this.isFight;
    }

    public boolean isPeizhiMustUpdate() {
        return this.peizhiMustUpdate;
    }

    public boolean isPeizhiNewUpdate() {
        return this.peizhiNewUpdate;
    }

    public boolean isRomeMustUpdate() {
        return this.romeMustUpdate;
    }

    public boolean isRomeNewUpdate() {
        return this.romeNewUpdate;
    }

    public boolean isSourceMustUpdate() {
        return this.sourceMustUpdate;
    }

    public boolean isSourceNewUpdate() {
        return this.sourceNewUpdate;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setEmuApkTable(EMUApkTable eMUApkTable) {
        this.emuApkTable = eMUApkTable;
    }

    public void setFight(boolean z3) {
        this.isFight = z3;
    }

    public void setPeizhiMustUpdate(boolean z3) {
        this.peizhiMustUpdate = z3;
    }

    public void setPeizhiNewUpdate(boolean z3) {
        this.peizhiNewUpdate = z3;
    }

    public void setRomeMustUpdate(boolean z3) {
        this.romeMustUpdate = z3;
    }

    public void setRomeNewUpdate(boolean z3) {
        this.romeNewUpdate = z3;
    }

    public void setSourceMustUpdate(boolean z3) {
        this.sourceMustUpdate = z3;
    }

    public void setSourceNewUpdate(boolean z3) {
        this.sourceNewUpdate = z3;
    }

    public UpdateIntentDataBean(boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, DownloadTask downloadTask, EMUApkTable eMUApkTable, boolean z9) {
        this.romeMustUpdate = z3;
        this.romeNewUpdate = z4;
        this.peizhiMustUpdate = z5;
        this.peizhiNewUpdate = z6;
        this.sourceMustUpdate = z7;
        this.sourceNewUpdate = z8;
        this.downloadTask = downloadTask;
        this.emuApkTable = eMUApkTable;
        this.isFight = z9;
    }
}
