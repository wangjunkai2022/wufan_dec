package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.dto.ForumBean;
import java.util.List;
/* loaded from: classes4.dex */
public class ForumData {

    /* loaded from: classes4.dex */
    public static class ForumCommentDeleteData {
        private boolean result;

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumCommentReplyData {
        private int error_type;
        private String msg;
        private boolean result;
        private int reward_exp;
        private int reward_money;
        private int rid;

        public int getError_type() {
            return this.error_type;
        }

        public String getMsg() {
            return this.msg;
        }

        public int getReward_exp() {
            return this.reward_exp;
        }

        public int getReward_money() {
            return this.reward_money;
        }

        public int getRid() {
            return this.rid;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setError_type(int i2) {
            this.error_type = i2;
        }

        public void setMsg(String str) {
            this.msg = str;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }

        public void setReward_exp(int i2) {
            this.reward_exp = i2;
        }

        public void setReward_money(int i2) {
            this.reward_money = i2;
        }

        public void setRid(int i2) {
            this.rid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumCommentReplyDeleteData {
        private boolean result;

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumCommentReplyReplyData {
        private int error_type;
        private String msg;
        private boolean result;
        private int reward_exp;
        private int reward_money;
        private int rid;

        public int getError_type() {
            return this.error_type;
        }

        public String getMsg() {
            return this.msg;
        }

        public int getReward_exp() {
            return this.reward_exp;
        }

        public int getReward_money() {
            return this.reward_money;
        }

        public int getRid() {
            return this.rid;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setError_type(int i2) {
            this.error_type = i2;
        }

        public void setMsg(String str) {
            this.msg = str;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }

        public void setReward_exp(int i2) {
            this.reward_exp = i2;
        }

        public void setReward_money(int i2) {
            this.reward_money = i2;
        }

        public void setRid(int i2) {
            this.rid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumAllData {
        List<ForumBean> list;

        public List<ForumBean> getList() {
            return this.list;
        }

        public void setList(List<ForumBean> list) {
            this.list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumData {
        private ForumBean forum;
        private List<ForumBean.ForumPostsBean> top_list;

        public ForumBean getForum() {
            return this.forum;
        }

        public List<ForumBean.ForumPostsBean> getTop_list() {
            return this.top_list;
        }

        public void setForum(ForumBean forumBean) {
            this.forum = forumBean;
        }

        public void setTop_list(List<ForumBean.ForumPostsBean> list) {
            this.top_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumFollowData {
        private boolean follow;

        public boolean isFollow() {
            return this.follow;
        }

        public void setFollow(boolean z3) {
            this.follow = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumFollowListData {
        private List<ForumBean> list;

        public List<ForumBean> getList() {
            return this.list;
        }

        public void setList(List<ForumBean> list) {
            this.list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumGroupData {
        private int gid;
        private String group_title;
        private List<ForumBean> list;
        private int show_order;

        public int getGid() {
            return this.gid;
        }

        public String getGroup_title() {
            return this.group_title;
        }

        public List<ForumBean> getList() {
            return this.list;
        }

        public int getShow_order() {
            return this.show_order;
        }

        public void setGid(int i2) {
            this.gid = i2;
        }

        public void setGroup_title(String str) {
            this.group_title = str;
        }

        public void setList(List<ForumBean> list) {
            this.list = list;
        }

        public void setShow_order(int i2) {
            this.show_order = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumGroupsData {
        List<ForumForumGroupData> list;

        public List<ForumForumGroupData> getList() {
            return this.list;
        }

        public void setList(List<ForumForumGroupData> list) {
            this.list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumPlateData {
        private List<ForumBean.ForumPostsBean> activity_posts_list;
        private List<ForumBean.ForumPostsBean> best_posts_list;
        private ForumBean forum;
        private List<ForumBean.ForumGiftBean> gift_posts_list;
        private List<ForumBean.ForumPostsBean> help_posts_list;
        private List<ForumBean.ForumPostsBean> last_posts_list;
        private List<ForumBean.ForumMemberBean> members_list;
        private List<ForumBean.ForumMemberBean> moderatorList;
        private String moderator_message;
        private List<ForumBean.ForumPostsBean> posts_list;
        private List<ForumBean.ForumPostsBean> strategy_posts_list;
        private List<ForumBean.ForumTabBean> tab_list;
        private List<ForumBean.ForumPostsBean> top_list;

        public List<ForumBean.ForumPostsBean> getActivity_posts_list() {
            return this.activity_posts_list;
        }

        public List<ForumBean.ForumPostsBean> getBest_posts_list() {
            return this.best_posts_list;
        }

        public ForumBean getForum() {
            return this.forum;
        }

        public List<ForumBean.ForumGiftBean> getGift_posts_list() {
            return this.gift_posts_list;
        }

        public List<ForumBean.ForumPostsBean> getHelp_posts_list() {
            return this.help_posts_list;
        }

        public List<ForumBean.ForumPostsBean> getLast_posts_list() {
            return this.last_posts_list;
        }

        public List<ForumBean.ForumMemberBean> getMembers_list() {
            return this.members_list;
        }

        public List<ForumBean.ForumMemberBean> getModeratorList() {
            return this.moderatorList;
        }

        public String getModerator_message() {
            return this.moderator_message;
        }

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public List<ForumBean.ForumPostsBean> getStrategy_posts_list() {
            return this.strategy_posts_list;
        }

        public List<ForumBean.ForumTabBean> getTab_list() {
            return this.tab_list;
        }

        public List<ForumBean.ForumPostsBean> getTop_list() {
            return this.top_list;
        }

        public void setActivity_posts_list(List<ForumBean.ForumPostsBean> list) {
            this.activity_posts_list = list;
        }

        public void setBest_posts_list(List<ForumBean.ForumPostsBean> list) {
            this.best_posts_list = list;
        }

        public void setForum(ForumBean forumBean) {
            this.forum = forumBean;
        }

        public void setGift_posts_list(List<ForumBean.ForumGiftBean> list) {
            this.gift_posts_list = list;
        }

        public void setHelp_posts_list(List<ForumBean.ForumPostsBean> list) {
            this.help_posts_list = list;
        }

        public void setLast_posts_list(List<ForumBean.ForumPostsBean> list) {
            this.last_posts_list = list;
        }

        public void setMembers_list(List<ForumBean.ForumMemberBean> list) {
            this.members_list = list;
        }

        public void setModeratorList(List<ForumBean.ForumMemberBean> list) {
            this.moderatorList = list;
        }

        public void setModerator_message(String str) {
            this.moderator_message = str;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> list) {
            this.posts_list = list;
        }

        public void setStrategy_posts_list(List<ForumBean.ForumPostsBean> list) {
            this.strategy_posts_list = list;
        }

        public void setTab_list(List<ForumBean.ForumTabBean> list) {
            this.tab_list = list;
        }

        public void setTop_list(List<ForumBean.ForumPostsBean> list) {
            this.top_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumPostsData {
        private List<ForumBean.ForumPostsBean> posts_list;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> list) {
            this.posts_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumTopicData {
        private List<ForumBean.ForumPostsBean> posts_list;
        private ForumBean.ForumTopicBean topic;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public ForumBean.ForumTopicBean getTopic() {
            return this.topic;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> list) {
            this.posts_list = list;
        }

        public void setTopic(ForumBean.ForumTopicBean forumTopicBean) {
            this.topic = forumTopicBean;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumWelcomeData {
        private ForumBean.ForumWelcomeAdBean ad;
        private List<ForumBean.ForumWelcomeBannerBean> banner_list;
        private List<ForumBean> hot_list;
        private List<ForumBean> member_list;
        private List<ForumBean> recommend_list;
        private boolean sign_in_status;
        private long sign_in_time;
        private List<ForumBean.ForumTopicBean> topic_list;

        public ForumBean.ForumWelcomeAdBean getAd() {
            return this.ad;
        }

        public List<ForumBean.ForumWelcomeBannerBean> getBanner_list() {
            return this.banner_list;
        }

        public List<ForumBean> getHot_list() {
            return this.hot_list;
        }

        public List<ForumBean> getMember_list() {
            return this.member_list;
        }

        public List<ForumBean> getRecommend_list() {
            return this.recommend_list;
        }

        public long getSign_in_time() {
            return this.sign_in_time;
        }

        public List<ForumBean.ForumTopicBean> getTopic_list() {
            return this.topic_list;
        }

        public boolean isSign_in_status() {
            return this.sign_in_status;
        }

        public void setAd(ForumBean.ForumWelcomeAdBean forumWelcomeAdBean) {
            this.ad = forumWelcomeAdBean;
        }

        public void setBanner_list(List<ForumBean.ForumWelcomeBannerBean> list) {
            this.banner_list = list;
        }

        public void setHot_list(List<ForumBean> list) {
            this.hot_list = list;
        }

        public void setMember_list(List<ForumBean> list) {
            this.member_list = list;
        }

        public void setRecommend_list(List<ForumBean> list) {
            this.recommend_list = list;
        }

        public void setSign_in_status(boolean z3) {
            this.sign_in_status = z3;
        }

        public void setSign_in_time(long j4) {
            this.sign_in_time = j4;
        }

        public void setTopic_list(List<ForumBean.ForumTopicBean> list) {
            this.topic_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumForumWelcomePostsData {
        private List<ForumBean.ForumPostsBean> posts_list;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> list) {
            this.posts_list = list;
        }
    }

    /* loaded from: classes.dex */
    public static class ForumGroupIndex {
        private int fid;
        private String forum_description;
        private String forum_icon;
        private String forum_name;
        private String forum_number;
        @JsonProperty("is_joined")
        private int is_joined;
        private List<String> last_joied;
        private List<ForumGroupIndexTab> post_type;
        private List<ForumBean.ForumPostsBean> top_posts;
        private List<ForumGroupIndexTab> type;

        public int getFid() {
            return this.fid;
        }

        public String getForum_description() {
            return this.forum_description;
        }

        public String getForum_icon() {
            return this.forum_icon;
        }

        public String getForum_name() {
            return this.forum_name;
        }

        public String getForum_number() {
            return this.forum_number;
        }

        public int getIs_joined() {
            return this.is_joined;
        }

        public List<String> getLast_joied() {
            return this.last_joied;
        }

        public List<ForumGroupIndexTab> getPost_type() {
            return this.post_type;
        }

        public List<ForumBean.ForumPostsBean> getTop_posts() {
            return this.top_posts;
        }

        public List<ForumGroupIndexTab> getType() {
            return this.type;
        }

        public void setFid(int i2) {
            this.fid = i2;
        }

        public void setForum_description(String str) {
            this.forum_description = str;
        }

        public void setForum_icon(String str) {
            this.forum_icon = str;
        }

        public void setForum_name(String str) {
            this.forum_name = str;
        }

        public void setForum_number(String str) {
            this.forum_number = str;
        }

        public void setIs_joined(int i2) {
            this.is_joined = i2;
        }

        public void setLast_joied(List<String> list) {
            this.last_joied = list;
        }

        public void setPost_type(List<ForumGroupIndexTab> list) {
            this.post_type = list;
        }

        public void setTop_posts(List<ForumBean.ForumPostsBean> list) {
            this.top_posts = list;
        }

        public void setType(List<ForumGroupIndexTab> list) {
            this.type = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumGroupIndexTab {
        private int type_id;
        private String type_name;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ForumGroupIndexTab forumGroupIndexTab = (ForumGroupIndexTab) obj;
            if (this.type_id != forumGroupIndexTab.type_id) {
                return false;
            }
            String str = this.type_name;
            String str2 = forumGroupIndexTab.type_name;
            return str != null ? str.equals(str2) : str2 == null;
        }

        public int getType_id() {
            return this.type_id;
        }

        public String getType_name() {
            return this.type_name;
        }

        public int hashCode() {
            int i2 = this.type_id * 31;
            String str = this.type_name;
            return i2 + (str != null ? str.hashCode() : 0);
        }

        public void setType_id(int i2) {
            this.type_id = i2;
        }

        public void setType_name(String str) {
            this.type_name = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsBestData {
        private int best;
        private String message;
        private boolean result;

        public int getBest() {
            return this.best;
        }

        public String getMessage() {
            return this.message;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setBest(int i2) {
            this.best = i2;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }
    }

    /* loaded from: classes.dex */
    public static class ForumPostsCommentData {
        private int error_type;
        private int floor;
        @JsonProperty("is_moderator")
        private boolean is_moderator;
        private String member_honor;
        private String msg;
        private List<String> pic_list;
        private int pid;
        private List<String> raw_pic_list;
        private boolean result;
        private int reward_exp;
        private int reward_money;

        public int getError_type() {
            return this.error_type;
        }

        public int getFloor() {
            return this.floor;
        }

        public String getMember_honor() {
            return this.member_honor;
        }

        public String getMsg() {
            return this.msg;
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

        public int getReward_exp() {
            return this.reward_exp;
        }

        public int getReward_money() {
            return this.reward_money;
        }

        public boolean isResult() {
            return this.result;
        }

        public boolean is_moderator() {
            return this.is_moderator;
        }

        public void setError_type(int i2) {
            this.error_type = i2;
        }

        public void setFloor(int i2) {
            this.floor = i2;
        }

        public void setIs_moderator(boolean z3) {
            this.is_moderator = z3;
        }

        public void setMember_honor(String str) {
            this.member_honor = str;
        }

        public void setMsg(String str) {
            this.msg = str;
        }

        public void setPic_list(List<String> list) {
            this.pic_list = list;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setRaw_pic_list(List<String> list) {
            this.raw_pic_list = list;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }

        public void setReward_exp(int i2) {
            this.reward_exp = i2;
        }

        public void setReward_money(int i2) {
            this.reward_money = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsData {
        private List<ForumBean.ForumCommentBean> comment_list;
        private List<ForumBean.ForumGagType> forum_gag_type;
        private ForumBean.GameInfo game_info;
        private ForumBean.ForumPostsBean posts;

        public List<ForumBean.ForumCommentBean> getComment_list() {
            return this.comment_list;
        }

        public List<ForumBean.ForumGagType> getForum_gag_type() {
            return this.forum_gag_type;
        }

        public ForumBean.GameInfo getGame_info() {
            return this.game_info;
        }

        public ForumBean.ForumPostsBean getPosts() {
            return this.posts;
        }

        public void setComment_list(List<ForumBean.ForumCommentBean> list) {
            this.comment_list = list;
        }

        public void setForum_gag_type(List<ForumBean.ForumGagType> list) {
            this.forum_gag_type = list;
        }

        public void setGame_info(ForumBean.GameInfo gameInfo) {
            this.game_info = gameInfo;
        }

        public void setPosts(ForumBean.ForumPostsBean forumPostsBean) {
            this.posts = forumPostsBean;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsDeleteData {
        private boolean result;

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsFavoritesData {
        private boolean favorites;

        public boolean isFavorites() {
            return this.favorites;
        }

        public void setFavorites(boolean z3) {
            this.favorites = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsHelpSolveData {
        private String message;
        private boolean result;

        public String getMessage() {
            return this.message;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsPraiseData {
        private boolean result;

        public ForumPostsPraiseData() {
        }

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }

        public ForumPostsPraiseData(boolean z3) {
            this.result = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsReportData {
        private boolean result;

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsSubmitData {
        boolean hasSensitiveWords;
        int pid;
        boolean result;
        private int reward_exp;
        private int reward_money;

        public int getPid() {
            return this.pid;
        }

        public int getReward_exp() {
            return this.reward_exp;
        }

        public int getReward_money() {
            return this.reward_money;
        }

        public boolean isHasSensitiveWords() {
            return this.hasSensitiveWords;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setHasSensitiveWords(boolean z3) {
            this.hasSensitiveWords = z3;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }

        public void setReward_exp(int i2) {
            this.reward_exp = i2;
        }

        public void setReward_money(int i2) {
            this.reward_money = i2;
        }

        public String toString() {
            return "ForumPostsSubmitData{result=" + this.result + ", pid=" + this.pid + '}';
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfileCommentData {
        private long last_update_time;
        private List<ForumBean.ForumProfileCommentBean> list;
        private ForumBean.ForumPostsBean posts;

        public long getLast_update_time() {
            return this.last_update_time;
        }

        public List<ForumBean.ForumProfileCommentBean> getList() {
            return this.list;
        }

        public ForumBean.ForumPostsBean getPosts() {
            return this.posts;
        }

        public void setLast_update_time(long j4) {
            this.last_update_time = j4;
        }

        public void setList(List<ForumBean.ForumProfileCommentBean> list) {
            this.list = list;
        }

        public void setPosts(ForumBean.ForumPostsBean forumPostsBean) {
            this.posts = forumPostsBean;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfileFavoritesPostsData {
        private List<ForumBean.ForumPostsBean> posts_list;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> list) {
            this.posts_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfileMessageData {
        private List<ForumBean.ForumProfileMessageBean> message_list;

        public List<ForumBean.ForumProfileMessageBean> getMessage_list() {
            return this.message_list;
        }

        public void setMessage_list(List<ForumBean.ForumProfileMessageBean> list) {
            this.message_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfileMessageReplyData {
        ForumBean.ForumCommentBean comment;

        public ForumBean.ForumCommentBean getComment() {
            return this.comment;
        }

        public void setComment(ForumBean.ForumCommentBean forumCommentBean) {
            this.comment = forumCommentBean;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfilePostsData {
        private List<ForumBean.ForumPostsBean> posts_list;
        private ForumBean.ForumProfilePostUserInfoBean user_info;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public ForumBean.ForumProfilePostUserInfoBean getUser_info() {
            return this.user_info;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> list) {
            this.posts_list = list;
        }

        public void setUser_info(ForumBean.ForumProfilePostUserInfoBean forumProfilePostUserInfoBean) {
            this.user_info = forumProfilePostUserInfoBean;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumProfileUnreadMessageCountData {
        private int unread;

        public int getUnread() {
            return this.unread;
        }

        public void setUnread(int i2) {
            this.unread = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumResult {
        private boolean first;
        private String msg;
        private boolean result;

        public String getMsg() {
            return this.msg;
        }

        public boolean isFirst() {
            return this.first;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setFirst(boolean z3) {
            this.first = z3;
        }

        public void setMsg(String str) {
            this.msg = str;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumSearchIndexData {
        private List<ForumBean.ForumSearchIndexBean> history;
        private List<ForumBean.ForumSearchIndexBean> recommend;

        public List<ForumBean.ForumSearchIndexBean> getHistory() {
            return this.history;
        }

        public List<ForumBean.ForumSearchIndexBean> getRecommend() {
            return this.recommend;
        }

        public void setHistory(List<ForumBean.ForumSearchIndexBean> list) {
            this.history = list;
        }

        public void setRecommend(List<ForumBean.ForumSearchIndexBean> list) {
            this.recommend = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumSearchQueryData {
        private List<ForumBean.ForumSearchQueryBean> res;

        public List<ForumBean.ForumSearchQueryBean> getRes() {
            return this.res;
        }

        public void setRes(List<ForumBean.ForumSearchQueryBean> list) {
            this.res = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumUserFavoritesData {
        private DownloadTask downloadTask;
        private String fav_time;
        private CollectionBeanSub game;
        private ForumBean.ForumPostsBean post;
        private int type;

        public DownloadTask getDownloadTask() {
            return this.downloadTask;
        }

        public String getFav_time() {
            return this.fav_time;
        }

        public CollectionBeanSub getGame() {
            return this.game;
        }

        public ForumBean.ForumPostsBean getPost() {
            return this.post;
        }

        public int getType() {
            return this.type;
        }

        public void setDownloadTask(DownloadTask downloadTask) {
            this.downloadTask = downloadTask;
        }

        public void setFav_time(String str) {
            this.fav_time = str;
        }

        public void setGame(CollectionBeanSub collectionBeanSub) {
            this.game = collectionBeanSub;
        }

        public void setPost(ForumBean.ForumPostsBean forumPostsBean) {
            this.post = forumPostsBean;
        }

        public void setType(int i2) {
            this.type = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumUserFavoritesDatas {
        private List<ForumUserFavoritesData> favorites_list;

        public List<ForumUserFavoritesData> getFavorites_list() {
            return this.favorites_list;
        }

        public void setFavorites_list(List<ForumUserFavoritesData> list) {
            this.favorites_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class GroupFans {
        List<GroupMemberBean> list;
        List<GroupMemberBean> managers;

        /* renamed from: me  reason: collision with root package name */
        GroupMemberBean f48146me;

        public List<GroupMemberBean> getList() {
            return this.list;
        }

        public List<GroupMemberBean> getManagers() {
            return this.managers;
        }

        public GroupMemberBean getMe() {
            return this.f48146me;
        }

        public void setList(List<GroupMemberBean> list) {
            this.list = list;
        }

        public void setManagers(List<GroupMemberBean> list) {
            this.managers = list;
        }

        public void setMe(GroupMemberBean groupMemberBean) {
            this.f48146me = groupMemberBean;
        }
    }

    /* loaded from: classes.dex */
    public static class GroupMemberBean {
        private String avatar_src;
        private int grade;
        @JsonProperty("is_joined")
        private boolean is_joined;
        private String join_time;
        private String nickname;
        private String uid;

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public int getGrade() {
            return this.grade;
        }

        public String getJoin_time() {
            return this.join_time;
        }

        public String getNickname() {
            return this.nickname;
        }

        public String getUid() {
            return this.uid;
        }

        public boolean is_joined() {
            return this.is_joined;
        }

        public void setAvatar_src(String str) {
            this.avatar_src = str;
        }

        public void setGrade(int i2) {
            this.grade = i2;
        }

        public void setIs_joined(boolean z3) {
            this.is_joined = z3;
        }

        public void setJoin_time(String str) {
            this.join_time = str;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setUid(String str) {
            this.uid = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class HomepageRecommendGroup {
        List<RecommenGroup> tuijianguanzhu;
        List<RecommenGroup> wodeguanzhu;

        public List<RecommenGroup> getTuijianguanzhu() {
            return this.tuijianguanzhu;
        }

        public List<RecommenGroup> getWodeguanzhu() {
            return this.wodeguanzhu;
        }

        public void setTuijianguanzhu(List<RecommenGroup> list) {
            this.tuijianguanzhu = list;
        }

        public void setWodeguanzhu(List<RecommenGroup> list) {
            this.wodeguanzhu = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class HomepageRecommendLabel {
        List<RecommenGroupClassify> fenzu;
        int flag;
        int label_switcher;
        private String msg;
        List<ForumBean.ForumPostsBean> post_list;
        List<RecommendLabelTag> recommend_tags;
        private boolean result;
        List<RecommendLabelTag> tag_list;

        public List<RecommenGroupClassify> getFenzu() {
            return this.fenzu;
        }

        public int getFlag() {
            return this.flag;
        }

        public int getLabel_switcher() {
            return this.label_switcher;
        }

        public String getMsg() {
            return this.msg;
        }

        public List<ForumBean.ForumPostsBean> getPost_list() {
            return this.post_list;
        }

        public List<RecommendLabelTag> getRecommend_tags() {
            return this.recommend_tags;
        }

        public List<RecommendLabelTag> getTag_list() {
            return this.tag_list;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setFenzu(List<RecommenGroupClassify> list) {
            this.fenzu = list;
        }

        public void setFlag(int i2) {
            this.flag = i2;
        }

        public void setLabel_switcher(int i2) {
            this.label_switcher = i2;
        }

        public void setMsg(String str) {
            this.msg = str;
        }

        public void setPost_list(List<ForumBean.ForumPostsBean> list) {
            this.post_list = list;
        }

        public void setRecommend_tags(List<RecommendLabelTag> list) {
            this.recommend_tags = list;
        }

        public void setResult(boolean z3) {
            this.result = z3;
        }

        public void setTag_list(List<RecommendLabelTag> list) {
            this.tag_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class MyForumMain {
        private List<RecommenGroup> forum_follow;
        private List<RecommendLabelTag> tag_follow;

        public List<RecommenGroup> getForum_follow() {
            return this.forum_follow;
        }

        public List<RecommendLabelTag> getTag_follow() {
            return this.tag_follow;
        }

        public void setForum_follow(List<RecommenGroup> list) {
            this.forum_follow = list;
        }

        public void setTag_follow(List<RecommendLabelTag> list) {
            this.tag_follow = list;
        }
    }
}
