package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameDetailRoomCfgInfo {
    private List<GameDetailCheckPoint> check_point;
    private List<GameDetailCloudArchive> cloud_archive;
    private int cloud_archive_count;
    private List<String> golden_finger;
    private List<GameDetailOneTouchSkill> one_touch_skill;

    public List<GameDetailCheckPoint> getCheck_point() {
        return this.check_point;
    }

    public List<GameDetailCloudArchive> getCloud_archive() {
        return this.cloud_archive;
    }

    public int getCloud_archive_count() {
        return this.cloud_archive_count;
    }

    public List<String> getGolden_finger() {
        return this.golden_finger;
    }

    public List<GameDetailOneTouchSkill> getOne_touch_skill() {
        return this.one_touch_skill;
    }

    public void setCheck_point(List<GameDetailCheckPoint> list) {
        this.check_point = list;
    }

    public void setCloud_archive(List<GameDetailCloudArchive> list) {
        this.cloud_archive = list;
    }

    public void setCloud_archive_count(int i2) {
        this.cloud_archive_count = i2;
    }

    public void setGolden_finger(List<String> list) {
        this.golden_finger = list;
    }

    public void setOne_touch_skill(List<GameDetailOneTouchSkill> list) {
        this.one_touch_skill = list;
    }
}
