package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class LoadWarCenterBean {
    private Map<String, DownloadTask> downloadTasksMap;
    private List<FightMainTable> fightMainTables;
    private List<WarMatchAndLocalTable> hotGameInfoDataBeans;
    private List<WarMatchAndLocalTable> pkGameInfoDataBeans;
    private List<WarMatchAndLocalTable> pkLocalInfoDataBeans;
    private List<WarMatchAndLocalTable> pkMatchingInfoDataBeans;
    private List<WarMatchAndLocalTable> pkPassInfoDataBeans;
    private List<WarMatchAndLocalTable> pkRoomInfoDataBeans;
    private List<WarMatchAndLocalTable> waradInfoDataBeans;

    public LoadWarCenterBean() {
        this.downloadTasksMap = new ConcurrentHashMap();
        this.fightMainTables = new ArrayList();
        this.waradInfoDataBeans = new ArrayList();
        this.hotGameInfoDataBeans = new ArrayList();
        this.pkGameInfoDataBeans = new ArrayList();
        this.pkPassInfoDataBeans = new ArrayList();
        this.pkMatchingInfoDataBeans = new ArrayList();
        this.pkLocalInfoDataBeans = new ArrayList();
        this.pkRoomInfoDataBeans = new ArrayList();
    }

    public Map<String, DownloadTask> getDownloadTasksMap() {
        return this.downloadTasksMap;
    }

    public List<FightMainTable> getFightMainTables() {
        return this.fightMainTables;
    }

    public List<WarMatchAndLocalTable> getHotGameInfoDataBeans() {
        return this.hotGameInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkGameInfoDataBeans() {
        return this.pkGameInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkLocalInfoDataBeans() {
        return this.pkLocalInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkMatchingInfoDataBeans() {
        return this.pkMatchingInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkPassInfoDataBeans() {
        return this.pkPassInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getPkRoomInfoDataBeans() {
        return this.pkRoomInfoDataBeans;
    }

    public List<WarMatchAndLocalTable> getWaradInfoDataBeans() {
        return this.waradInfoDataBeans;
    }

    public void setDownloadTasksMap(Map<String, DownloadTask> map) {
        this.downloadTasksMap = map;
    }

    public void setFightMainTables(List<FightMainTable> list) {
        this.fightMainTables = list;
    }

    public void setHotGameInfoDataBeans(List<WarMatchAndLocalTable> list) {
        this.hotGameInfoDataBeans = list;
    }

    public void setPkGameInfoDataBeans(List<WarMatchAndLocalTable> list) {
        this.pkGameInfoDataBeans = list;
    }

    public void setPkLocalInfoDataBeans(List<WarMatchAndLocalTable> list) {
        this.pkLocalInfoDataBeans = list;
    }

    public void setPkMatchingInfoDataBeans(List<WarMatchAndLocalTable> list) {
        this.pkMatchingInfoDataBeans = list;
    }

    public void setPkPassInfoDataBeans(List<WarMatchAndLocalTable> list) {
        this.pkPassInfoDataBeans = list;
    }

    public void setPkRoomInfoDataBeans(List<WarMatchAndLocalTable> list) {
        this.pkRoomInfoDataBeans = list;
    }

    public void setWaradInfoDataBeans(List<WarMatchAndLocalTable> list) {
        this.waradInfoDataBeans = list;
    }

    public LoadWarCenterBean(Map<String, DownloadTask> map, List<FightMainTable> list, List<WarMatchAndLocalTable> list2, List<WarMatchAndLocalTable> list3, List<WarMatchAndLocalTable> list4, List<WarMatchAndLocalTable> list5, List<WarMatchAndLocalTable> list6, List<WarMatchAndLocalTable> list7, List<WarMatchAndLocalTable> list8) {
        this.downloadTasksMap = new ConcurrentHashMap();
        this.fightMainTables = new ArrayList();
        this.waradInfoDataBeans = new ArrayList();
        this.hotGameInfoDataBeans = new ArrayList();
        this.pkGameInfoDataBeans = new ArrayList();
        this.pkPassInfoDataBeans = new ArrayList();
        this.pkMatchingInfoDataBeans = new ArrayList();
        this.pkLocalInfoDataBeans = new ArrayList();
        this.pkRoomInfoDataBeans = new ArrayList();
        this.downloadTasksMap = map;
        this.fightMainTables = list;
        this.waradInfoDataBeans = list2;
        this.hotGameInfoDataBeans = list3;
        this.pkGameInfoDataBeans = list4;
        this.pkPassInfoDataBeans = list5;
        this.pkMatchingInfoDataBeans = list6;
        this.pkLocalInfoDataBeans = list7;
        this.pkRoomInfoDataBeans = list8;
    }
}
