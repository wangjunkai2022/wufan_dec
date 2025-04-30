package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import java.util.List;
/* loaded from: classes4.dex */
public class GameListItemBean extends CollectionBeanSub {
    int bg_color_tag_type;
    private List<CommentBaseBean> comment_list;
    int comment_score_switch;
    private DownloadTask downloadTask;
    private String game_describe_second;
    GameScore game_score;
    int itemType;

    public GameListItemBean() {
    }

    public int getBg_color_tag_type() {
        return this.bg_color_tag_type;
    }

    public List<CommentBaseBean> getComment_list() {
        return this.comment_list;
    }

    public int getComment_score_switch() {
        return this.comment_score_switch;
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public String getGame_describe_second() {
        return this.game_describe_second;
    }

    public GameScore getGame_score() {
        return this.game_score;
    }

    public int getItemType() {
        return this.itemType;
    }

    public void setBg_color_tag_type(int i2) {
        this.bg_color_tag_type = i2;
    }

    public void setComment_list(List<CommentBaseBean> list) {
        this.comment_list = list;
    }

    public void setComment_score_switch(int i2) {
        this.comment_score_switch = i2;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setGame_describe_second(String str) {
        this.game_describe_second = str;
    }

    public void setGame_score(GameScore gameScore) {
        this.game_score = gameScore;
    }

    public void setItemType(int i2) {
        this.itemType = i2;
    }

    public GameListItemBean(CollectionBeanSub collectionBeanSub) {
        super(collectionBeanSub);
    }

    public GameListItemBean(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }
}
