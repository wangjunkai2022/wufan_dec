package com.join.mgps.dto;

import com.join.mgps.Util.d2;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import org.springframework.core.io.FileSystemResource;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class ForumRequestBean {

    /* loaded from: classes4.dex */
    public static class ForumCommentDeleteRequestBean {
        private String device_id;
        private int pid;
        private String token;
        private int uid;

        public ForumCommentDeleteRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30340y, this.pid + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public ForumCommentDeleteRequestBean(int i2, String str, int i4, String str2) {
            this.uid = i2;
            this.token = str;
            this.pid = i4;
            this.device_id = str2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumCommentReplyDeleteRequestBean {
        private String device_id;
        private int rid;
        private String token;
        private int uid;

        public ForumCommentReplyDeleteRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add("rid", this.rid + "");
            return linkedMultiValueMap;
        }

        public int getRid() {
            return this.rid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setRid(int i2) {
            this.rid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public ForumCommentReplyDeleteRequestBean(int i2, String str, int i4, String str2) {
            this.uid = i2;
            this.token = str;
            this.rid = i4;
            this.device_id = str2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumCommentReplyRequestBean {
        private String device_id;
        private String message;
        private int pid;
        private int rid;
        private String token;
        private int uid;

        public String getDevice_id() {
            return this.device_id;
        }

        public String getMessage() {
            return this.message;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30340y, this.pid + "");
            linkedMultiValueMap.add("message", this.message);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add("rid", this.rid + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public int getRid() {
            return this.rid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setRid(int i2) {
            this.rid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumFollowRequestBean {
        private String device_id;
        private int fid;
        private String token;
        private int uid;

        public ForumFollowRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public int getFid() {
            return this.fid;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("fid", this.fid + "");
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            return linkedMultiValueMap;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setFid(int i2) {
            this.fid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public ForumFollowRequestBean(int i2, int i4, String str, String str2) {
            this.fid = i2;
            this.uid = i4;
            this.token = str;
            this.device_id = str2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsCommentRequestBean {
        private String device_id;
        private String img_1;
        private String img_2;
        private String img_3;
        private String img_4;
        private String img_5;
        private String img_6;
        private String img_7;
        private String img_8;
        private String img_9;
        private String message;
        private int pid;
        private String token;
        private int uid;

        public ForumPostsCommentRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public List<String> getImages() {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < 9) {
                i2++;
                try {
                    Field declaredField = ForumPostsCommentRequestBean.class.getDeclaredField("img_" + i2);
                    declaredField.setAccessible(true);
                    if (declaredField.get(this) != null) {
                        arrayList.add(declaredField.get(this).toString());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            return arrayList;
        }

        public String getImg_1() {
            return this.img_1;
        }

        public String getImg_2() {
            return this.img_2;
        }

        public String getImg_3() {
            return this.img_3;
        }

        public String getImg_4() {
            return this.img_4;
        }

        public String getImg_5() {
            return this.img_5;
        }

        public String getImg_6() {
            return this.img_6;
        }

        public String getImg_7() {
            return this.img_7;
        }

        public String getImg_8() {
            return this.img_8;
        }

        public String getImg_9() {
            return this.img_9;
        }

        public String getMessage() {
            return this.message;
        }

        public LinkedMultiValueMap<String, Object> getParams1() {
            LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30340y, this.pid + "");
            linkedMultiValueMap.add("message", this.message);
            linkedMultiValueMap.add("device_id", this.device_id);
            for (int i2 = 1; i2 <= 9; i2++) {
                try {
                    String str = "img_" + i2;
                    Field declaredField = ForumPostsCommentRequestBean.class.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    String obj = declaredField.get(this) != null ? declaredField.get(this).toString() : "";
                    if (!d2.h(obj)) {
                        linkedMultiValueMap.add(str, new FileSystemResource(obj));
                    } else {
                        linkedMultiValueMap.add(str, "");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setImages(List<String> list) {
            int i2 = 0;
            while (i2 < list.size()) {
                try {
                    int i4 = i2 + 1;
                    String str = list.get(i2);
                    Field declaredField = ForumPostsCommentRequestBean.class.getDeclaredField("img_" + i4);
                    declaredField.setAccessible(true);
                    if (!d2.h(str)) {
                        declaredField.set(this, str);
                    } else {
                        declaredField.set(this, "");
                    }
                    i2 = i4;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
        }

        public void setImg_1(String str) {
            this.img_1 = str;
        }

        public void setImg_2(String str) {
            this.img_2 = str;
        }

        public void setImg_3(String str) {
            this.img_3 = str;
        }

        public void setImg_4(String str) {
            this.img_4 = str;
        }

        public void setImg_5(String str) {
            this.img_5 = str;
        }

        public void setImg_6(String str) {
            this.img_6 = str;
        }

        public void setImg_7(String str) {
            this.img_7 = str;
        }

        public void setImg_8(String str) {
            this.img_8 = str;
        }

        public void setImg_9(String str) {
            this.img_9 = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public ForumPostsCommentRequestBean(int i2, String str, int i4, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
            this.uid = i2;
            this.token = str;
            this.pid = i4;
            this.message = str2;
            this.device_id = str3;
            this.img_1 = str4;
            this.img_2 = str5;
            this.img_3 = str6;
            this.img_4 = str7;
            this.img_5 = str8;
            this.img_6 = str9;
            this.img_7 = str10;
            this.img_8 = str11;
            this.img_9 = str12;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsDeleteRequestBean {
        private String device_id;
        private int pid;
        private String token;
        private int uid;

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30340y, this.pid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsHelpSolveRequestBean {
        private String device_id;
        private int pid;
        private int rid;
        private String token;
        private int uid;

        public ForumPostsHelpSolveRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30340y, this.pid + "");
            linkedMultiValueMap.add("rid", this.rid + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public int getRid() {
            return this.rid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setRid(int i2) {
            this.rid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public ForumPostsHelpSolveRequestBean(int i2, String str, int i4, String str2, int i5) {
            this.uid = i2;
            this.token = str;
            this.pid = i4;
            this.device_id = str2;
            this.rid = i5;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsPraiseRequestBean {
        private String device_id;
        private int pid;
        private String token;
        private int uid;

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30340y, this.pid + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsReportRequestBean {
        private int cid;
        private String device_id;
        private int pid;
        private int rid;
        private String token;
        private int uid;

        public ForumPostsReportRequestBean() {
        }

        public int getCid() {
            return this.cid;
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30340y, this.pid + "");
            linkedMultiValueMap.add("cid", this.cid + "");
            linkedMultiValueMap.add("rid", this.rid + "");
            linkedMultiValueMap.add("device_id", this.device_id);
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public int getRid() {
            return this.rid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setCid(int i2) {
            this.cid = i2;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setRid(int i2) {
            this.rid = i2;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public ForumPostsReportRequestBean(int i2, String str, int i4, String str2) {
            this.uid = i2;
            this.token = str;
            this.pid = i4;
            this.device_id = str2;
        }

        public ForumPostsReportRequestBean(int i2, String str, int i4, int i5, int i6, String str2) {
            this.uid = i2;
            this.token = str;
            this.pid = i4;
            this.cid = i5;
            this.rid = i6;
            this.device_id = str2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsSubmitRequestBean implements Serializable {
        private String device_id;
        private int fid;
        private int help;
        private int help_money;
        private String img_1;
        private String img_2;
        private String img_3;
        private String img_4;
        private String img_5;
        private String img_6;
        private String img_7;
        private String img_8;
        private String img_9;
        private String message;
        private int rsid;
        private String subject;
        private String token;
        private int uid;

        public String getDevice_id() {
            return this.device_id;
        }

        public int getFid() {
            return this.fid;
        }

        public int getHelp() {
            return this.help;
        }

        public int getHelp_money() {
            return this.help_money;
        }

        public List<String> getImages() {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < 9) {
                i2++;
                try {
                    Field declaredField = ForumPostsSubmitRequestBean.class.getDeclaredField("img_" + i2);
                    declaredField.setAccessible(true);
                    if (declaredField.get(this) != null) {
                        arrayList.add(declaredField.get(this).toString());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            return arrayList;
        }

        public String getImg_1() {
            return this.img_1;
        }

        public String getImg_2() {
            return this.img_2;
        }

        public String getImg_3() {
            return this.img_3;
        }

        public String getImg_4() {
            return this.img_4;
        }

        public String getImg_5() {
            return this.img_5;
        }

        public String getImg_6() {
            return this.img_6;
        }

        public String getImg_7() {
            return this.img_7;
        }

        public String getImg_8() {
            return this.img_8;
        }

        public String getImg_9() {
            return this.img_9;
        }

        public String getMessage() {
            return this.message;
        }

        public LinkedMultiValueMap<String, Object> getParams() {
            LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add("fid", this.fid + "");
            linkedMultiValueMap.add("rsid", this.rsid + "");
            linkedMultiValueMap.add("subject", this.subject);
            linkedMultiValueMap.add("message", this.message);
            linkedMultiValueMap.add("help", this.help + "");
            linkedMultiValueMap.add("help_money", this.help_money + "");
            linkedMultiValueMap.add("device_id", this.device_id);
            for (int i2 = 1; i2 <= 9; i2++) {
                try {
                    String str = "img_" + i2;
                    Field declaredField = ForumPostsSubmitRequestBean.class.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    String obj = declaredField.get(this) != null ? declaredField.get(this).toString() : "";
                    if (!d2.h(obj)) {
                        linkedMultiValueMap.add(str, new FileSystemResource(obj));
                    } else {
                        linkedMultiValueMap.add(str, "");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            return linkedMultiValueMap;
        }

        public int getRsid() {
            return this.rsid;
        }

        public String getSubject() {
            return this.subject;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setFid(int i2) {
            this.fid = i2;
        }

        public void setHelp(int i2) {
            this.help = i2;
        }

        public void setHelp_money(int i2) {
            this.help_money = i2;
        }

        public void setImages(List<String> list) {
            int i2 = 0;
            while (i2 < list.size()) {
                try {
                    int i4 = i2 + 1;
                    String str = list.get(i2);
                    Field declaredField = ForumPostsSubmitRequestBean.class.getDeclaredField("img_" + i4);
                    declaredField.setAccessible(true);
                    if (!d2.h(str)) {
                        declaredField.set(this, str);
                    } else {
                        declaredField.set(this, "");
                    }
                    i2 = i4;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
        }

        public void setImg_1(String str) {
            this.img_1 = str;
        }

        public void setImg_2(String str) {
            this.img_2 = str;
        }

        public void setImg_3(String str) {
            this.img_3 = str;
        }

        public void setImg_4(String str) {
            this.img_4 = str;
        }

        public void setImg_5(String str) {
            this.img_5 = str;
        }

        public void setImg_6(String str) {
            this.img_6 = str;
        }

        public void setImg_7(String str) {
            this.img_7 = str;
        }

        public void setImg_8(String str) {
            this.img_8 = str;
        }

        public void setImg_9(String str) {
            this.img_9 = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setRsid(int i2) {
            this.rsid = i2;
        }

        public void setSubject(String str) {
            this.subject = str;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class PostGagRequestBean {
        private int gag_time;
        private String gag_uid;
        private String remarks;
        private String token;
        private String uid;

        public int getGag_time() {
            return this.gag_time;
        }

        public String getGag_uid() {
            return this.gag_uid;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add("gag_uid", this.gag_uid + "");
            linkedMultiValueMap.add("gag_time", this.gag_time + "");
            linkedMultiValueMap.add("remarks", this.remarks);
            return linkedMultiValueMap;
        }

        public String getRemarks() {
            return this.remarks;
        }

        public String getToken() {
            return this.token;
        }

        public String getUid() {
            return this.uid;
        }

        public void setGag_time(int i2) {
            this.gag_time = i2;
        }

        public void setGag_uid(String str) {
            this.gag_uid = str;
        }

        public void setRemarks(String str) {
            this.remarks = str;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setUid(String str) {
            this.uid = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumPostsFavoritesRequestBean {
        private String app_ver;
        private String device_id;
        private int pid;
        private String resource_id;
        private String token;
        private int type;
        private int uid;

        public ForumPostsFavoritesRequestBean() {
            this.device_id = "";
            this.app_ver = "";
            this.resource_id = "";
        }

        public String getApp_ver() {
            return this.app_ver;
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add("token", this.token);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30340y, this.pid + "");
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add("app_ver", this.app_ver);
            linkedMultiValueMap.add("resource_id", this.resource_id);
            linkedMultiValueMap.add("type", this.type + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getResource_id() {
            return this.resource_id;
        }

        public String getToken() {
            return this.token;
        }

        public int getType() {
            return this.type;
        }

        public int getUid() {
            return this.uid;
        }

        public void setApp_ver(String str) {
            this.app_ver = str;
        }

        public void setDevice_id(String str) {
            this.device_id = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setResource_id(String str) {
            this.resource_id = str;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setType(int i2) {
            this.type = i2;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public ForumPostsFavoritesRequestBean(int i2, String str, int i4, String str2) {
            this.device_id = "";
            this.app_ver = "";
            this.resource_id = "";
            this.uid = i2;
            this.token = str;
            this.pid = i4;
            this.device_id = str2;
        }
    }
}
