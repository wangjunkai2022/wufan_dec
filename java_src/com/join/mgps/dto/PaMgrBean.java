package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class PaMgrBean {

    /* loaded from: classes4.dex */
    public static class Request {

        /* loaded from: classes4.dex */
        public static class CancelAdmin {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class EnterGroup {
            private int flag;
            private String groupId;
            private String headPic;
            private String liveUserId;
            private String nickname;
            private String token;
            private String userId;

            public int getFlag() {
                return this.flag;
            }

            public String getGroupId() {
                return this.groupId;
            }

            public String getHeadPic() {
                return this.headPic;
            }

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getNickname() {
                return this.nickname;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setFlag(int i2) {
                this.flag = i2;
            }

            public void setGroupId(String str) {
                this.groupId = str;
            }

            public void setHeadPic(String str) {
                this.headPic = str;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setNickname(String str) {
                this.nickname = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class FollowAnchor {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class GetAnchorInfo {
            private String liveUserId;
            private String token;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class GetFreeDiamond {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class GetGiftList {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class InternalSendRequest {
            String fileId;
            int flag;
            int optype;
            int type;
            String userId;

            public String getFileId() {
                return this.fileId;
            }

            public int getFlag() {
                return this.flag;
            }

            public int getOptype() {
                return this.optype;
            }

            public int getType() {
                return this.type;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setFileId(String str) {
                this.fileId = str;
            }

            public void setFlag(int i2) {
                this.flag = i2;
            }

            public void setOptype(int i2) {
                this.optype = i2;
            }

            public void setType(int i2) {
                this.type = i2;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class Kick {
            private String liveUserId;
            String token;
            String userId;
            String viewUserId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public String getViewUserId() {
                return this.viewUserId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }

            public void setViewUserId(String str) {
                this.viewUserId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class MgrBanLive {
            private String liveUserId;
            private String token;
            private String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class MgrStopLive {
            private String liveUserId;
            private String token;
            private String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class MgrWarnLive {
            private String liveUserId;
            private String message;
            private String token;
            private String userId;
            private String version;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getMessage() {
                return this.message;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public String getVersion() {
                return this.version;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setMessage(String str) {
                this.message = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }

            public void setVersion(String str) {
                this.version = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class QuitGroup {
            private int flag;
            private String groupId;
            private String liveUserId;
            private String token;
            private String userId;

            public int getFlag() {
                return this.flag;
            }

            public String getGroupId() {
                return this.groupId;
            }

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setFlag(int i2) {
                this.flag = i2;
            }

            public void setGroupId(String str) {
                this.groupId = str;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class QuitRoom {
            String token;
            String userId;

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class Report {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class SendGift {
            String giftCount;
            String giftId;
            private int isCombo;
            private String liveUserId;
            String token;
            String userId;

            public String getGiftCount() {
                return this.giftCount;
            }

            public String getGiftId() {
                return this.giftId;
            }

            public int getIsCombo() {
                return this.isCombo;
            }

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setGiftCount(String str) {
                this.giftCount = str;
            }

            public void setGiftId(String str) {
                this.giftId = str;
            }

            public void setIsCombo(int i2) {
                this.isCombo = i2;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class SetAdmin {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class Silence {
            private String liveUserId;
            String token;
            String userId;
            String viewUserId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public String getViewUserId() {
                return this.viewUserId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }

            public void setViewUserId(String str) {
                this.viewUserId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class UnFollowAnchor {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String str) {
                this.liveUserId = str;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class UplocadCover {
            String token;
            String userId;

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public void setUserId(String str) {
                this.userId = str;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class Response<T> {
        private T data;
        private int error;

        /* loaded from: classes4.dex */
        public static class CancelAdmin {
            private boolean res;

            public boolean isRes() {
                return this.res;
            }

            public void setRes(boolean z3) {
                this.res = z3;
            }
        }

        /* loaded from: classes4.dex */
        public static class EnterGroup {
            private AnchorBean anchor;
            private int error;
            private int giftSeconds;
            private boolean isAdmin;
            private boolean isFollow;
            private String message;
            private String status;
            private String systemPact;
            private List<ViewersBean> viewers;

            /* loaded from: classes4.dex */
            public static class AnchorBean {
                private String avatar;
                private int charm;
                private int fans;
                private String intro;
                private String nickname;
                private int uid;

                public String getAvatar() {
                    return this.avatar;
                }

                public int getCharm() {
                    return this.charm;
                }

                public int getFans() {
                    return this.fans;
                }

                public String getIntro() {
                    return this.intro;
                }

                public String getNickname() {
                    return this.nickname;
                }

                public int getUid() {
                    return this.uid;
                }

                public void setAvatar(String str) {
                    this.avatar = str;
                }

                public void setCharm(int i2) {
                    this.charm = i2;
                }

                public void setFans(int i2) {
                    this.fans = i2;
                }

                public void setIntro(String str) {
                    this.intro = str;
                }

                public void setNickname(String str) {
                    this.nickname = str;
                }

                public void setUid(int i2) {
                    this.uid = i2;
                }
            }

            /* loaded from: classes4.dex */
            public static class ViewersBean {
                private String avatar;
                private String nickname;
                private int svipLevel;
                private int uid;

                public String getAvatar() {
                    return this.avatar;
                }

                public String getNickname() {
                    return this.nickname;
                }

                public int getSvipLevel() {
                    return this.svipLevel;
                }

                public int getUid() {
                    return this.uid;
                }

                public void setAvatar(String str) {
                    this.avatar = str;
                }

                public void setNickname(String str) {
                    this.nickname = str;
                }

                public void setSvipLevel(int i2) {
                    this.svipLevel = i2;
                }

                public void setUid(int i2) {
                    this.uid = i2;
                }
            }

            public Boolean getAdmin() {
                return Boolean.valueOf(this.isAdmin);
            }

            public AnchorBean getAnchor() {
                return this.anchor;
            }

            public int getError() {
                return this.error;
            }

            public boolean getFollow() {
                return this.isFollow;
            }

            public int getGiftSeconds() {
                return this.giftSeconds;
            }

            public String getMessage() {
                return this.message;
            }

            public String getStatus() {
                return this.status;
            }

            public String getSystemPact() {
                return this.systemPact;
            }

            public List<ViewersBean> getViewers() {
                return this.viewers;
            }

            public boolean isAdmin() {
                return this.isAdmin;
            }

            public boolean isFollow() {
                return this.isFollow;
            }

            public void setAdmin(boolean z3) {
                this.isAdmin = z3;
            }

            public void setAnchor(AnchorBean anchorBean) {
                this.anchor = anchorBean;
            }

            public void setError(int i2) {
                this.error = i2;
            }

            public void setFollow(boolean z3) {
                this.isFollow = z3;
            }

            public void setGiftSeconds(int i2) {
                this.giftSeconds = i2;
            }

            public void setMessage(String str) {
                this.message = str;
            }

            public void setStatus(String str) {
                this.status = str;
            }

            public void setSystemPact(String str) {
                this.systemPact = str;
            }

            public void setViewers(List<ViewersBean> list) {
                this.viewers = list;
            }

            public void setAdmin(Boolean bool) {
                this.isAdmin = bool.booleanValue();
            }

            public void setFollow(Boolean bool) {
                this.isFollow = bool.booleanValue();
            }
        }

        /* loaded from: classes4.dex */
        public static class FollowAnchor {
        }

        /* loaded from: classes4.dex */
        public static class GetAnchorInfo {
            private String avatar;
            private int charm;
            private int fans;
            private String intro;
            private boolean isFollowed;
            private String nickname;
            private int svipLevel;
            private List<WeekViewerBean> weekViewer;

            public String getAvatar() {
                return this.avatar;
            }

            public int getCharm() {
                return this.charm;
            }

            public int getFans() {
                return this.fans;
            }

            public String getIntro() {
                return this.intro;
            }

            public String getNickname() {
                return this.nickname;
            }

            public int getSvipLevel() {
                return this.svipLevel;
            }

            public List<WeekViewerBean> getWeekViewer() {
                return this.weekViewer;
            }

            public boolean isFollowed() {
                return this.isFollowed;
            }

            public void setAvatar(String str) {
                this.avatar = str;
            }

            public void setCharm(int i2) {
                this.charm = i2;
            }

            public void setFans(int i2) {
                this.fans = i2;
            }

            public void setFollowed(boolean z3) {
                this.isFollowed = z3;
            }

            public void setIntro(String str) {
                this.intro = str;
            }

            public void setNickname(String str) {
                this.nickname = str;
            }

            public void setSvipLevel(int i2) {
                this.svipLevel = i2;
            }

            public void setWeekViewer(List<WeekViewerBean> list) {
                this.weekViewer = list;
            }
        }

        /* loaded from: classes4.dex */
        public static class GetFreeDiamond {
            private int diamond;
            private int nextSeconds;

            public int getDiamond() {
                return this.diamond;
            }

            public int getNextSeconds() {
                return this.nextSeconds;
            }

            public void setDiamond(int i2) {
                this.diamond = i2;
            }

            public void setNextSeconds(int i2) {
                this.nextSeconds = i2;
            }
        }

        /* loaded from: classes4.dex */
        public static class GetGiftList {
            private List<GiftsBean> gifts;

            /* loaded from: classes4.dex */
            public static class GiftsBean {
                private String animate;
                private int id;
                private boolean isCombo;
                private String name;
                private String pic;
                private int price;

                public String getAnimate() {
                    return this.animate;
                }

                public int getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public String getPic() {
                    return this.pic;
                }

                public int getPrice() {
                    return this.price;
                }

                public boolean isIsCombo() {
                    return this.isCombo;
                }

                public void setAnimate(String str) {
                    this.animate = str;
                }

                public void setId(int i2) {
                    this.id = i2;
                }

                public void setIsCombo(boolean z3) {
                    this.isCombo = z3;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public void setPic(String str) {
                    this.pic = str;
                }

                public void setPrice(int i2) {
                    this.price = i2;
                }
            }

            public List<GiftsBean> getGifts() {
                return this.gifts;
            }

            public void setGifts(List<GiftsBean> list) {
                this.gifts = list;
            }
        }

        /* loaded from: classes4.dex */
        public static class InternalSendRequest {
        }

        /* loaded from: classes4.dex */
        public static class Kick {
        }

        /* loaded from: classes4.dex */
        public static class MgrBanLive {
            private int error;
            private String message;

            public int getError() {
                return this.error;
            }

            public String getMessage() {
                return this.message;
            }

            public void setError(int i2) {
                this.error = i2;
            }

            public void setMessage(String str) {
                this.message = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class MgrStopLive {
            private int error;
            private String message;

            public int getError() {
                return this.error;
            }

            public String getMessage() {
                return this.message;
            }

            public void setError(int i2) {
                this.error = i2;
            }

            public void setMessage(String str) {
                this.message = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class MgrWarnLive {
            private int error;
            private String message;

            public int getError() {
                return this.error;
            }

            public String getMessage() {
                return this.message;
            }

            public void setError(int i2) {
                this.error = i2;
            }

            public void setMessage(String str) {
                this.message = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class QuitGroup {
            private int charmCount;
            private int currentCharm;
            private String error;
            private String message;
            private int viewerCount;

            public int getCharmCount() {
                return this.charmCount;
            }

            public int getCurrentCharm() {
                return this.currentCharm;
            }

            public String getError() {
                return this.error;
            }

            public String getMessage() {
                return this.message;
            }

            public int getViewerCount() {
                return this.viewerCount;
            }

            public void setCharmCount(int i2) {
                this.charmCount = i2;
            }

            public void setCurrentCharm(int i2) {
                this.currentCharm = i2;
            }

            public void setError(String str) {
                this.error = str;
            }

            public void setMessage(String str) {
                this.message = str;
            }

            public void setViewerCount(int i2) {
                this.viewerCount = i2;
            }
        }

        /* loaded from: classes4.dex */
        public static class QuitRoom {
            private int charmCount;
            private int currentCharm;
            private String error;
            private long liveTime;
            private String message;
            private int viewerCount;

            public int getCharmCount() {
                return this.charmCount;
            }

            public int getCurrentCharm() {
                return this.currentCharm;
            }

            public String getError() {
                return this.error;
            }

            public long getLiveTime() {
                return this.liveTime;
            }

            public String getMessage() {
                return this.message;
            }

            public int getViewerCount() {
                return this.viewerCount;
            }

            public void setCharmCount(int i2) {
                this.charmCount = i2;
            }

            public void setCurrentCharm(int i2) {
                this.currentCharm = i2;
            }

            public void setError(String str) {
                this.error = str;
            }

            public void setLiveTime(long j4) {
                this.liveTime = j4;
            }

            public void setMessage(String str) {
                this.message = str;
            }

            public void setViewerCount(int i2) {
                this.viewerCount = i2;
            }
        }

        /* loaded from: classes4.dex */
        public static class Report {
        }

        /* loaded from: classes4.dex */
        public static class SendGift {
            private int diamond;
            private int status;

            public int getDiamond() {
                return this.diamond;
            }

            public int getStatus() {
                return this.status;
            }

            public void setDiamond(int i2) {
                this.diamond = i2;
            }

            public void setStatus(int i2) {
                this.status = i2;
            }
        }

        /* loaded from: classes4.dex */
        public static class SetAdmin {
            private String errorMessage;
            private boolean res;

            public String getErrorMessage() {
                return this.errorMessage;
            }

            public boolean isRes() {
                return this.res;
            }

            public void setErrorMessage(String str) {
                this.errorMessage = str;
            }

            public void setRes(boolean z3) {
                this.res = z3;
            }
        }

        /* loaded from: classes4.dex */
        public static class Silence {
        }

        /* loaded from: classes4.dex */
        public static class UnFollowAnchor {
        }

        /* loaded from: classes4.dex */
        public static class UplocadCover {
            private String appId;
            private String bucket;
            private String file;
            private String signature;
            private String uploadDir;

            public String getAppId() {
                return this.appId;
            }

            public String getBucket() {
                return this.bucket;
            }

            public String getFile() {
                return this.file;
            }

            public String getSignature() {
                return this.signature;
            }

            public String getUploadDir() {
                return this.uploadDir;
            }

            public void setAppId(String str) {
                this.appId = str;
            }

            public void setBucket(String str) {
                this.bucket = str;
            }

            public void setFile(String str) {
                this.file = str;
            }

            public void setSignature(String str) {
                this.signature = str;
            }

            public void setUploadDir(String str) {
                this.uploadDir = str;
            }
        }

        /* loaded from: classes4.dex */
        public static class WeekViewerBean implements Serializable {
            private String avatar;
            private String nickname;
            private int uid;

            public String getAvatar() {
                return this.avatar;
            }

            public String getNickname() {
                return this.nickname;
            }

            public int getUid() {
                return this.uid;
            }

            public void setAvatar(String str) {
                this.avatar = str;
            }

            public void setNickname(String str) {
                this.nickname = str;
            }

            public void setUid(int i2) {
                this.uid = i2;
            }
        }

        public Response() {
        }

        public T getData() {
            return this.data;
        }

        public int getError() {
            return this.error;
        }

        public void setData(T t3) {
            this.data = t3;
        }

        public void setError(int i2) {
            this.error = i2;
        }

        public Response(int i2, T t3) {
            this.error = i2;
            this.data = t3;
        }
    }
}
