package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.ApkVersionbean;
import java.io.Serializable;
/* loaded from: classes.dex */
public class EMUApkArenaTable implements Serializable {
    @DatabaseField
    private String apkPath;
    @DatabaseField
    private String apk_name;
    @DatabaseField
    private int down_type;
    @DatabaseField
    private String down_url;
    @DatabaseField
    private int downloadFinish;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String launch_name;
    @DatabaseField
    private String logo;
    @DatabaseField
    private String package_name;
    @DatabaseField
    private String release_date;
    @DatabaseField
    private String remark;
    @DatabaseField
    private String size;
    @DatabaseField
    private String tag_id;
    @DatabaseField
    private String team_info;
    @DatabaseField
    private String ver;
    @DatabaseField
    private String ver_compatible;
    @DatabaseField
    private String ver_info;

    public EMUApkArenaTable() {
    }

    public String getApkPath() {
        return this.apkPath;
    }

    public String getApk_name() {
        return this.apk_name;
    }

    public int getDown_type() {
        return this.down_type;
    }

    public String getDown_url() {
        return this.down_url;
    }

    public int getDownloadFinish() {
        return this.downloadFinish;
    }

    public int getId() {
        return this.id;
    }

    public String getLaunch_name() {
        return this.launch_name;
    }

    public String getLogo() {
        return this.logo;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getRelease_date() {
        return this.release_date;
    }

    public String getRemark() {
        return this.remark;
    }

    public String getSize() {
        return this.size;
    }

    public String getTag_id() {
        return this.tag_id;
    }

    public String getTeam_info() {
        return this.team_info;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_compatible() {
        return this.ver_compatible;
    }

    public String getVer_info() {
        return this.ver_info;
    }

    public void setApkPath(String str) {
        this.apkPath = str;
    }

    public void setApk_name(String str) {
        this.apk_name = str;
    }

    public void setDown_type(int i2) {
        this.down_type = i2;
    }

    public void setDown_url(String str) {
        this.down_url = str;
    }

    public void setDownloadFinish(int i2) {
        this.downloadFinish = i2;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setLaunch_name(String str) {
        this.launch_name = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setRelease_date(String str) {
        this.release_date = str;
    }

    public void setRemark(String str) {
        this.remark = str;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public void setTag_id(String str) {
        this.tag_id = str;
    }

    public void setTeam_info(String str) {
        this.team_info = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_compatible(String str) {
        this.ver_compatible = str;
    }

    public void setVer_info(String str) {
        this.ver_info = str;
    }

    public EMUApkArenaTable(ApkVersionbean apkVersionbean) {
        setApk_name(apkVersionbean.getApk_name());
        setDown_url(apkVersionbean.getDown_url());
        setLaunch_name(apkVersionbean.getLaunch_name());
        setLogo(apkVersionbean.getLogo());
        setPackage_name(apkVersionbean.getPackage_name());
        setRelease_date(apkVersionbean.getRelease_date());
        setSize(apkVersionbean.getSize());
        setTag_id(apkVersionbean.getTag_id());
        setTeam_info(apkVersionbean.getTeam_info());
        setVer(apkVersionbean.getVer());
        setVer_compatible(apkVersionbean.getVer_compatible());
        setVer_info(apkVersionbean.getVer_info());
        setDown_type(apkVersionbean.getDown_type());
        setRemark(JsonMapper.toJsonString(apkVersionbean.getPlugin_md5()));
    }
}
