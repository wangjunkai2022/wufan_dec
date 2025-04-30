package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.TreeSet;
/* loaded from: classes4.dex */
public class ArenaLoginRep implements Serializable {
    public static final int BEIJING = 1;
    public static final int CLOSE_NO_ROOT = 10100;
    public static final int FORBID = 9100;
    public static final int GUANGZHOU = 3;
    public static final int PING_TIP = 10000;
    public static final int S2C_BEGIN_GROUP_RES = 108;
    public static final int S2C_CANCEL_GROUP_RES = 105;
    public static final int S2C_CREATE_GROUP_RES = 102;
    public static final int S2C_ENTER_BATTLE = 107;
    public static final int S2C_GET_USER_COUNTRES = 111;
    public static final int S2C_GROUP_ENTERAREA_RES = 100;
    public static final int S2C_GROUP_SETOPTION_RES = 106;
    public static final int S2C_GROUP_USERSTATE = 103;
    public static final int S2C_KICKGROUPUSERRES = 110;
    public static final int S2C_LIST_GROUPSTATE_RES = 104;
    public static final int S2C_PLATFORM_NOTICEE = 113;
    public static final int S2C_REFRESH_GROUPSTATE_RES = 101;
    public static final int S2C_ROOM_IPPORT = 109;
    public static final int SHANGHAI = 2;
    public static final int TYPE_BAK_NETWORK = -1000;
    public static final int TYPE_MATCH_KICK_OFF = 112;
    public static final int TYPE_NO_ROOM = 1010;
    public static final int TYPE_OTHER_ERROR = 3100;
    public static final int VERSIONLOW = 6100;
    private static final long serialVersionUID = -5596318227694788734L;
    private int area;
    private long creator;
    private Object data;
    private String errContent;
    private String firstPassord;
    private long gameId;
    TreeSet<Long> gameidList = new TreeSet<>();
    private int groupid;
    private ArrayList<ArenaGroupStateBean> grouplist;
    private String ip;
    private boolean isReady;
    private byte isarchive;
    private byte isarchive_flg;
    private byte isvisit;
    private boolean judgeVisit;
    private long logid;
    private int maxperson;
    private int maxvisitor;

    /* renamed from: me  reason: collision with root package name */
    private ArenaUserBean f48145me;
    private String passWord;
    private byte password;
    private int port;
    private byte refreshtype;
    private byte result;
    private long roomId;
    private byte roomtype;
    private int server_type;
    int showGroupId;
    private int startMode;
    private byte startbattle;
    private long starttime;
    private byte svip;
    private byte tcptype;
    private int type;
    private int udpport;
    private ArrayList<ArenaUserBean> userList;
    private long userid;
    private byte vip;
    private ArrayList<ArenaUserBean> visitorList;

    public int getArea() {
        return this.area;
    }

    public long getCreator() {
        return this.creator;
    }

    public Object getData() {
        return this.data;
    }

    public String getErrContent() {
        return this.errContent;
    }

    public String getFirstPassord() {
        return this.firstPassord;
    }

    public long getGameId() {
        return this.gameId;
    }

    public TreeSet getGameidList() {
        return this.gameidList;
    }

    public int getGroupid() {
        return this.groupid;
    }

    public ArrayList<ArenaGroupStateBean> getGrouplist() {
        return this.grouplist;
    }

    public String getIp() {
        return this.ip;
    }

    public byte getIsarchive() {
        return this.isarchive;
    }

    public byte getIsarchive_flg() {
        return this.isarchive_flg;
    }

    public byte getIsvisit() {
        return this.isvisit;
    }

    public long getLogid() {
        return this.logid;
    }

    public int getMaxperson() {
        return this.maxperson;
    }

    public int getMaxvisitor() {
        return this.maxvisitor;
    }

    public ArenaUserBean getMe() {
        return this.f48145me;
    }

    public String getPassWord() {
        return this.passWord;
    }

    public byte getPassword() {
        return this.password;
    }

    public int getPort() {
        return this.port;
    }

    public byte getRefreshtype() {
        return this.refreshtype;
    }

    public byte getResult() {
        return this.result;
    }

    public long getRoomId() {
        return this.roomId;
    }

    public byte getRoomtype() {
        return this.roomtype;
    }

    public int getServer_type() {
        return this.server_type;
    }

    public int getShowGroupId() {
        return this.showGroupId;
    }

    public int getStartMode() {
        return this.startMode;
    }

    public byte getStartbattle() {
        return this.startbattle;
    }

    public long getStarttime() {
        return this.starttime;
    }

    public byte getSvip() {
        return this.svip;
    }

    public byte getTcptype() {
        return this.tcptype;
    }

    public int getType() {
        return this.type;
    }

    public int getUdpport() {
        return this.udpport;
    }

    public ArrayList<ArenaUserBean> getUserList() {
        return this.userList;
    }

    public long getUserid() {
        return this.userid;
    }

    public byte getVip() {
        return this.vip;
    }

    public ArrayList<ArenaUserBean> getVisitorList() {
        return this.visitorList;
    }

    public boolean isJudgeVisit() {
        return this.judgeVisit;
    }

    public boolean isReady() {
        return this.isReady;
    }

    public void setArea(int i2) {
        this.area = i2;
    }

    public void setCreator(long j4) {
        this.creator = j4;
    }

    public void setData(Object obj) {
        this.data = obj;
    }

    public void setErrContent(String str) {
        this.errContent = str;
    }

    public void setFirstPassord(String str) {
        this.firstPassord = str;
    }

    public void setGameId(long j4) {
        this.gameId = j4;
    }

    public void setGameidList(TreeSet treeSet) {
        this.gameidList = treeSet;
    }

    public void setGroupid(int i2) {
        this.groupid = i2;
    }

    public void setGrouplist(ArrayList<ArenaGroupStateBean> arrayList) {
        this.grouplist = arrayList;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setIsarchive(byte b4) {
        this.isarchive = b4;
    }

    public void setIsarchive_flg(byte b4) {
        this.isarchive_flg = b4;
    }

    public void setIsvisit(byte b4) {
        this.isvisit = b4;
    }

    public void setJudgeVisit(boolean z3) {
        this.judgeVisit = z3;
    }

    public void setLogid(long j4) {
        this.logid = j4;
    }

    public void setMaxperson(int i2) {
        this.maxperson = i2;
    }

    public void setMaxvisitor(int i2) {
        this.maxvisitor = i2;
    }

    public void setMe(ArenaUserBean arenaUserBean) {
        this.f48145me = arenaUserBean;
    }

    public void setPassWord(String str) {
        this.passWord = str;
    }

    public void setPassword(byte b4) {
        this.password = b4;
    }

    public void setPort(int i2) {
        this.port = i2;
    }

    public void setReady(boolean z3) {
        this.isReady = z3;
    }

    public void setRefreshtype(byte b4) {
        this.refreshtype = b4;
    }

    public void setResult(byte b4) {
        this.result = b4;
    }

    public void setRoomId(long j4) {
        this.roomId = j4;
    }

    public void setRoomtype(byte b4) {
        this.roomtype = b4;
    }

    public void setServer_type(int i2) {
        this.server_type = i2;
    }

    public void setShowGroupId(int i2) {
        this.showGroupId = i2 % 1000;
    }

    public void setStartMode(int i2) {
        this.startMode = i2;
    }

    public void setStartbattle(byte b4) {
        this.startbattle = b4;
    }

    public void setStarttime(long j4) {
        this.starttime = j4;
    }

    public void setSvip(byte b4) {
        this.svip = b4;
    }

    public void setTcptype(byte b4) {
        this.tcptype = b4;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUdpport(int i2) {
        this.udpport = i2;
    }

    public void setUserList(ArrayList<ArenaUserBean> arrayList) {
        this.userList = arrayList;
    }

    public void setUserid(long j4) {
        this.userid = j4;
    }

    public void setVip(byte b4) {
        this.vip = b4;
    }

    public void setVisitorList(ArrayList<ArenaUserBean> arrayList) {
        this.visitorList = arrayList;
    }

    public String toString() {
        return "ArenaLoginRep{area=" + this.area + ", type=" + this.type + ", groupid=" + this.groupid + ", roomtype=" + ((int) this.roomtype) + ", creator=" + this.creator + ", isvisit=" + ((int) this.isvisit) + ", result=" + ((int) this.result) + ", refreshtype=" + ((int) this.refreshtype) + ", password=" + ((int) this.password) + ", userid=" + this.userid + ", startbattle=" + ((int) this.startbattle) + ", starttime=" + this.starttime + ", passWord='" + this.passWord + "', judgeVisit=" + this.judgeVisit + ", port=" + this.port + ", ip='" + this.ip + "', udpport=" + this.udpport + ", tcptype=" + ((int) this.tcptype) + ", logid=" + this.logid + ", roomId=" + this.roomId + ", gameId=" + this.gameId + ", server_type=" + this.server_type + ", errContent='" + this.errContent + "', maxperson=" + this.maxperson + ", maxvisitor=" + this.maxvisitor + ", isarchive=" + ((int) this.isarchive) + ", isarchive_flg=" + ((int) this.isarchive_flg) + ", data=" + this.data + ", me=" + this.f48145me + ", gameidList=" + this.gameidList + ", grouplist=" + this.grouplist + ", userList=" + this.userList + ", visitorList=" + this.visitorList + '}';
    }
}
