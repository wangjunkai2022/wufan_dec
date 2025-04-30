package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.d2;
import com.psk.eventmodule.StatFactory;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class PAPAHomeBeanV7 implements Serializable {
    private List<HomeBeanDTO> eo_playing;
    private HomeBeanDTO f_video_ad;
    private List<HomeBeanDTO> fast_entry;
    private List<HomeBeanDTO> jys_like;
    private List<NgSelectionDTO> ng_selection;
    private RankingListDTO ranking_list;
    private List<RecommendListDTO> recommend_list;
    private SScrollingTxtDTO s_scrolling_txt;
    private HomeBeanDTO s_video_ad;
    private TopChannelDTO top_channel;

    /* loaded from: classes4.dex */
    public static class GInfoDTO implements Serializable {
        private Integer down_state;
        private String game_info_tpl_type;
        private String ico;
        private String id;
        private String mod_id;
        private String name;
        private Integer plugin_num;
        private StatFactory.VolcanoOther position_path;
        private String sync_memory;
        private List<Integer> tag_id;
        private String tag_name;

        public Integer getDown_state() {
            return this.down_state;
        }

        public String getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getIco() {
            return this.ico;
        }

        public String getId() {
            return this.id;
        }

        public String getMod_id() {
            return this.mod_id;
        }

        public String getName() {
            return this.name;
        }

        public Integer getPlugin_num() {
            return this.plugin_num;
        }

        public StatFactory.VolcanoOther getPosition_path() {
            return this.position_path;
        }

        public String getSync_memory() {
            return this.sync_memory;
        }

        public List<Integer> getTag_id() {
            return this.tag_id;
        }

        public String getTag_name() {
            return this.tag_name;
        }

        public void setDown_state(Integer num) {
            this.down_state = num;
        }

        public void setGame_info_tpl_type(String str) {
            this.game_info_tpl_type = str;
        }

        public void setIco(String str) {
            this.ico = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setMod_id(String str) {
            this.mod_id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPlugin_num(Integer num) {
            this.plugin_num = num;
        }

        public void setPosition_path(StatFactory.VolcanoOther volcanoOther) {
            this.position_path = volcanoOther;
        }

        public void setSync_memory(String str) {
            this.sync_memory = str;
        }

        public void setTag_id(List<Integer> list) {
            this.tag_id = list;
        }

        public void setTag_name(String str) {
            this.tag_name = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class HomeBeanDTO implements Serializable {
        private int _from;
        private int _from_type;
        private Integer ad_switch;
        private String big_pic;
        private DownloadTask downloadTask;
        private GInfoDTO g_info;
        private CollectionBeanSub gameBean;
        private boolean hasExposure;
        private boolean isRequesting;
        private JpInfoDTO jp_info;
        private String position;
        private Integer quit_switch;
        private String sub_title;
        private String title;
        private String v_url;

        public Integer getAd_switch() {
            return this.ad_switch;
        }

        public String getBig_pic() {
            return this.big_pic;
        }

        public DownloadTask getDownloadTask() {
            return this.downloadTask;
        }

        public GInfoDTO getG_info() {
            return this.g_info;
        }

        public CollectionBeanSub getGameBean() {
            return this.gameBean;
        }

        public IntentDateBean getIntentDataBean() {
            GInfoDTO gInfoDTO;
            IntentDateBean intentDateBean = new IntentDateBean();
            JpInfoDTO jpInfoDTO = this.jp_info;
            if (jpInfoDTO != null) {
                intentDateBean.setJump_type(jpInfoDTO.getJump_type().intValue());
                intentDateBean.setLink_type(this.jp_info.getLink_type().intValue());
                intentDateBean.setLink_type_val(this.jp_info.getLink_type_val());
                if (this.jp_info.getLink_type().intValue() == 1 && (gInfoDTO = this.g_info) != null) {
                    intentDateBean.setTpl_type(gInfoDTO.getGame_info_tpl_type());
                } else {
                    intentDateBean.setTpl_type(this.jp_info.getTpl_type());
                }
                intentDateBean.setCrc_link_type_val(this.jp_info.getCrc_link_type_val());
                if (d2.i(this.title)) {
                    intentDateBean.setObject(this.title);
                }
                if (d2.h(this.title) && d2.i(this.sub_title)) {
                    intentDateBean.setObject(this.sub_title);
                }
            }
            if (intentDateBean.getExtBean() == null) {
                intentDateBean.setExtBean(new ExtBean());
            }
            intentDateBean.getExtBean().setFrom(String.valueOf(this._from));
            intentDateBean.getExtBean().set_from_type(this._from_type);
            intentDateBean.getExtBean().setVolcanoOther(this.g_info == null ? null : JsonMapper.getInstance().toJson(this.g_info.getPosition_path()));
            intentDateBean.getExtBean().setRecPosition(getPosition());
            return intentDateBean;
        }

        public JpInfoDTO getJp_info() {
            return this.jp_info;
        }

        public String getPosition() {
            return this.position;
        }

        public Integer getQuit_switch() {
            return this.quit_switch;
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

        public int get_from() {
            return this._from;
        }

        public int get_from_type() {
            return this._from_type;
        }

        public boolean isHasExposure() {
            return this.hasExposure;
        }

        public boolean isRequesting() {
            return this.isRequesting;
        }

        public void setAd_switch(Integer num) {
            this.ad_switch = num;
        }

        public void setBig_pic(String str) {
            this.big_pic = str;
        }

        public void setDownloadTask(DownloadTask downloadTask) {
            this.downloadTask = downloadTask;
        }

        public void setG_info(GInfoDTO gInfoDTO) {
            this.g_info = gInfoDTO;
        }

        public void setGameBean(CollectionBeanSub collectionBeanSub) {
            this.gameBean = collectionBeanSub;
        }

        public void setHasExposure(boolean z3) {
            this.hasExposure = z3;
        }

        public void setJp_info(JpInfoDTO jpInfoDTO) {
            this.jp_info = jpInfoDTO;
        }

        public void setPosition(String str) {
            this.position = str;
        }

        public void setQuit_switch(Integer num) {
            this.quit_switch = num;
        }

        public void setRequesting(boolean z3) {
            this.isRequesting = z3;
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

        public void set_from(int i2) {
            this._from = i2;
        }

        public void set_from_type(int i2) {
            this._from_type = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class JpInfoDTO implements Serializable {
        private String crc_link_type_val;
        private Integer is_more;
        private Integer jump_type;
        private Integer link_type;
        private String link_type_val;
        private String tpl_type;

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public Integer getIs_more() {
            return this.is_more;
        }

        public Integer getJump_type() {
            return this.jump_type;
        }

        public Integer getLink_type() {
            return this.link_type;
        }

        public String getLink_type_val() {
            return this.link_type_val;
        }

        public String getTpl_type() {
            return this.tpl_type;
        }

        public void setCrc_link_type_val(String str) {
            this.crc_link_type_val = str;
        }

        public void setIs_more(Integer num) {
            this.is_more = num;
        }

        public void setJump_type(Integer num) {
            this.jump_type = num;
        }

        public void setLink_type(Integer num) {
            this.link_type = num;
        }

        public void setLink_type_val(String str) {
            this.link_type_val = str;
        }

        public void setTpl_type(String str) {
            this.tpl_type = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ListDTO implements Serializable {
        private String ico;
        private Long id;

        public String getIco() {
            return this.ico;
        }

        public Long getId() {
            return this.id;
        }

        public void setIco(String str) {
            this.ico = str;
        }

        public void setId(Long l4) {
            this.id = l4;
        }
    }

    /* loaded from: classes4.dex */
    public static class NgSelectionDTO implements Serializable {
        private int _from;
        private int _from_type;
        private String date;
        private int game_info_tpl_type;
        private boolean hasExposure;
        private String ico;
        private String id;
        private String name;
        private String position;
        private String title;

        public String getDate() {
            return this.date;
        }

        public int getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getIco() {
            return this.ico;
        }

        public String getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public String getPosition() {
            return this.position;
        }

        public String getTitle() {
            return this.title;
        }

        public int get_from() {
            return this._from;
        }

        public int get_from_type() {
            return this._from_type;
        }

        public boolean isHasExposure() {
            return this.hasExposure;
        }

        public void setDate(String str) {
            this.date = str;
        }

        public void setGame_info_tpl_type(int i2) {
            this.game_info_tpl_type = i2;
        }

        public void setHasExposure(boolean z3) {
            this.hasExposure = z3;
        }

        public void setIco(String str) {
            this.ico = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPosition(String str) {
            this.position = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void set_from(int i2) {
            this._from = i2;
        }

        public void set_from_type(int i2) {
            this._from_type = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class RankingListDTO implements Serializable {
        private List<List<HomeBeanDTO>> list;
        private String txt;

        public List<List<HomeBeanDTO>> getList() {
            return this.list;
        }

        public String getTxt() {
            return this.txt;
        }

        public void setList(List<List<HomeBeanDTO>> list) {
            this.list = list;
        }

        public void setTxt(String str) {
            this.txt = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class RecommendListDTO implements Serializable {
        private List<HomeBeanDTO> list;
        private String sub_title;
        private String title;
        private Integer tpl_type;

        public List<HomeBeanDTO> getList() {
            return this.list;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public Integer getTpl_type() {
            return this.tpl_type;
        }

        public void setList(List<HomeBeanDTO> list) {
            this.list = list;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTpl_type(Integer num) {
            this.tpl_type = num;
        }
    }

    /* loaded from: classes4.dex */
    public static class SScrollingTxtDTO implements Serializable {
        private int interval;
        private List<String> text;

        public int getInterval() {
            return this.interval;
        }

        public List<String> getText() {
            return this.text;
        }

        public void setInterval(int i2) {
            this.interval = i2;
        }

        public void setText(List<String> list) {
            this.text = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class TheNewDTO implements Serializable {
        private Integer count;
        private List<ListDTO> list;
        private Integer pv;

        public Integer getCount() {
            return this.count;
        }

        public List<ListDTO> getList() {
            return this.list;
        }

        public Integer getPv() {
            return this.pv;
        }

        public void setCount(Integer num) {
            this.count = num;
        }

        public void setList(List<ListDTO> list) {
            this.list = list;
        }

        public void setPv(Integer num) {
            this.pv = num;
        }
    }

    /* loaded from: classes4.dex */
    public static class TopChannelDTO implements Serializable {
        private String bg_color;
        private HomeBeanDTO broadcast;
        private HomeBeanDTO discover;
        private TheNewDTO theNew;

        public String getBg_color() {
            return this.bg_color;
        }

        public HomeBeanDTO getBroadcast() {
            return this.broadcast;
        }

        public HomeBeanDTO getDiscover() {
            return this.discover;
        }

        public TheNewDTO getTheNew() {
            return this.theNew;
        }

        public void setBg_color(String str) {
            this.bg_color = str;
        }

        public void setBroadcast(HomeBeanDTO homeBeanDTO) {
            this.broadcast = homeBeanDTO;
        }

        public void setDiscover(HomeBeanDTO homeBeanDTO) {
            this.discover = homeBeanDTO;
        }

        public void setTheNew(TheNewDTO theNewDTO) {
            this.theNew = theNewDTO;
        }
    }

    public List<HomeBeanDTO> getEo_playing() {
        return this.eo_playing;
    }

    public HomeBeanDTO getF_video_ad() {
        return this.f_video_ad;
    }

    public List<HomeBeanDTO> getFast_entry() {
        return this.fast_entry;
    }

    public List<HomeBeanDTO> getJys_like() {
        return this.jys_like;
    }

    public List<NgSelectionDTO> getNg_selection() {
        return this.ng_selection;
    }

    public RankingListDTO getRanking_list() {
        return this.ranking_list;
    }

    public List<RecommendListDTO> getRecommend_list() {
        return this.recommend_list;
    }

    public SScrollingTxtDTO getS_scrolling_txt() {
        return this.s_scrolling_txt;
    }

    public HomeBeanDTO getS_video_ad() {
        return this.s_video_ad;
    }

    public TopChannelDTO getTop_channel() {
        return this.top_channel;
    }

    public boolean isEmpty() {
        return this.recommend_list == null && this.s_scrolling_txt == null && this.top_channel == null && this.fast_entry == null && this.eo_playing == null && this.f_video_ad == null && this.jys_like == null && this.ng_selection == null && this.s_video_ad == null && this.ranking_list == null;
    }

    public void setEo_playing(List<HomeBeanDTO> list) {
        this.eo_playing = list;
    }

    public void setF_video_ad(HomeBeanDTO homeBeanDTO) {
        this.f_video_ad = homeBeanDTO;
    }

    public void setFast_entry(List<HomeBeanDTO> list) {
        this.fast_entry = list;
    }

    public void setJys_like(List<HomeBeanDTO> list) {
        this.jys_like = list;
    }

    public void setNg_selection(List<NgSelectionDTO> list) {
        this.ng_selection = list;
    }

    public void setRanking_list(RankingListDTO rankingListDTO) {
        this.ranking_list = rankingListDTO;
    }

    public void setRecommend_list(List<RecommendListDTO> list) {
        this.recommend_list = list;
    }

    public void setS_scrolling_txt(SScrollingTxtDTO sScrollingTxtDTO) {
        this.s_scrolling_txt = sScrollingTxtDTO;
    }

    public void setS_video_ad(HomeBeanDTO homeBeanDTO) {
        this.s_video_ad = homeBeanDTO;
    }

    public void setTop_channel(TopChannelDTO topChannelDTO) {
        this.top_channel = topChannelDTO;
    }
}
