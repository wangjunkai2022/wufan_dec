package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class DownloadCenterBean {
    private List<DownloadTask> downloadFiles = new ArrayList(0);
    private List<DownloadTask> stayInstalledDownloadTasks = new ArrayList(0);
    private List<DownloadTask> downloadCompleteFiles = new ArrayList(0);
    private List<DownloadTask> historyDownloadFiles = new ArrayList(0);
    private List<DownloadTask> downloadUpdateFiles = new ArrayList(0);

    public List<DownloadTask> getDownloadCompleteFiles() {
        return this.downloadCompleteFiles;
    }

    public List<DownloadTask> getDownloadFiles() {
        return this.downloadFiles;
    }

    public List<DownloadTask> getDownloadUpdateFiles() {
        return this.downloadUpdateFiles;
    }

    public List<DownloadTask> getHistoryDownloadFiles() {
        return this.historyDownloadFiles;
    }

    public List<DownloadTask> getStayInstalledDownloadTasks() {
        return this.stayInstalledDownloadTasks;
    }

    public void setDownloadCompleteFiles(List<DownloadTask> list) {
        this.downloadCompleteFiles = list;
    }

    public void setDownloadFiles(List<DownloadTask> list) {
        this.downloadFiles.clear();
        this.downloadFiles.addAll(list);
    }

    public void setDownloadUpdateFiles(List<DownloadTask> list) {
        this.downloadUpdateFiles = list;
    }

    public void setHistoryDownloadFiles(List<DownloadTask> list) {
        this.historyDownloadFiles.clear();
        if (list != null) {
            this.historyDownloadFiles.addAll(list);
        }
    }

    public void setStayInstalledDownloadTasks(List<DownloadTask> list) {
        this.stayInstalledDownloadTasks.clear();
        this.stayInstalledDownloadTasks.addAll(list);
    }
}
