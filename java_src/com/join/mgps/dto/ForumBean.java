package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.github.snowdream.android.app.downloader.DownloadTask;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ForumBean implements Serializable, Cloneable {
    private long add_time;
    private String description;
    private int fid;
    private int follow_count;
    private long follow_time;
    private String game_collections;
    private String icon_src;
    @JsonProperty("is_follow")
    private boolean is_follow;
    private int member_is_write;
    private String name;
    private int posts;
    private int svip_is_write;
    private int today_posts;
    private int users;
    private int vip_is_write;

    /* loaded from: classes.dex */
    public static class ForumCommentBean implements Cloneable {
        private long add_time;
        private int answer_flg;
        private String avatar_src;
        private int floor;
        private int forum_auth;
        @JsonProperty("is_moderator")
        private boolean is_moderator;
        private String member_honor;
        private String message;
        private String nickname;
        private boolean officialAccount;
        private List<String> pic_list;
        private int pid;
        private List<String> raw_pic_list;
        private List<ForumCommentReplyBean> reply_list;
        private int svip_level;
        private int uid;
        private int vip_level;

        public ForumCommentBean() {
        }

        public Object clone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException e4) {
                e4.printStackTrace();
                return new ForumCommentBean();
            }
        }

        public long getAdd_time() {
            return this.add_time;
        }

        public int getAnswer_flg() {
            return this.answer_flg;
        }

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public int getFloor() {
            return this.floor;
        }

        public int getForum_auth() {
            return this.forum_auth;
        }

        public String getMember_honor() {
            return this.member_honor;
        }

        public String getMessage() {
            return this.message;
        }

        public String getNickname() {
            return this.nickname;
        }

        public List<String> getPic_list() {
            return this.pic_list;
        }

        public int getPid() {
            return this.pid;
        }

        public List<String> getRaw_pic_list() {
            return this.raw_pic_list;
        }

        public List<ForumCommentReplyBean> getReply_list() {
            return this.reply_list;
        }

        public int getSvip_level() {
            return this.svip_level;
        }

        public int getUid() {
            return this.uid;
        }

        public int getVip_level() {
            return this.vip_level;
        }

        public boolean isOfficialAccount() {
            return this.officialAccount;
        }

        public boolean is_moderator() {
            return this.is_moderator;
        }

        public void setAdd_time(long j4) {
            this.add_time = j4;
        }

        public void setAnswer_flg(int i2) {
            this.answer_flg = i2;
        }

        public void setAvatar_src(String str) {
            this.avatar_src = str;
        }

        public void setFloor(int i2) {
            this.floor = i2;
        }

        public void setForum_auth(int i2) {
            this.forum_auth = i2;
        }

        public void setIs_moderator(boolean z3) {
            this.is_moderator = z3;
        }

        public void setMember_honor(String str) {
            this.member_honor = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setOfficialAccount(boolean z3) {
            this.officialAccount = z3;
        }

        public void setPic_list(List<String> list) {
            if (this.pic_list == null) {
                this.pic_list = new ArrayList();
            }
            this.pic_list.clear();
            this.pic_list.addAll(list);
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setRaw_pic_list(List<String> list) {
            this.raw_pic_list = list;
        }

        public void setReply_list(List<ForumCommentReplyBean> list) {
            if (this.reply_list == null) {
                this.reply_list = new ArrayList();
            }
            this.reply_list.clear();
            this.reply_list.addAll(list);
        }

        public void setSvip_level(int i2) {
            this.svip_level = i2;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public void setVip_level(int i2) {
            this.vip_level = i2;
        }

        public ForumCommentBean(ForumCommentBean forumCommentBean) {
            this.pid = forumCommentBean.getPid();
            this.uid = forumCommentBean.getUid();
            this.floor = forumCommentBean.getFloor();
            this.nickname = forumCommentBean.getNickname();
            this.avatar_src = forumCommentBean.getAvatar_src();
            this.message = forumCommentBean.getMessage();
            this.add_time = forumCommentBean.getAdd_time();
            this.raw_pic_list = forumCommentBean.getRaw_pic_list();
            this.pic_list = forumCommentBean.getPic_list();
            setReply_list(forumCommentBean.getReply_list());
            this.forum_auth = forumCommentBean.getForum_auth();
            this.officialAccount = forumCommentBean.isOfficialAccount();
            this.answer_flg = forumCommentBean.getAnswer_flg();
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumCommentReplyBean {
        private long add_time;
        private BannerBean jump_info;
        private String message;
        private String nickname;
        private boolean officialAccount;
        private boolean rOfficialAccount;
        private int rid;
        private String rnickname;
        private int rrid;
        private int ruid;
        private int uid;

        public long getAdd_time() {
            return this.add_time;
        }

        public BannerBean getJump_info() {
            return this.jump_info;
        }

        public String getMessage() {
            return this.message;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getRid() {
            return this.rid;
        }

        public String getRnickname() {
            return this.rnickname;
        }

        public int getRrid() {
            return this.rrid;
        }

        public int getRuid() {
            return this.ruid;
        }

        public int getUid() {
            return this.uid;
        }

        public boolean isOfficialAccount() {
            return this.officialAccount;
        }

        public boolean isrOfficialAccount() {
            return this.rOfficialAccount;
        }

        public void setAdd_time(long j4) {
            this.add_time = j4;
        }

        public void setJump_info(BannerBean bannerBean) {
            this.jump_info = bannerBean;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setOfficialAccount(boolean z3) {
            this.officialAccount = z3;
        }

        public void setRid(int i2) {
            this.rid = i2;
        }

        public void setRnickname(String str) {
            this.rnickname = str;
        }

        public void setRrid(int i2) {
            this.rrid = i2;
        }

        public void setRuid(int i2) {
            this.ruid = i2;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public void setrOfficialAccount(boolean z3) {
            this.rOfficialAccount = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumCopperTitle {
        private String battleColor;
        private String battleTitle;

        public String getBattleColor() {
            return this.battleColor;
        }

        public String getBattleTitle() {
            return this.battleTitle;
        }

        public void setBattleColor(String str) {
            this.battleColor = str;
        }

        public void setBattleTitle(String str) {
            this.battleTitle = str;
        }
    }

    /* loaded from: classes4.dex */
    public enum ForumEvent {
        ForumWelcomeBanner,
        ForumWelcome,
        ForumWelcomePosts,
        Forum,
        ForumPosts,
        ForumAll,
        PostsSubmit,
        Posts,
        PostsIndex2,
        PostsDelete,
        PostsComment,
        PostsPraise,
        CommentReply,
        CommentReplyDelete,
        ProfilePosts,
        ProfileGetUnreadMessageCount,
        ProfileMessage,
        ProfileComment,
        MyProfileFavorites,
        ForumIndexBanner,
        HomepageRecommendGroup,
        HomepageRecommendLabel,
        HomeGameCarefully,
        DownloadCenterAd,
        SearchListData
    }

    /* loaded from: classes4.dex */
    public static class ForumExtBean {
        List<ForumBean> followedForums;
        boolean isContainHelp;
        boolean refresh;
        int requestCode;
        int startFlags;
        ForumTabBean tabBean;

        public List<ForumBean> getFollowedForums() {
            return this.followedForums;
        }

        public int getRequestCode() {
            return this.requestCode;
        }

        public int getStartFlags() {
            int i2 = this.startFlags;
            if (i2 == 0) {
                return 67108864;
            }
            if (i2 < 0) {
                return 0;
            }
            return i2;
        }

        public ForumTabBean getTabBean() {
            return this.tabBean;
        }

        public boolean isContainHelp() {
            return this.isContainHelp;
        }

        public boolean isRefresh() {
            return this.refresh;
        }

        public void setContainHelp(boolean z3) {
            this.isContainHelp = z3;
        }

        public void setFollowedForums(List<ForumBean> list) {
            this.followedForums = list;
        }

        public void setRefresh(boolean z3) {
            this.refresh = z3;
        }

        public void setRequestCode(int i2) {
            this.requestCode = i2;
        }

        public void setStartFlags(int i2) {
            this.startFlags = i2;
        }

        public void setTabBean(ForumTabBean forumTabBean) {
            this.tabBean = forumTabBean;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumGagType {
        private String name;
        private int type;

        public String getName() {
            return this.name;
        }

        public int getType() {
            return this.type;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setType(int i2) {
            this.type = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumGameStrategyTagBean {
        private String tag_id;
        private String tag_name;

        public String getTag_id() {
            return this.tag_id;
        }

        public String getTag_name() {
            return this.tag_name;
        }

        public void setTag_id(String str) {
            this.tag_id = str;
        }

        public void setTag_name(String str) {
            this.tag_name = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumGiftBean {
        private String cdk_code;
        private String oem_end_time;
        private String oem_icon;
        private String oem_id;
        private String oem_name;
        private String oem_title;
        private String oem_type;
        private Boolean receive;
        private String surplus_count;

        public String getCdk_code() {
            return this.cdk_code;
        }

        public String getOem_end_time() {
            return this.oem_end_time;
        }

        public String getOem_icon() {
            return this.oem_icon;
        }

        public String getOem_id() {
            return this.oem_id;
        }

        public String getOem_name() {
            return this.oem_name;
        }

        public String getOem_title() {
            return this.oem_title;
        }

        public String getOem_type() {
            return this.oem_type;
        }

        public Boolean getReceive() {
            return this.receive;
        }

        public String getSurplus_count() {
            return this.surplus_count;
        }

        public void setCdk_code(String str) {
            this.cdk_code = str;
        }

        public void setOem_end_time(String str) {
            this.oem_end_time = str;
        }

        public void setOem_icon(String str) {
            this.oem_icon = str;
        }

        public void setOem_id(String str) {
            this.oem_id = str;
        }

        public void setOem_name(String str) {
            this.oem_name = str;
        }

        public void setOem_title(String str) {
            this.oem_title = str;
        }

        public void setOem_type(String str) {
            this.oem_type = str;
        }

        public void setReceive(Boolean bool) {
            this.receive = bool;
        }

        public void setSurplus_count(String str) {
            this.surplus_count = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumMemberBean {
        private long add_time;
        private String avatar_src;
        private String nickname;
        private int svip_level;
        private int uid;
        private int vip_level;

        public long getAdd_time() {
            return this.add_time;
        }

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getSvip_level() {
            return this.svip_level;
        }

        public int getUid() {
            return this.uid;
        }

        public int getVip_level() {
            return this.vip_level;
        }

        public void setAdd_time(long j4) {
            this.add_time = j4;
        }

        public void setAvatar_src(String str) {
            this.avatar_src = str;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setSvip_level(int i2) {
            this.svip_level = i2;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public void setVip_level(int i2) {
            this.vip_level = i2;
        }
    }

    /* loaded from: classes.dex */
    public static class ForumPostsBean implements Serializable, Cloneable {
        private long add_time;
        private boolean attach_pic;
        private boolean attach_video;
        private int auth;
        private String avatar_src;
        private int best;
        private String cdn_url;
        private String comment;
        private int commit;
        private ForumCopperTitle copper_title;
        private List<RecommendLabelTag> employ_tags;
        private int fid;
        private int first;
        private String fname;
        private int forum_auth;
        private String forum_name;
        private String game_id;
        private int help;
        private int help_money;
        @JsonProperty("is_add_tag_allow")
        private boolean is_add_tag_allow;
        @JsonProperty("is_best_allow")
        private boolean is_best_allow;
        @JsonProperty("is_del_allow")
        private boolean is_del_allow;
        @JsonProperty("is_favorite")
        private boolean is_favorite;
        @JsonProperty("is_first")
        private boolean is_first;
        @JsonProperty("is_gag")
        private boolean is_gag;
        @JsonProperty("is_moderator")
        private boolean is_moderator;
        @JsonProperty("is_praise")
        private boolean is_praise;
        @JsonProperty("is_remove_tag_allow")
        private boolean is_remove_tag_allow;
        private String last_comment_time;
        private String member_honor;
        private String message;
        private String nickname;
        private boolean officialAccount;
        private int pid;
        private int post_type;
        private int praise;
        private GameInfo relation_game;
        private String resource_url;
        private List<ResBean> rs_list;
        private List<ResBean> small_thumb_pic_list;
        private int solve_flg;
        private int strategy;
        private String subject;
        private int svip_level;
        private List<TagInfo> tag_info;
        private List<RecommendLabelTag> tag_list;
        private List<RecommendLabelTag> tags;
        private int uid;
        private int view;
        private int vip_level;

        /* loaded from: classes4.dex */
        public static class ResBean {
            private String raw;
            private String thumb;
            private String type;

            public ResBean() {
            }

            public String getRaw() {
                return this.raw;
            }

            public String getThumb() {
                return this.thumb;
            }

            public String getType() {
                return this.type;
            }

            public void setRaw(String str) {
                this.raw = str;
            }

            public void setThumb(String str) {
                this.thumb = str;
            }

            public void setType(String str) {
                this.type = str;
            }

            public ResBean(String str, String str2, String str3) {
                this.type = str;
                this.thumb = str2;
                this.raw = str3;
            }
        }

        /* loaded from: classes4.dex */
        public static class TagInfo {
            private String border_color;
            private String color;
            private String font_color;
            private String id;
            private String name;

            public String getBorder_color() {
                return this.border_color;
            }

            public String getColor() {
                return this.color;
            }

            public String getFont_color() {
                return this.font_color;
            }

            public String getId() {
                return this.id;
            }

            public String getName() {
                return this.name;
            }

            public void setBorder_color(String str) {
                this.border_color = str;
            }

            public void setColor(String str) {
                this.color = str;
            }

            public void setFont_color(String str) {
                this.font_color = str;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setName(String str) {
                this.name = str;
            }
        }

        public Object clone() throws CloneNotSupportedException {
            return super.clone();
        }

        public long getAdd_time() {
            return this.add_time;
        }

        public int getAuth() {
            return this.auth;
        }

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public int getBest() {
            return this.best;
        }

        public String getCdn_url() {
            return this.cdn_url;
        }

        public String getComment() {
            return this.comment;
        }

        public int getCommit() {
            return this.commit;
        }

        public ForumCopperTitle getCopper_title() {
            return this.copper_title;
        }

        public List<RecommendLabelTag> getEmploy_tags() {
            return this.employ_tags;
        }

        public int getFid() {
            return this.fid;
        }

        public int getFirst() {
            return this.first;
        }

        public String getFname() {
            return this.fname;
        }

        public int getForum_auth() {
            return this.forum_auth;
        }

        public String getForum_name() {
            return this.forum_name;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public int getHelp() {
            return this.help;
        }

        public int getHelp_money() {
            return this.help_money;
        }

        public String getLast_comment_time() {
            return this.last_comment_time;
        }

        public String getMember_honor() {
            return this.member_honor;
        }

        public String getMessage() {
            return this.message;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getPid() {
            return this.pid;
        }

        public int getPost_type() {
            return this.post_type;
        }

        public int getPraise() {
            return this.praise;
        }

        public GameInfo getRelation_game() {
            return this.relation_game;
        }

        public String getResource_url() {
            return this.resource_url;
        }

        public List<ResBean> getRs_list() {
            return this.rs_list;
        }

        public List<ResBean> getSmall_thumb_pic_list() {
            return this.small_thumb_pic_list;
        }

        public int getSolve_flg() {
            return this.solve_flg;
        }

        public int getStrategy() {
            return this.strategy;
        }

        public String getSubject() {
            return this.subject;
        }

        public int getSvip_level() {
            return this.svip_level;
        }

        public List<TagInfo> getTag_info() {
            return this.tag_info;
        }

        public List<RecommendLabelTag> getTag_list() {
            return this.tag_list;
        }

        public List<RecommendLabelTag> getTags() {
            return this.tags;
        }

        public int getUid() {
            return this.uid;
        }

        public int getView() {
            return this.view;
        }

        public int getVip_level() {
            return this.vip_level;
        }

        public boolean isAttach_pic() {
            return this.attach_pic;
        }

        public boolean isAttach_video() {
            return this.attach_video;
        }

        public boolean isOfficialAccount() {
            return this.officialAccount;
        }

        public boolean is_add_tag_allow() {
            return this.is_add_tag_allow;
        }

        public boolean is_best_allow() {
            return this.is_best_allow;
        }

        public boolean is_del_allow() {
            return this.is_del_allow;
        }

        public boolean is_favorite() {
            return this.is_favorite;
        }

        public boolean is_first() {
            return this.is_first;
        }

        public boolean is_gag() {
            return this.is_gag;
        }

        public boolean is_moderator() {
            return this.is_moderator;
        }

        public boolean is_praise() {
            return this.is_praise;
        }

        public boolean is_remove_tag_allow() {
            return this.is_remove_tag_allow;
        }

        public void setAdd_time(long j4) {
            this.add_time = j4;
        }

        public void setAttach_pic(boolean z3) {
            this.attach_pic = z3;
        }

        public void setAttach_video(boolean z3) {
            this.attach_video = z3;
        }

        public void setAuth(int i2) {
            this.auth = i2;
        }

        public void setAvatar_src(String str) {
            this.avatar_src = str;
        }

        public void setBest(int i2) {
            this.best = i2;
        }

        public void setCdn_url(String str) {
            this.cdn_url = str;
        }

        public void setComment(String str) {
            this.comment = str;
        }

        public void setCommit(int i2) {
            this.commit = i2;
        }

        public void setCopper_title(ForumCopperTitle forumCopperTitle) {
            this.copper_title = forumCopperTitle;
        }

        public void setEmploy_tags(List<RecommendLabelTag> list) {
            this.employ_tags = list;
        }

        public void setFid(int i2) {
            this.fid = i2;
        }

        public void setFirst(int i2) {
            this.first = i2;
        }

        public void setFname(String str) {
            this.fname = str;
        }

        public void setForum_auth(int i2) {
            this.forum_auth = i2;
        }

        public void setForum_name(String str) {
            this.forum_name = str;
        }

        public void setGame_id(String str) {
            this.game_id = str;
        }

        public void setHelp(int i2) {
            this.help = i2;
        }

        public void setHelp_money(int i2) {
            this.help_money = i2;
        }

        public void setIs_add_tag_allow(boolean z3) {
            this.is_add_tag_allow = z3;
        }

        public void setIs_best_allow(boolean z3) {
            this.is_best_allow = z3;
        }

        public void setIs_del_allow(boolean z3) {
            this.is_del_allow = z3;
        }

        public void setIs_favorite(boolean z3) {
            this.is_favorite = z3;
        }

        public void setIs_first(boolean z3) {
            this.is_first = z3;
        }

        public void setIs_gag(boolean z3) {
            this.is_gag = z3;
        }

        public void setIs_moderator(boolean z3) {
            this.is_moderator = z3;
        }

        public void setIs_praise(boolean z3) {
            this.is_praise = z3;
        }

        public void setIs_remove_tag_allow(boolean z3) {
            this.is_remove_tag_allow = z3;
        }

        public void setLast_comment_time(String str) {
            this.last_comment_time = str;
        }

        public void setMember_honor(String str) {
            this.member_honor = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setOfficialAccount(boolean z3) {
            this.officialAccount = z3;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setPost_type(int i2) {
            this.post_type = i2;
        }

        public void setPraise(int i2) {
            this.praise = i2;
        }

        public void setRelation_game(GameInfo gameInfo) {
            this.relation_game = gameInfo;
        }

        public void setResource_url(String str) {
            this.resource_url = str;
        }

        public void setRs_list(List<ResBean> list) {
            this.rs_list = list;
        }

        public void setSmall_thumb_pic_list(List<ResBean> list) {
            this.small_thumb_pic_list = list;
        }

        public void setSolve_flg(int i2) {
            this.solve_flg = i2;
        }

        public void setStrategy(int i2) {
            this.strategy = i2;
        }

        public void setSubject(String str) {
            this.subject = str;
        }

        public void setSvip_level(int i2) {
            this.svip_level = i2;
        }

        public void setTag_info(List<TagInfo> list) {
            this.tag_info = list;
        }

        public void setTag_list(List<RecommendLabelTag> list) {
            this.tag_list = list;
        }

        public void setTags(List<RecommendLabelTag> list) {
            this.tags = list;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public void setView(int i2) {
            this.view = i2;
        }

        public void setVip_level(int i2) {
            this.vip_level = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfileCommentBean {
        public static final String TYPE_COMMENT = "comment";
        public static final String TYPE_REPLY = "reply";
        private String message;
        private String rnickname;
        private int ruid;
        private String type;

        public String getMessage() {
            return this.message;
        }

        public String getRnickname() {
            return this.rnickname;
        }

        public int getRuid() {
            return this.ruid;
        }

        public String getType() {
            return this.type;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setRnickname(String str) {
            this.rnickname = str;
        }

        public void setRuid(int i2) {
            this.ruid = i2;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfileMessageBean {
        public static final String TYPE_BEST = "best";
        public static final String TYPE_BESTANSWER = "bestanswer";
        public static final String TYPE_COMMENT = "comment";
        public static final String TYPE_PRAISE = "praise";
        public static final String TYPE_REPLY = "reply";
        private long add_time;
        private int comment_id;
        private String from_avatar_src;
        private String from_nickname;
        private boolean from_officialAccount;
        private String from_type;
        private int from_uid;
        private String message;
        private int pid;
        private ForumPostsBean posts;
        private int rid;
        private int svip_level;
        private int vip_level;

        public long getAdd_time() {
            return this.add_time;
        }

        public int getComment_id() {
            return this.comment_id;
        }

        public String getFrom_avatar_src() {
            return this.from_avatar_src;
        }

        public String getFrom_nickname() {
            return this.from_nickname;
        }

        public String getFrom_type() {
            return this.from_type;
        }

        public int getFrom_uid() {
            return this.from_uid;
        }

        public String getMessage() {
            return this.message;
        }

        public int getPid() {
            return this.pid;
        }

        public ForumPostsBean getPosts() {
            return this.posts;
        }

        public int getRid() {
            return this.rid;
        }

        public int getSvip_level() {
            return this.svip_level;
        }

        public int getVip_level() {
            return this.vip_level;
        }

        public boolean isFrom_officialAccount() {
            return this.from_officialAccount;
        }

        public void setAdd_time(long j4) {
            this.add_time = j4;
        }

        public void setComment_id(int i2) {
            this.comment_id = i2;
        }

        public void setComment_pid(int i2) {
            this.comment_id = i2;
        }

        public void setFrom_avatar_src(String str) {
            this.from_avatar_src = str;
        }

        public void setFrom_nickname(String str) {
            this.from_nickname = str;
        }

        public void setFrom_officialAccount(boolean z3) {
            this.from_officialAccount = z3;
        }

        public void setFrom_type(String str) {
            this.from_type = str;
        }

        public void setFrom_uid(int i2) {
            this.from_uid = i2;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setPosts(ForumPostsBean forumPostsBean) {
            this.posts = forumPostsBean;
        }

        public void setRid(int i2) {
            this.rid = i2;
        }

        public void setSvip_level(int i2) {
            this.svip_level = i2;
        }

        public void setVip_level(int i2) {
            this.vip_level = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfilePostUserInfoBean {
        private String avatar_src;
        private boolean is_sign;
        private String nickname;
        private int papa_money;
        private int uid;
        private int unread_message;

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getPapa_money() {
            return this.papa_money;
        }

        public int getUid() {
            return this.uid;
        }

        public int getUnread_message() {
            return this.unread_message;
        }

        public boolean is_sign() {
            return this.is_sign;
        }

        public void setAvatar_src(String str) {
            this.avatar_src = str;
        }

        public void setIs_sign(boolean z3) {
            this.is_sign = z3;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setPapa_money(int i2) {
            this.papa_money = i2;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public void setUnread_message(int i2) {
            this.unread_message = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumSearchIndexBean {
        private String color;
        private String keyword;

        public String getColor() {
            return this.color;
        }

        public String getKeyword() {
            return this.keyword;
        }

        public void setColor(String str) {
            this.color = str;
        }

        public void setKeyword(String str) {
            this.keyword = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumSearchQueryBean {
        private String comment;
        private String keyword;
        private String message;
        private String pid;
        private String praise;
        private boolean showDivider;
        private String subject;
        private String view;

        public String getComment() {
            return this.comment;
        }

        public String getKeyword() {
            return this.keyword;
        }

        public String getMessage() {
            return this.message;
        }

        public String getPid() {
            return this.pid;
        }

        public String getPraise() {
            return this.praise;
        }

        public String getSubject() {
            return this.subject;
        }

        public String getView() {
            return this.view;
        }

        public boolean isShowDivider() {
            return this.showDivider;
        }

        public void setComment(String str) {
            this.comment = str;
        }

        public void setKeyword(String str) {
            this.keyword = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setPid(String str) {
            this.pid = str;
        }

        public void setPraise(String str) {
            this.praise = str;
        }

        public void setShowDivider(boolean z3) {
            this.showDivider = z3;
        }

        public void setSubject(String str) {
            this.subject = str;
        }

        public void setView(String str) {
            this.view = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumTabBean {
        private String tab_name;
        private String tab_type;

        /* loaded from: classes4.dex */
        public enum Type {
            TAB_TYPE_NORMAL("normal_posts"),
            TAB_TYPE_HELP("help_posts"),
            TAB_TYPE_LAST("last_posts"),
            TAB_TYPE_BEST("best_posts"),
            TAB_TYPE_FORUM_MEMBER("forum_members"),
            TAB_TYPE_ACTIVITY("activity_posts"),
            TAB_TYPE_GIFT("gift_posts"),
            TAB_TYPE_STRATEGY("strategy_posts");
            
            String name;

            Type(String str) {
                this.name = str;
            }

            public String getName() {
                return this.name;
            }
        }

        public String getTab_name() {
            return this.tab_name;
        }

        public String getTab_type() {
            return this.tab_type;
        }

        public void setTab_name(String str) {
            this.tab_name = str;
        }

        public void setTab_type(String str) {
            this.tab_type = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumTopicBean {
        private String icon_src;
        private String name;
        private int tid;

        public String getIcon_src() {
            return this.icon_src;
        }

        public String getName() {
            return this.name;
        }

        public int getTid() {
            return this.tid;
        }

        public void setIcon_src(String str) {
            this.icon_src = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setTid(int i2) {
            this.tid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumWelcomeAdBean {
        public List<BannerBean> adBeans;
        private int position;
        private String sub_title;
        private String title;

        public List<BannerBean> getAdBeans() {
            return this.adBeans;
        }

        public int getPosition() {
            return this.position;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public void setAdBeans(List<BannerBean> list) {
            if (this.adBeans == null) {
                this.adBeans = new ArrayList();
            }
            this.adBeans.clear();
            this.adBeans.addAll(list);
        }

        public void setPosition(int i2) {
            this.position = i2;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumWelcomeAdItemBean {
    }

    /* loaded from: classes4.dex */
    public static class ForumWelcomeBannerBean {
        public BannerBean bannerDataCellBean;

        public BannerBean getBannerDataCellBean() {
            return this.bannerDataCellBean;
        }

        public void setBannerDataCellBean(BannerBean bannerBean) {
            this.bannerDataCellBean = bannerBean;
        }
    }

    /* loaded from: classes4.dex */
    public static class GameInfo {
        private int bespeak_switch;
        private int comment_score_switch;
        private int down_count;
        private int down_status;
        @JsonIgnore
        private DownloadTask downloadTask;
        private String game_desc;
        private String game_down_url_remote;
        private String game_ico;
        private String game_ico_remote;
        private String game_id;
        private String game_info_tpl_type;
        private String game_name;
        private String game_size;
        private List<GameTagInfo> game_tag_info;
        PayTagInfo pay_tag_info;
        private String plugin_num = "";
        private String score;
        private TipNew sp_tag_info;
        private int sp_tpl_two_position;

        /* loaded from: classes4.dex */
        public static class GameTagInfo {
            private String color;
            private String id;
            private String name;

            public String getColor() {
                return this.color;
            }

            public String getId() {
                return this.id;
            }

            public String getName() {
                return this.name;
            }

            public void setColor(String str) {
                this.color = str;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setName(String str) {
                this.name = str;
            }
        }

        public int getBespeak_switch() {
            return this.bespeak_switch;
        }

        public int getComment_score_switch() {
            return this.comment_score_switch;
        }

        public int getDown_count() {
            return this.down_count;
        }

        public int getDown_status() {
            int i2 = this.down_status;
            if (i2 == 2 && this.bespeak_switch == 1) {
                return 6;
            }
            return i2;
        }

        public DownloadTask getDownloadTask() {
            return this.downloadTask;
        }

        public String getGame_desc() {
            return this.game_desc;
        }

        public String getGame_down_url_remote() {
            return this.game_down_url_remote;
        }

        public String getGame_ico() {
            return this.game_ico;
        }

        public String getGame_ico_remote() {
            return this.game_ico_remote;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public String getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getGame_name() {
            return this.game_name;
        }

        public String getGame_size() {
            return this.game_size;
        }

        public List<GameTagInfo> getGame_tag_info() {
            return this.game_tag_info;
        }

        public PayTagInfo getPay_tag_info() {
            return this.pay_tag_info;
        }

        public String getPlugin_num() {
            return this.plugin_num;
        }

        public String getScore() {
            return this.score;
        }

        public TipNew getSp_tag_info() {
            return this.sp_tag_info;
        }

        public int getSp_tpl_two_position() {
            return this.sp_tpl_two_position;
        }

        public void setBespeak_switch(int i2) {
            this.bespeak_switch = i2;
        }

        public void setComment_score_switch(int i2) {
            this.comment_score_switch = i2;
        }

        public void setDown_count(int i2) {
            this.down_count = i2;
        }

        public void setDown_status(int i2) {
            this.down_status = i2;
        }

        public void setDownloadTask(DownloadTask downloadTask) {
            this.downloadTask = downloadTask;
        }

        public void setGame_desc(String str) {
            this.game_desc = str;
        }

        public void setGame_down_url_remote(String str) {
            this.game_down_url_remote = str;
        }

        public void setGame_ico(String str) {
            this.game_ico = str;
        }

        public void setGame_ico_remote(String str) {
            this.game_ico_remote = str;
        }

        public void setGame_id(String str) {
            this.game_id = str;
        }

        public void setGame_info_tpl_type(String str) {
            this.game_info_tpl_type = str;
        }

        public void setGame_name(String str) {
            this.game_name = str;
        }

        public void setGame_size(String str) {
            this.game_size = str;
        }

        public void setGame_tag_info(List<GameTagInfo> list) {
            this.game_tag_info = list;
        }

        public void setPay_tag_info(PayTagInfo payTagInfo) {
            this.pay_tag_info = payTagInfo;
        }

        public void setPlugin_num(String str) {
            this.plugin_num = str;
        }

        public void setScore(String str) {
            this.score = str;
        }

        public void setSp_tag_info(TipNew tipNew) {
            this.sp_tag_info = tipNew;
        }

        public void setSp_tpl_two_position(int i2) {
            this.sp_tpl_two_position = i2;
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public long getAdd_time() {
        return this.add_time;
    }

    public String getDescription() {
        return this.description;
    }

    public int getFid() {
        return this.fid;
    }

    public int getFollow_count() {
        return this.follow_count;
    }

    public long getFollow_time() {
        return this.follow_time;
    }

    public String getGame_collections() {
        return this.game_collections;
    }

    public String getIcon_src() {
        return this.icon_src;
    }

    public int getMember_is_write() {
        return this.member_is_write;
    }

    public String getName() {
        return this.name;
    }

    public int getPosts() {
        return this.posts;
    }

    public int getSvip_is_write() {
        return this.svip_is_write;
    }

    public int getToday_posts() {
        return this.today_posts;
    }

    public int getUsers() {
        return this.users;
    }

    public int getVip_is_write() {
        return this.vip_is_write;
    }

    public boolean is_follow() {
        return this.is_follow;
    }

    public void setAdd_time(long j4) {
        this.add_time = j4;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setFid(int i2) {
        this.fid = i2;
    }

    public void setFollow_count(int i2) {
        this.follow_count = i2;
    }

    public void setFollow_time(long j4) {
        this.follow_time = j4;
    }

    public void setGame_collections(String str) {
        this.game_collections = str;
    }

    public void setIcon_src(String str) {
        this.icon_src = str;
    }

    public void setIs_follow(boolean z3) {
        this.is_follow = z3;
    }

    public void setMember_is_write(int i2) {
        this.member_is_write = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPosts(int i2) {
        this.posts = i2;
    }

    public void setSvip_is_write(int i2) {
        this.svip_is_write = i2;
    }

    public void setToday_posts(int i2) {
        this.today_posts = i2;
    }

    public void setUsers(int i2) {
        this.users = i2;
    }

    public void setVip_is_write(int i2) {
        this.vip_is_write = i2;
    }
}
