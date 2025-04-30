package com.github.snowdream.android.app.downloader;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.h;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g0;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.enums.Dtype;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
@DatabaseTable(tableName = "downloadtask")
/* loaded from: classes.dex */
public class DownloadTask implements Serializable {
    public static final int GAME_RUN_STATUS_CANT_RUN = 3;
    public static final int GAME_RUN_STATUS_ERROR = 2;
    public static final int GAME_RUN_STATUS_NONE = 0;
    public static final int GAME_RUN_STATUS_SUCCESS = 1;
    @DatabaseField
    private int _from;
    @DatabaseField
    private int _from_type;
    ModInfoBean _modInfoBean;
    SingleGameModInfoBean _singleGameModInfoBean;
    @DatabaseField
    private long actual_size;
    private CommonGameInfoBean ad_info;
    @DatabaseField
    private String ad_info_str;
    @DatabaseField
    private int ad_info_switch;
    @DatabaseField
    private String allow_start_up_ad;
    private String battle_upload_pic;
    @JsonIgnore
    private int cdn_down_switch;
    @DatabaseField
    private String cfg_down_url;
    @DatabaseField
    private String cfg_ver;
    @DatabaseField
    private String cfg_ver_name;
    @DatabaseField
    private int cost_type;
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField
    private long currentSize;
    @DatabaseField
    private String describe;
    private boolean disableShowSpeedUpPrompt;
    private int downLimit;
    private boolean downType;
    @DatabaseField
    private int down_count;
    @DatabaseField
    private int down_status;
    @DatabaseField
    private int down_type;
    private String down_url_remote;
    @DatabaseField
    private int downloadType;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    @DatabaseField
    private String dtype;
    @DatabaseField
    private long duration;
    private int event;
    @DatabaseField
    private String ext;
    @DatabaseField
    private String ext1;
    @DatabaseField
    private String fight_fun;
    @DatabaseField
    private String fight_screenshot_pic;
    @DatabaseField
    private int fight_type;
    @DatabaseField
    private String fileType;
    @DatabaseField
    private long finishTime;
    private boolean fromRecomDown;
    @DatabaseField
    private String gameZipPath;
    @DatabaseField
    private String game_info_top_pic;
    @DatabaseField
    private String game_info_tpl_type;
    @DatabaseField
    private int game_run_state;
    private int game_upgrade_state;
    @DatabaseField
    private int gift_package_switch;
    private boolean hasDeleteNotify;
    @DatabaseField(canBeNull = false, generatedId = true)
    private int id;
    @DatabaseField
    private int install_type;
    @DatabaseField
    private int interrupt;
    @DatabaseField
    private boolean isFightOpen;
    private boolean isNotCheckAddShortcut;
    @DatabaseField
    private boolean isOpen;
    @DatabaseField
    private int is_boot_commented;
    @DatabaseField
    private int is_fight;
    @DatabaseField
    private int is_network;
    private int is_world;
    @DatabaseField
    private String keyword;
    private long lastCompleteSize;
    private long lastTime;
    @DatabaseField
    private int lock_sp;
    private int max_an_compatible_ver;
    @DatabaseField
    private String mimeType;
    private int min_an_compatible_ver;
    private int mobleNetNeedStop;
    @DatabaseField
    private String mod_info;
    @DatabaseField
    private String name;
    @DatabaseField
    private long openTime;
    @JsonIgnore
    private int other_down_switch;
    @DatabaseField
    private String packageName;
    @DatabaseField(canBeNull = false)
    private String path;
    @DatabaseField
    private int pay_game_amount;
    @DatabaseField
    private int plugin_area;
    @DatabaseField
    private long plugin_area_val;
    @DatabaseField
    private String plugin_num;
    @DatabaseField
    private int plugin_screenshot;
    @DatabaseField
    private String portraitURL;
    @DatabaseField
    private long progress;
    @DatabaseField
    private String ref_crc_sign_id;
    @DatabaseField
    private long res_actual_size;
    @DatabaseField
    private long res_currentSize;
    @DatabaseField
    private String resource_path;
    @DatabaseField
    private String resource_url_remote;
    @JsonIgnore
    private String rid;
    private int romArchivedNum;
    private long romArchivedSize;
    @DatabaseField
    private String romType;
    @JsonIgnore
    private AtomicInteger runtimeStatus;
    @DatabaseField
    private String score;
    @DatabaseField
    private String screenshot_pic;
    @DatabaseField
    private String showName;
    @DatabaseField
    private String showSize;
    @DatabaseField
    private int showType;
    @DatabaseField
    private String single_game_mod_info;
    @DatabaseField
    private long size;
    @DatabaseField
    private String source_down_path;
    @DatabaseField
    private String source_down_url;
    @DatabaseField
    private String source_ver;
    @DatabaseField
    private String source_ver_name;
    private TipNew sp_tag_info;
    @DatabaseField
    private String sp_tag_info_s;
    @DatabaseField
    private int sp_tpl_two_position;
    private String speed;
    @DatabaseField
    private String starNumber;
    @DatabaseField
    private long startDownloadTime;
    private boolean startGame;
    @DatabaseField
    private long startTime;
    @DatabaseField
    private int status;
    @DatabaseField
    private String sync_memory;
    @DatabaseField
    private int task_down_type;
    @JsonIgnore
    private ArrayList<TipBean> tipBeans;
    @DatabaseField
    private String tips;
    @JsonIgnore
    private List<DownloadUrlBean> tp_down_url;
    @DatabaseField
    private int type;
    private boolean uncheckSelfSupport;
    @DatabaseField
    private String unzip_size;
    @DatabaseField(canBeNull = false)
    private String url;
    @DatabaseField
    private String ver;
    @DatabaseField
    private String ver_name;
    @DatabaseField
    private int vm_device_switch;
    @DatabaseField
    private long zipCost;

    public DownloadTask() {
        this.event = 18;
        this.id = 0;
        this.mimeType = "";
        this.name = "";
        this.path = "";
        this.size = 0L;
        this.showSize = "0";
        this.startTime = 0L;
        this.status = 14;
        this.finishTime = 0L;
        this.type = 0;
        this.url = "";
        this.showType = -1;
        this.fileType = Dtype.apk.name();
        this.plugin_num = "";
        this.ext1 = "";
        this.startDownloadTime = 0L;
        this.progress = 1L;
        this.speed = "0";
        this.runtimeStatus = new AtomicInteger(26);
        this._from = 0;
        this._from_type = 0;
        this.score = "";
        this.downType = true;
        this.downLimit = 300;
        this.mod_info = "";
        this.vm_device_switch = 1;
        this.cost_type = 1;
        this.hasDeleteNotify = false;
    }

    private String getSp_tag_info_s() {
        return this.sp_tag_info_s;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DownloadTask downloadTask = (DownloadTask) obj;
        return this.id == downloadTask.id && this.crc_link_type_val.equals(downloadTask.crc_link_type_val);
    }

    public long getActual_size() {
        return this.actual_size;
    }

    public CommonGameInfoBean getAd_info() {
        if (d2.i(this.ad_info_str)) {
            this.ad_info = (CommonGameInfoBean) JsonMapper.getInstance().fromJson(this.ad_info_str, CommonGameInfoBean.class);
        }
        return this.ad_info;
    }

    public String getAd_info_str() {
        return this.ad_info_str;
    }

    public int getAd_info_switch() {
        return this.ad_info_switch;
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getBattle_upload_pic() {
        return this.battle_upload_pic;
    }

    public int getCdn_down_switch() {
        return this.cdn_down_switch;
    }

    public String getCfg_down_url() {
        return this.cfg_down_url;
    }

    public String getCfg_ver() {
        return this.cfg_ver;
    }

    public String getCfg_ver_name() {
        return this.cfg_ver_name;
    }

    public int getCost_type() {
        return this.cost_type;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public long getCurrentSize() {
        long j4 = this.currentSize;
        if (j4 < 0) {
            return 0L;
        }
        return j4;
    }

    public String getDescribe() {
        return this.describe;
    }

    public int getDownLimit() {
        return this.downLimit;
    }

    public int getDown_count() {
        return this.down_count;
    }

    public int getDown_status() {
        return this.down_status;
    }

    public int getDown_type() {
        return h.l(this.plugin_num, this.down_type);
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public int getDownloadType() {
        return this.downloadType;
    }

    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public String getDtype() {
        return this.dtype;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getEvent() {
        return this.event;
    }

    public String getExt() {
        return this.ext;
    }

    public String getExt1() {
        return this.ext1;
    }

    public String getFight_fun() {
        return this.fight_fun;
    }

    public String getFight_screenshot_pic() {
        return this.fight_screenshot_pic;
    }

    public int getFight_type() {
        return this.fight_type;
    }

    public String getFileType() {
        return this.fileType;
    }

    public long getFinishTime() {
        return this.finishTime;
    }

    public String getGameZipPath() {
        return this.gameZipPath;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public int getGame_run_state() {
        return this.game_run_state;
    }

    public int getGame_upgrade_state() {
        return this.game_upgrade_state;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public int getId() {
        return this.id;
    }

    public int getInstall_type() {
        return this.install_type;
    }

    public int getInterrupt() {
        return this.interrupt;
    }

    public int getIs_boot_commented() {
        return this.is_boot_commented;
    }

    public int getIs_fight() {
        return this.is_fight;
    }

    public int getIs_network() {
        return this.is_network;
    }

    public int getIs_world() {
        return this.is_world;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public long getLastCompleteSize() {
        return this.lastCompleteSize;
    }

    public long getLastTime() {
        return this.lastTime;
    }

    public int getLock_sp() {
        return this.lock_sp;
    }

    public int getMax_an_compatible_ver() {
        return this.max_an_compatible_ver;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public int getMin_an_compatible_ver() {
        return this.min_an_compatible_ver;
    }

    public int getMobleNetNeedStop() {
        return this.mobleNetNeedStop;
    }

    public ModInfoBean getModInfoBean() {
        return getModInfoBean(true);
    }

    public String getMod_info() {
        return this.mod_info;
    }

    public String getName() {
        return this.name;
    }

    public long getOpenTime() {
        return this.openTime;
    }

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPath() {
        return this.path;
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
    }

    public int getPlugin_area() {
        return this.plugin_area;
    }

    public long getPlugin_area_val() {
        return this.plugin_area_val;
    }

    public String getPlugin_num() {
        return this.plugin_num;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public String getPortraitURL() {
        return this.portraitURL;
    }

    public long getProgress() {
        return this.progress;
    }

    public String getRef_crc_sign_id() {
        return this.ref_crc_sign_id;
    }

    public long getRes_actual_size() {
        return this.res_actual_size;
    }

    public long getRes_currentSize() {
        return this.res_currentSize;
    }

    public String getResource_path() {
        String str = this.resource_path;
        return (str == null || str.equals("0")) ? "" : this.resource_path;
    }

    public String getResource_url_remote() {
        String str = this.resource_url_remote;
        return (str == null || str.equals("0")) ? "" : this.resource_url_remote;
    }

    public String getRid() {
        return this.rid;
    }

    public int getRomArchivedNum() {
        return this.romArchivedNum;
    }

    public long getRomArchivedSize() {
        return this.romArchivedSize;
    }

    public String getRomType() {
        return this.romType;
    }

    public AtomicInteger getRuntimeStatus() {
        return this.runtimeStatus;
    }

    public String getScore() {
        return this.score;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getShowName() {
        return this.showName;
    }

    public String getShowSize() {
        return this.showSize;
    }

    public int getShowType() {
        return this.showType;
    }

    public SingleGameModInfoBean getSingleGameModInfoBean() {
        return getSingleGameModInfoBean(true);
    }

    public String getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    public long getSize() {
        return this.size;
    }

    public String getSource_down_path() {
        return this.source_down_path;
    }

    public String getSource_down_url() {
        return this.source_down_url;
    }

    public String getSource_ver() {
        return this.source_ver;
    }

    public String getSource_ver_name() {
        return this.source_ver_name;
    }

    public TipNew getSp_tag_info() {
        if (d2.i(this.sp_tag_info_s)) {
            try {
                return (TipNew) JsonMapper.getInstance().fromJson(this.sp_tag_info_s, TipNew.class);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getSpeed() {
        return this.speed;
    }

    public String getStarNumber() {
        return this.starNumber;
    }

    public long getStartDownloadTime() {
        return this.startDownloadTime;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public int getStatus() {
        return this.status;
    }

    public String getSync_memory() {
        String str = this.sync_memory;
        return str == null ? "" : str;
    }

    public int getTask_down_type() {
        return this.task_down_type;
    }

    public ArrayList<TipBean> getTipBeans() {
        if (!TextUtils.isEmpty(this.tips) && !this.tips.equals("\"\"")) {
            try {
                this.tipBeans = (ArrayList) JsonMapper.getInstance().fromJson(this.tips, JsonMapper.getInstance().createCollectionType(ArrayList.class, TipBean.class));
            } catch (Exception e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("tips=");
                sb.append(this.tips);
                e4.printStackTrace();
                this.tipBeans = new ArrayList<>();
            }
            return this.tipBeans;
        }
        return new ArrayList<>();
    }

    public String getTips() {
        return this.tips;
    }

    public List<DownloadUrlBean> getTp_down_url() {
        return this.tp_down_url;
    }

    public int getType() {
        return this.type;
    }

    public String getUnzip_size() {
        String str = this.unzip_size;
        if (str != null && !str.equals("") && this.unzip_size.contains(g0.f27568a)) {
            String str2 = this.unzip_size;
            return str2.substring(0, str2.indexOf(g0.f27568a));
        }
        return this.unzip_size;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVer() {
        return this.ver;
    }

    public int getVerCode() {
        String str = this.ver;
        if (str != null && !str.equals("")) {
            String[] split = this.ver.split("_");
            if (split.length > 0) {
                return Integer.parseInt(split[0]);
            }
        }
        return 0;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public int getVm_device_switch() {
        return this.vm_device_switch;
    }

    public long getZipCost() {
        return this.zipCost;
    }

    public int get_from() {
        return this._from;
    }

    public int get_from_type() {
        return this._from_type;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.id), this.crc_link_type_val);
    }

    public boolean isComplete() {
        return (TextUtils.isEmpty(this.url) || TextUtils.isEmpty(this.name) || TextUtils.isEmpty(this.path)) ? false : true;
    }

    public boolean isDisableShowSpeedUpPrompt() {
        return this.disableShowSpeedUpPrompt;
    }

    public boolean isDownType() {
        return this.downType;
    }

    public boolean isFightFun() {
        char c4;
        char c5;
        String fight_fun = getFight_fun();
        try {
            if (TextUtils.isEmpty(fight_fun) || fight_fun.length() < 2) {
                return false;
            }
            char charAt = fight_fun.charAt(1);
            if (fight_fun.length() >= 7) {
                c5 = fight_fun.charAt(6);
                c4 = fight_fun.charAt(5) == '1' ? '1' : '0';
            } else {
                c4 = '0';
                c5 = '0';
            }
            return '1' == charAt || '1' == c5 || ('0' == charAt && '0' == c5 && c4 == '1');
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public boolean isFightOpen() {
        return this.isFightOpen;
    }

    public boolean isFromRecomDown() {
        return this.fromRecomDown;
    }

    public boolean isHasDeleteNotify() {
        return this.hasDeleteNotify;
    }

    public int isIs_fight() {
        return this.is_fight;
    }

    public int isIs_network() {
        return this.is_network;
    }

    public boolean isMiniGame() {
        if (this.sp_tag_info == null) {
            this.sp_tag_info = getSp_tag_info();
        }
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getMini_game() == null) ? false : true;
    }

    public boolean isMod() {
        return d2.i(getMod_info());
    }

    public boolean isNotCheckAddShortcut() {
        return this.isNotCheckAddShortcut;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public int isPlugin_area() {
        return this.plugin_area;
    }

    public int isPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public boolean isSingleGame() {
        if (this.sp_tag_info == null) {
            this.sp_tag_info = getSp_tag_info();
        }
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getSingle_game_vm() == null) ? false : true;
    }

    public boolean isSo() {
        return Dtype.apk.name().equals(getFileType());
    }

    public boolean isStartGame() {
        return this.startGame;
    }

    public boolean isUncheckSelfSupport() {
        return this.uncheckSelfSupport;
    }

    public boolean isValid() {
        return URLUtil.isNetworkUrl(this.url);
    }

    public void setActual_size(long j4) {
        this.actual_size = j4;
    }

    public void setAd_info(CommonGameInfoBean commonGameInfoBean) {
        this.ad_info = commonGameInfoBean;
    }

    public void setAd_info_str(String str) {
        this.ad_info_str = str;
    }

    public void setAd_info_switch(int i2) {
        this.ad_info_switch = i2;
    }

    public void setAllow_start_up_ad(String str) {
        this.allow_start_up_ad = str;
    }

    public void setBattle_upload_pic(String str) {
        this.battle_upload_pic = str;
    }

    public void setCdn_down_switch(int i2) {
        this.cdn_down_switch = i2;
    }

    public void setCfg_down_url(String str) {
        this.cfg_down_url = str;
    }

    public void setCfg_ver(String str) {
        this.cfg_ver = str;
    }

    public void setCfg_ver_name(String str) {
        this.cfg_ver_name = str;
    }

    public void setCost_type(int i2) {
        this.cost_type = i2;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setCurrentSize(long j4) {
        this.currentSize = j4;
    }

    public void setDescribe(String str) {
        this.describe = str;
    }

    public void setDisableShowSpeedUpPrompt(boolean z3) {
        this.disableShowSpeedUpPrompt = z3;
    }

    public void setDownLimit(int i2) {
        this.downLimit = i2;
    }

    public void setDownType(boolean z3) {
        this.downType = z3;
    }

    public void setDown_count(int i2) {
        this.down_count = i2;
    }

    public void setDown_status(int i2) {
        this.down_status = i2;
    }

    public void setDown_type(int i2) {
        this.down_type = i2;
    }

    public void setDown_url_remote(String str) {
        this.down_url_remote = str;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.startTime = downloadTask.startTime;
        this.id = downloadTask.id;
        if (TextUtils.isEmpty(this.mimeType)) {
            this.mimeType = downloadTask.mimeType;
        }
        if (TextUtils.isEmpty(this.name)) {
            this.name = downloadTask.name;
        }
        if (TextUtils.isEmpty(this.path)) {
            this.path = downloadTask.path;
        }
        this.size = downloadTask.size;
        this.status = downloadTask.status;
        this.type = downloadTask.type;
        this.url = downloadTask.url;
    }

    public void setDownloadType(int i2) {
        this.downloadType = i2;
    }

    public void setDownload_original_switch(String str) {
        this.download_original_switch = str;
    }

    public void setDownload_outside_url(String str) {
        this.download_outside_url = str;
    }

    public void setDownload_source_switch_v1(String str) {
        this.download_source_switch_v1 = str;
    }

    public void setDownload_source_switch_v2(String str) {
        this.download_source_switch_v2 = str;
    }

    public void setDownload_source_url(String str) {
        this.download_source_url = str;
    }

    public void setDtype(String str) {
        this.dtype = str;
    }

    public void setDuration(long j4) {
        this.duration = j4;
    }

    public void setEvent(int i2) {
        this.event = i2;
    }

    public void setExt(String str) {
        this.ext = str;
    }

    public void setExt1(String str) {
        this.ext1 = str;
    }

    public void setFightOpen(boolean z3) {
        this.isFightOpen = z3;
    }

    public void setFight_fun(String str) {
        this.fight_fun = str;
    }

    public void setFight_screenshot_pic(String str) {
        this.fight_screenshot_pic = str;
    }

    public void setFight_type(int i2) {
        this.fight_type = i2;
    }

    public void setFileType(String str) {
        this.fileType = str;
    }

    public void setFinishTime(long j4) {
        this.finishTime = j4;
    }

    public void setFromRecomDown(boolean z3) {
        this.fromRecomDown = z3;
    }

    public void setGameZipPath(String str) {
        this.gameZipPath = str;
    }

    public void setGame_info_top_pic(String str) {
        this.game_info_top_pic = str;
    }

    public void setGame_info_tpl_type(String str) {
        this.game_info_tpl_type = str;
    }

    public void setGame_run_state(int i2) {
        this.game_run_state = i2;
    }

    public void setGame_upgrade_state(int i2) {
        this.game_upgrade_state = i2;
    }

    public void setGift_package_switch(int i2) {
        this.gift_package_switch = i2;
    }

    public void setHasDeleteNotify(boolean z3) {
        this.hasDeleteNotify = z3;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setInstall_type(int i2) {
        this.install_type = i2;
    }

    public void setInterrupt(int i2) {
        this.interrupt = i2;
    }

    public void setIsFightOpen(boolean z3) {
        this.isFightOpen = z3;
    }

    public void setIsOpen(boolean z3) {
        this.isOpen = z3;
    }

    public void setIs_boot_commented(int i2) {
        this.is_boot_commented = i2;
    }

    public void setIs_fight(int i2) {
        this.is_fight = i2;
    }

    public void setIs_network(int i2) {
        this.is_network = i2;
    }

    public void setIs_world(int i2) {
        this.is_world = i2;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setLastCompleteSize(long j4) {
        this.lastCompleteSize = j4;
    }

    public void setLastTime(long j4) {
        this.lastTime = j4;
    }

    public void setLock_sp(int i2) {
        this.lock_sp = i2;
    }

    public void setMax_an_compatible_ver(int i2) {
        this.max_an_compatible_ver = i2;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public void setMin_an_compatible_ver(int i2) {
        this.min_an_compatible_ver = i2;
    }

    public void setMobleNetNeedStop(int i2) {
        this.mobleNetNeedStop = i2;
    }

    public void setMod_info(String str) {
        this.mod_info = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNotCheckAddShortcut(boolean z3) {
        this.isNotCheckAddShortcut = z3;
    }

    public void setOpen(boolean z3) {
        this.isOpen = z3;
    }

    public void setOpenTime(long j4) {
        this.openTime = j4;
    }

    public void setOther_down_switch(int i2) {
        this.other_down_switch = i2;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPay_game_amount(int i2) {
        this.pay_game_amount = i2;
    }

    public void setPlugin_area(int i2) {
        this.plugin_area = i2;
    }

    public void setPlugin_area_val(long j4) {
        this.plugin_area_val = j4;
    }

    public void setPlugin_num(String str) {
        this.plugin_num = str;
    }

    public void setPlugin_screenshot(int i2) {
        this.plugin_screenshot = i2;
    }

    public void setPortraitURL(String str) {
        this.portraitURL = str;
    }

    public void setProgress(long j4) {
        this.progress = j4;
    }

    public void setRef_crc_sign_id(String str) {
        this.ref_crc_sign_id = str;
    }

    public void setRes_actual_size(long j4) {
        this.res_actual_size = j4;
    }

    public void setRes_currentSize(long j4) {
        this.res_currentSize = j4;
    }

    public void setResource_path(String str) {
        this.resource_path = str;
    }

    public void setResource_url_remote(String str) {
        this.resource_url_remote = str;
    }

    public void setRid(String str) {
        this.rid = str;
    }

    public void setRomArchivedNum(int i2) {
        this.romArchivedNum = i2;
    }

    public void setRomArchivedSize(long j4) {
        this.romArchivedSize = j4;
    }

    public void setRomType(String str) {
        this.romType = str;
    }

    public void setRuntimeStatus(AtomicInteger atomicInteger) {
        this.runtimeStatus = atomicInteger;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public void setScreenshot_pic(String str) {
        this.screenshot_pic = str;
    }

    public void setShowName(String str) {
        this.showName = str;
    }

    public void setShowSize(String str) {
        this.showSize = str;
    }

    public void setShowType(int i2) {
        this.showType = i2;
    }

    public void setSingle_game_mod_info(String str) {
        this.single_game_mod_info = str;
    }

    public void setSize(long j4) {
        this.size = j4;
    }

    public void setSource_down_path(String str) {
        this.source_down_path = str;
    }

    public void setSource_down_url(String str) {
        this.source_down_url = str;
    }

    public void setSource_ver(String str) {
        this.source_ver = str;
    }

    public void setSource_ver_name(String str) {
        this.source_ver_name = str;
    }

    public void setSp_tag_info(TipNew tipNew) {
        if (tipNew != null) {
            try {
                this.sp_tag_info_s = JsonMapper.getInstance().toJson(tipNew);
            } catch (Exception unused) {
            }
        }
        this.sp_tag_info = tipNew;
    }

    public void setSp_tag_info_s(String str) {
        this.sp_tag_info_s = str;
    }

    public void setSp_tpl_two_position(int i2) {
        this.sp_tpl_two_position = i2;
    }

    public void setSpeed(String str) {
        this.speed = str;
    }

    public void setStarNumber(String str) {
        this.starNumber = str;
    }

    public void setStartDownloadTime(long j4) {
        this.startDownloadTime = j4;
    }

    public void setStartGame(boolean z3) {
        this.startGame = z3;
    }

    public void setStartTime(long j4) {
        this.startTime = j4;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setSync_memory(String str) {
        this.sync_memory = str;
    }

    public void setTask_down_type(int i2) {
        this.task_down_type = i2;
    }

    public void setTipBeans(ArrayList<TipBean> arrayList) {
        setTips(JsonMapper.getInstance().toJson(arrayList));
        this.tipBeans = arrayList;
    }

    public void setTips(String str) {
        this.tips = str;
    }

    public void setTp_down_url(List<DownloadUrlBean> list) {
        this.tp_down_url = list;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUncheckSelfSupport(boolean z3) {
        this.uncheckSelfSupport = z3;
    }

    public void setUnzip_size(String str) {
        this.unzip_size = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_name(String str) {
        this.ver_name = str;
    }

    public void setVm_device_switch(int i2) {
        this.vm_device_switch = i2;
    }

    public void setWorld_area(int i2) {
    }

    public void setWorld_shop(int i2) {
    }

    public void setZipCost(long j4) {
        this.zipCost = j4;
    }

    public void set_from(int i2) {
        this._from = i2;
    }

    public void set_from_type(int i2) {
        this._from_type = i2;
    }

    public ModInfoBean getModInfoBean(boolean z3) {
        if (isMod()) {
            if (z3) {
                this._modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(this.mod_info, ModInfoBean.class);
            } else if (this._modInfoBean == null) {
                this._modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(this.mod_info, ModInfoBean.class);
            }
            return this._modInfoBean;
        }
        return null;
    }

    public SingleGameModInfoBean getSingleGameModInfoBean(boolean z3) {
        if (d2.i(this.single_game_mod_info)) {
            if (z3) {
                this._singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(this.single_game_mod_info, SingleGameModInfoBean.class);
            } else if (this._singleGameModInfoBean == null) {
                this._singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(this.single_game_mod_info, SingleGameModInfoBean.class);
            }
            return this._singleGameModInfoBean;
        }
        return null;
    }

    public DownloadTask(Context context, long j4, int i2, String str, String str2, String str3, long j5, String str4, long j6, int i4, int i5, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, boolean z3, boolean z4, String str17, int i6, String str18, String str19, String str20, String str21, int i7, String str22, String str23, long j7, ArrayList<TipBean> arrayList, long j8, long j9, String str24, String str25, int i8, int i9, String str26, String str27, String str28, String str29, int i10, int i11, long j10, int i12, int i13, int i14, int i15, String str30, boolean z5, String str31, String str32, String str33, String str34, int i16, String str35) {
        this.event = 18;
        this.id = 0;
        this.mimeType = "";
        this.name = "";
        this.path = "";
        this.size = 0L;
        this.showSize = "0";
        this.startTime = 0L;
        this.status = 14;
        this.finishTime = 0L;
        this.type = 0;
        this.url = "";
        this.showType = -1;
        this.fileType = Dtype.apk.name();
        this.plugin_num = "";
        this.ext1 = "";
        this.startDownloadTime = 0L;
        this.progress = 1L;
        this.speed = "0";
        this.runtimeStatus = new AtomicInteger(26);
        this._from = 0;
        this._from_type = 0;
        this.score = "";
        this.downType = true;
        this.downLimit = 300;
        this.mod_info = "";
        this.vm_device_switch = 1;
        this.cost_type = 1;
        this.hasDeleteNotify = false;
        this.finishTime = j4;
        this.id = i2;
        this.mimeType = str;
        this.name = str2;
        this.path = str3;
        this.size = j5;
        this.showSize = str4;
        this.startTime = j6;
        this.status = i4;
        this.type = i5;
        this.url = str5;
        this.gameZipPath = str6;
        this.showName = str7;
        this.dtype = str8;
        this.packageName = str9;
        this.tips = str10;
        this.portraitURL = str11;
        this.crc_link_type_val = str12;
        this.ver = str13;
        this.ver_name = str14;
        this.starNumber = str15;
        this.romType = str16;
        this.isOpen = z3;
        this.isFightOpen = z4;
        this.describe = str17;
        this.showType = i6;
        this.fileType = str18;
        this.cfg_ver_name = str19;
        this.cfg_ver = str20;
        this.cfg_down_url = str21;
        this.downloadType = i7;
        this.screenshot_pic = str22;
        this.fight_screenshot_pic = str23;
        this.openTime = j7;
        this.tipBeans = arrayList;
        this.lastCompleteSize = j8;
        this.lastTime = j9;
        this.keyword = str24;
        this.plugin_num = str25;
        this.is_network = i9;
        this.source_ver_name = str26;
        this.source_ver = str27;
        this.source_down_url = str28;
        this.source_down_path = str29;
        this.plugin_screenshot = i10;
        this.plugin_area = i11;
        this.plugin_area_val = j10;
        this.is_fight = i14;
        this.fight_type = i15;
        this.fight_fun = str30;
        this.startGame = z5;
        this.rid = str31;
        this.duration = this.duration;
        this.game_info_tpl_type = str33;
        this.sync_memory = str34;
        this.gift_package_switch = i16;
        this.ad_info_str = str35;
    }
}
