.class public Lcom/join/mgps/dto/AccountBean;
.super Ljava/lang/Object;
.source "AccountBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/AccountBean$MemberInfo;
    }
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field private account_type:I

.field private avatarSrc:Ljava/lang/String;

.field private exp:Ljava/lang/String;

.field private gender:I

.field private is_anchor:I

.field private is_bind_qq:I

.field private is_bind_wb:I

.field private is_bind_wx:I

.field private is_real_name:I

.field private level:I

.field private live_total_charm:I

.field private member_time:J

.field private member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

.field private mobile:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private papaMoney:J

.field private pass:Ljava/lang/String;

.field private pay_top_tip:Ljava/lang/String;

.field private pwd_set_up:I

.field private registerTime:J

.field private secretKey:Ljava/lang/String;

.field private status:Z

.field private surplusExp:Ljava/lang/String;

.field private svip_level:I

.field private token:Ljava/lang/String;

.field private uid:I

.field private vip_exp_time:J

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    .line 5
    iput-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    .line 6
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    .line 9
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    .line 13
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    .line 14
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    .line 15
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    .line 16
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    .line 17
    iput-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    .line 18
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    .line 19
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    return-void
.end method

.method public static convert(Lcom/wufan/user/service/protobuf/l0;)Lcom/join/mgps/dto/AccountBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setUid(I)V

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->M1()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->o2()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setRegisterTime(J)V

    .line 6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAvatarSrc(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->W0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setExp(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLevel(I)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->i2()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSurplusExp(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMobile(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->x0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPay_top_tip(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->t1()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setGender(I)V

    .line 14
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setToken(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->y0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPwd_set_up(I)V

    .line 16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->l2()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount_type(I)V

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/b;->vl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->h1()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 21
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setVip_exp_time(J)V

    .line 22
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->v2()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLive_total_charm(I)V

    .line 23
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->L2()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 24
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->D2()Lcom/wufan/user/service/protobuf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    new-instance v1, Lcom/join/mgps/dto/AccountBean$MemberInfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountBean$MemberInfo;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->D2()Lcom/wufan/user/service/protobuf/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/h;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setLevel(I)V

    .line 27
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->D2()Lcom/wufan/user/service/protobuf/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/h;->getBattleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setBattleTitle(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->D2()Lcom/wufan/user/service/protobuf/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/h;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setBattleTitleColor(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->D0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_real_name(I)V

    .line 31
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSecretKey(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->g0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setMember_time(J)V

    return-object v0
.end method


# virtual methods
.method public cloneNewAccountBean()Lcom/join/mgps/dto/AccountBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setUid(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount(Ljava/lang/String;)V

    .line 4
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 5
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setRegisterTime(J)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAvatarSrc(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setExp(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLevel(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSurplusExp(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMobile(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPay_top_tip(Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setGender(I)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setToken(Ljava/lang/String;)V

    .line 15
    iget-boolean v1, p0, Lcom/join/mgps/dto/AccountBean;->status:Z

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setStatus(Z)V

    .line 16
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->pwd_set_up:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPwd_set_up(I)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->pass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPass(Ljava/lang/String;)V

    .line 18
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->account_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount_type(I)V

    .line 19
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 20
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 21
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setVip_exp_time(J)V

    .line 22
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLive_total_charm(I)V

    .line 23
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V

    .line 25
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_real_name:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_real_name(I)V

    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->secretKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSecretKey(Ljava/lang/String;)V

    .line 27
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->member_time:J

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setMember_time(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->account_type:I

    return v0
.end method

.method public getAvatarSrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    return v0
.end method

.method public getIs_anchor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    return v0
.end method

.method public getIs_bind_qq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_qq:I

    return v0
.end method

.method public getIs_bind_wb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wb:I

    return v0
.end method

.method public getIs_bind_wx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wx:I

    return v0
.end method

.method public getIs_real_name()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_real_name:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    return v0
.end method

.method public getLive_total_charm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    return v0
.end method

.method public getMember_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->member_time:J

    return-wide v0
.end method

.method public getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPapaMoney()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    return-wide v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_top_tip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd_set_up()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->pwd_set_up:I

    return v0
.end method

.method public getRegisterTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    return-wide v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSurplusExp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    return-object v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    # iget v0, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I
    const/4 v0, 0x1
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    return v0
.end method

.method public getVip_exp_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    return-wide v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    # iget v0, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I
    const/4 v0, 0x1
    return v0
.end method

.method public isStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/AccountBean;->status:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    return-void
.end method

.method public setAccount_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->account_type:I

    return-void
.end method

.method public setAvatarSrc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    return-void
.end method

.method public setExp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    return-void
.end method

.method public setIs_anchor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    return-void
.end method

.method public setIs_bind_qq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_qq:I

    return-void
.end method

.method public setIs_bind_wb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wb:I

    return-void
.end method

.method public setIs_bind_wx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wx:I

    return-void
.end method

.method public setIs_real_name(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_real_name:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    return-void
.end method

.method public setLive_total_charm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    return-void
.end method

.method public setMember_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->member_time:J

    return-void
.end method

.method public setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPapaMoney(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->pass:Ljava/lang/String;

    return-void
.end method

.method public setPay_top_tip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    return-void
.end method

.method public setPwd_set_up(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->pwd_set_up:I

    return-void
.end method

.method public setRegisterTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/AccountBean;->status:Z

    return-void
.end method

.method public setSurplusExp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    return-void
.end method

.method public setSvip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    return-void
.end method

.method public setVip_exp_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    return-void
.end method

.method public setVip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountBean{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", papaMoney="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", registerTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", avatarSrc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", exp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surplusExp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mobile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pay_top_tip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/dto/AccountBean;->status:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pwd_set_up="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/AccountBean;->pwd_set_up:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pass=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->pass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", account_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->account_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vip_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", svip_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vip_exp_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", live_total_charm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_bind_wb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_bind_wx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_bind_qq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_qq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_real_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_real_name:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", member_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", member_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->member_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
