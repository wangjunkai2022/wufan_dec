package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.UtilsMy;
import j1.b;
import java.util.Objects;
/* loaded from: classes4.dex */
public class CommonGameInfoBean extends DownloadPointBase implements b {
    private int ad_switch;
    private String bg_color;
    private String big_pic;
    private DownloadTask downloadTask;
    private String ext;
    private String ext1;
    private String ext2;
    private String ext3;
    private String ext4;
    private GInfoBean g_info;
    private boolean hasExposure;
    private JpInfoBean jp_info;
    private String keyword;
    private int position;
    private int quit_switch;
    private String sub_title;
    private String title;
    private String v_url;
    protected int viewType;
    private int requestStatus = 0;
    private boolean isAdInfo = false;

    public Integer getAd_switch() {
        return Integer.valueOf(this.ad_switch);
    }

    public String getBg_color() {
        return this.bg_color;
    }

    public String getBig_pic() {
        return this.big_pic;
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public String getExt() {
        return this.ext;
    }

    public String getExt1() {
        return this.ext1;
    }

    public String getExt2() {
        return this.ext2;
    }

    public String getExt3() {
        return this.ext3;
    }

    public String getExt4() {
        return this.ext4;
    }

    public GInfoBean getG_info() {
        return this.g_info;
    }

    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        if (this.g_info != null) {
            IntentToDetialBean intentToDetialBean = new IntentToDetialBean();
            intentToDetialBean.f(this.g_info.getId());
            intentToDetialBean.g(this.g_info.getName());
            intentToDetialBean.i(this.g_info.getIco());
            intentToDetialBean.h(0);
            intentDateBean.setObject(intentToDetialBean);
        }
        intentDateBean.setExt1(this.ext1);
        intentDateBean.setExt2(this.ext2);
        intentDateBean.setExt3(this.ext3);
        intentDateBean.setExt4(this.ext4);
        JpInfoBean jpInfoBean = this.jp_info;
        if (jpInfoBean != null) {
            intentDateBean.setJump_type(jpInfoBean.getJump_type().intValue());
            intentDateBean.setLink_type(this.jp_info.getLink_type().intValue());
            intentDateBean.setLink_type_val(this.jp_info.getLink_type_val());
            intentDateBean.setTpl_type(String.valueOf(this.jp_info.getTpl_type()));
            intentDateBean.setCrc_link_type_val(this.jp_info.getCrc_link_type_val());
        }
        if (intentDateBean.getExtBean() == null) {
            ExtBean volcanoOther = new ExtBean(get_from_type()).setRecPosition(getRecPosition()).setReMarks(getReMarks()).setVolcanoOther(getPosition_path() != null ? JsonMapper.toJsonString(getPosition_path()) : "");
            GInfoBean gInfoBean = this.g_info;
            intentDateBean.setExtBean(volcanoOther.setOnlineGame(UtilsMy.F1(gInfoBean != null ? gInfoBean.getTag_info() : null)));
        } else {
            intentDateBean.getExtBean().setFrom(String.valueOf(get_from()));
            intentDateBean.getExtBean().set_from_type(get_from_type());
        }
        return intentDateBean;
    }

    public IntentDateBean getIntentDataBeanWithFromType(int i2) {
        set_from_type(i2);
        set_from(i2);
        return getIntentDataBean();
    }

    @Override // j1.b
    public int getItemType() {
        return this.viewType;
    }

    public JpInfoBean getJp_info() {
        return this.jp_info;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public int getPosition() {
        return this.position;
    }

    public Integer getQuit_switch() {
        return Integer.valueOf(this.quit_switch);
    }

    public int getRequestStatus() {
        return this.requestStatus;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getV_url() {
        return this.v_url;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        Object[] objArr = new Object[5];
        objArr[0] = this.title;
        objArr[1] = this.sub_title;
        objArr[2] = this.big_pic;
        objArr[3] = this.v_url;
        GInfoBean gInfoBean = this.g_info;
        objArr[4] = gInfoBean == null ? "" : gInfoBean.getId();
        return Objects.hash(objArr);
    }

    public boolean is64Bit() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.getArm64() == 1;
    }

    public boolean isAdInfo() {
        return this.isAdInfo;
    }

    public boolean isBtGame() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isBtGame();
    }

    public boolean isGame() {
        JpInfoBean jpInfoBean = this.jp_info;
        return jpInfoBean != null && jpInfoBean.isGame();
    }

    public boolean isGameVm() {
        return isModGameVm() || isSingleGameVm() || isNetGameVm();
    }

    public boolean isHasExposure() {
        return this.hasExposure;
    }

    public boolean isMiniGame() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isMiniGame();
    }

    public boolean isModGameVm() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isModGameVm();
    }

    public boolean isNetGameVm() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isNetGameVm();
    }

    public boolean isSingleGameVm() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isSingleGameVm();
    }

    public void setAdInfo(boolean z3) {
        this.isAdInfo = z3;
    }

    public void setAd_switch(Integer num) {
        this.ad_switch = num.intValue();
    }

    public void setBg_color(String str) {
        this.bg_color = str;
    }

    public void setBig_pic(String str) {
        this.big_pic = str;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setExt(String str) {
        this.ext = str;
    }

    public void setExt1(String str) {
        this.ext1 = str;
    }

    public void setExt2(String str) {
        this.ext2 = str;
    }

    public void setExt3(String str) {
        this.ext3 = str;
    }

    public void setExt4(String str) {
        this.ext4 = str;
    }

    public void setG_info(GInfoBean gInfoBean) {
        this.g_info = gInfoBean;
    }

    public void setHasExposure(boolean z3) {
        this.hasExposure = z3;
    }

    public void setJp_info(JpInfoBean jpInfoBean) {
        this.jp_info = jpInfoBean;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setPosition(int i2) {
        this.position = i2;
    }

    public void setQuit_switch(Integer num) {
        this.quit_switch = num.intValue();
    }

    public void setRequestStatus(int i2) {
        this.requestStatus = i2;
    }

    public void setSub_title(String str) {
        this.sub_title = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setV_url(String str) {
        this.v_url = str;
    }

    public void setViewType(int i2) {
        this.viewType = i2;
    }

    public void setAd_switch(int i2) {
        this.ad_switch = i2;
    }

    public void setQuit_switch(int i2) {
        this.quit_switch = i2;
    }
}
