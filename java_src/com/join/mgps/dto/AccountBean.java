package com.join.mgps.dto;

import com.join.mgps.Util.a;
import com.join.mgps.Util.b;
import com.wufan.user.service.protobuf.l0;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class AccountBean implements Serializable, Cloneable {
    private int account_type;
    private int is_bind_qq;
    private int is_bind_wb;
    private int is_bind_wx;
    private int is_real_name;
    private long member_time;
    private MemberInfo member_title;
    private String pass;
    private int pwd_set_up;
    private String secretKey;
    private boolean status;
    private int uid = 0;
    private String account = "";
    private long papaMoney = 0;
    private long registerTime = 0;
    private String avatarSrc = "";
    private String exp = "";
    private int level = 0;
    private String surplusExp = "";
    private String nickname = "";
    private String mobile = "";
    private String pay_top_tip = "";
    private int gender = 0;
    private String token = "";
    private int vip_level = 0;
    private int svip_level = 0;
    private long vip_exp_time = 0;
    private int live_total_charm = 0;
    private int is_anchor = 0;

    /* loaded from: classes4.dex */
    public static class MemberInfo implements Serializable {
        private String battleTitle;
        private String battleTitleColor;
        private int level;

        public String getBattleTitle() {
            return this.battleTitle;
        }

        public String getBattleTitleColor() {
            return this.battleTitleColor;
        }

        public int getLevel() {
            return this.level;
        }

        public void setBattleTitle(String str) {
            this.battleTitle = str;
        }

        public void setBattleTitleColor(String str) {
            this.battleTitleColor = str;
        }

        public void setLevel(int i2) {
            this.level = i2;
        }
    }

    public static AccountBean convert(l0 l0Var) {
        AccountBean accountBean = new AccountBean();
        accountBean.setUid(l0Var.getUid());
        accountBean.setAccount(l0Var.getAccount());
        accountBean.setPapaMoney(l0Var.M1());
        accountBean.setRegisterTime(l0Var.o2());
        accountBean.setAvatarSrc(l0Var.c0());
        accountBean.setExp(l0Var.W0() + "");
        accountBean.setLevel(l0Var.h());
        accountBean.setSurplusExp(l0Var.i2() + "");
        accountBean.setNickname(l0Var.getNickname());
        accountBean.setMobile(l0Var.t());
        accountBean.setPay_top_tip(l0Var.x0());
        accountBean.setGender(l0Var.t1());
        accountBean.setToken(l0Var.getToken());
        accountBean.setPwd_set_up(l0Var.y0());
        accountBean.setAccount_type(l0Var.l2());
        try {
            accountBean.setVip_level(Integer.parseInt(b.vl(a.b(l0Var.C()))));
        } catch (Exception unused) {
            accountBean.setVip_level(l0Var.J());
        }
        accountBean.setSvip_level(l0Var.h1());
        accountBean.setVip_exp_time(l0Var.r());
        accountBean.setLive_total_charm(l0Var.v2());
        accountBean.setIs_anchor(l0Var.L2());
        if (l0Var.D2() != null) {
            MemberInfo memberInfo = new MemberInfo();
            memberInfo.setLevel(l0Var.D2().h());
            memberInfo.setBattleTitle(l0Var.D2().getBattleTitle());
            memberInfo.setBattleTitleColor(l0Var.D2().getBattleTitleColor());
            accountBean.setMember_title(memberInfo);
        }
        accountBean.setIs_real_name(l0Var.D0());
        accountBean.setSecretKey(l0Var.C());
        accountBean.setMember_time(l0Var.g0());
        return accountBean;
    }

    public AccountBean cloneNewAccountBean() {
        AccountBean accountBean = new AccountBean();
        accountBean.setUid(this.uid);
        accountBean.setAccount(this.account);
        accountBean.setPapaMoney(this.papaMoney);
        accountBean.setRegisterTime(this.registerTime);
        accountBean.setAvatarSrc(this.avatarSrc);
        accountBean.setExp(this.exp);
        accountBean.setLevel(this.level);
        accountBean.setSurplusExp(this.surplusExp);
        accountBean.setNickname(this.nickname);
        accountBean.setMobile(this.mobile);
        accountBean.setPay_top_tip(this.pay_top_tip);
        accountBean.setGender(this.gender);
        accountBean.setToken(this.token);
        accountBean.setStatus(this.status);
        accountBean.setPwd_set_up(this.pwd_set_up);
        accountBean.setPass(this.pass);
        accountBean.setAccount_type(this.account_type);
        accountBean.setVip_level(this.vip_level);
        accountBean.setSvip_level(this.svip_level);
        accountBean.setVip_exp_time(this.vip_exp_time);
        accountBean.setLive_total_charm(this.live_total_charm);
        accountBean.setIs_anchor(this.is_anchor);
        accountBean.setMember_title(this.member_title);
        accountBean.setIs_real_name(this.is_real_name);
        accountBean.setSecretKey(this.secretKey);
        accountBean.setMember_time(this.member_time);
        return accountBean;
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public String getAccount() {
        return this.account;
    }

    public int getAccount_type() {
        return this.account_type;
    }

    public String getAvatarSrc() {
        return this.avatarSrc;
    }

    public String getExp() {
        return this.exp;
    }

    public int getGender() {
        return this.gender;
    }

    public int getIs_anchor() {
        return this.is_anchor;
    }

    public int getIs_bind_qq() {
        return this.is_bind_qq;
    }

    public int getIs_bind_wb() {
        return this.is_bind_wb;
    }

    public int getIs_bind_wx() {
        return this.is_bind_wx;
    }

    public int getIs_real_name() {
        return this.is_real_name;
    }

    public int getLevel() {
        return this.level;
    }

    public int getLive_total_charm() {
        return this.live_total_charm;
    }

    public long getMember_time() {
        return this.member_time;
    }

    public MemberInfo getMember_title() {
        return this.member_title;
    }

    public String getMobile() {
        return this.mobile;
    }

    public String getNickname() {
        return this.nickname;
    }

    public long getPapaMoney() {
        return this.papaMoney;
    }

    public String getPass() {
        return this.pass;
    }

    public String getPay_top_tip() {
        return this.pay_top_tip;
    }

    public int getPwd_set_up() {
        return this.pwd_set_up;
    }

    public long getRegisterTime() {
        return this.registerTime;
    }

    public String getSecretKey() {
        return this.secretKey;
    }

    public String getSurplusExp() {
        return this.surplusExp;
    }

    public int getSvip_level() {
        return this.svip_level;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public long getVip_exp_time() {
        return this.vip_exp_time;
    }

    public int getVip_level() {
        return this.vip_level;
    }

    public boolean isStatus() {
        return this.status;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAccount_type(int i2) {
        this.account_type = i2;
    }

    public void setAvatarSrc(String str) {
        this.avatarSrc = str;
    }

    public void setExp(String str) {
        this.exp = str;
    }

    public void setGender(int i2) {
        this.gender = i2;
    }

    public void setIs_anchor(int i2) {
        this.is_anchor = i2;
    }

    public void setIs_bind_qq(int i2) {
        this.is_bind_qq = i2;
    }

    public void setIs_bind_wb(int i2) {
        this.is_bind_wb = i2;
    }

    public void setIs_bind_wx(int i2) {
        this.is_bind_wx = i2;
    }

    public void setIs_real_name(int i2) {
        this.is_real_name = i2;
    }

    public void setLevel(int i2) {
        this.level = i2;
    }

    public void setLive_total_charm(int i2) {
        this.live_total_charm = i2;
    }

    public void setMember_time(long j4) {
        this.member_time = j4;
    }

    public void setMember_title(MemberInfo memberInfo) {
        this.member_title = memberInfo;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPapaMoney(long j4) {
        this.papaMoney = j4;
    }

    public void setPass(String str) {
        this.pass = str;
    }

    public void setPay_top_tip(String str) {
        this.pay_top_tip = str;
    }

    public void setPwd_set_up(int i2) {
        this.pwd_set_up = i2;
    }

    public void setRegisterTime(long j4) {
        this.registerTime = j4;
    }

    public void setSecretKey(String str) {
        this.secretKey = str;
    }

    public void setStatus(boolean z3) {
        this.status = z3;
    }

    public void setSurplusExp(String str) {
        this.surplusExp = str;
    }

    public void setSvip_level(int i2) {
        this.svip_level = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setVip_exp_time(long j4) {
        this.vip_exp_time = j4;
    }

    public void setVip_level(int i2) {
        this.vip_level = i2;
    }

    public String toString() {
        return "AccountBean{uid=" + this.uid + ", account='" + this.account + "', papaMoney=" + this.papaMoney + ", registerTime=" + this.registerTime + ", avatarSrc='" + this.avatarSrc + "', exp='" + this.exp + "', level=" + this.level + ", surplusExp='" + this.surplusExp + "', nickname='" + this.nickname + "', mobile='" + this.mobile + "', pay_top_tip='" + this.pay_top_tip + "', gender=" + this.gender + ", token='" + this.token + "', status=" + this.status + ", pwd_set_up=" + this.pwd_set_up + ", pass='" + this.pass + "', account_type=" + this.account_type + ", vip_level=" + this.vip_level + ", svip_level=" + this.svip_level + ", vip_exp_time=" + this.vip_exp_time + ", live_total_charm=" + this.live_total_charm + ", is_anchor=" + this.is_anchor + ", is_bind_wb=" + this.is_bind_wb + ", is_bind_wx=" + this.is_bind_wx + ", is_bind_qq=" + this.is_bind_qq + ", is_real_name=" + this.is_real_name + ", member_title=" + this.member_title + ", member_time=" + this.member_time + '}';
    }
}
