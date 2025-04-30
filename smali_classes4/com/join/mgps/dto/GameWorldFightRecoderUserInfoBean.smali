.class public Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;
.super Ljava/lang/Object;
.source "GameWorldFightRecoderUserInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private battle_count:Ljava/lang/String;

.field private battle_winning_rate:Ljava/lang/String;

.field private match_count:I

.field private match_curr_ex:I

.field private match_defeat_count:I

.field private match_level:I

.field private match_next_ex:I

.field private match_winning_count:I

.field private match_winning_rate:I

.field private nickname:Ljava/lang/String;

.field private papa_money:I

.field private svip_level:I

.field private uid:I

.field private vip_expire_time:J

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_level:I

    .line 3
    iput v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->svip_level:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_expire_time:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_level:I

    .line 7
    iput v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->svip_level:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_expire_time:J

    .line 9
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->uid:I

    .line 10
    iput-object p2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->nickname:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->papa_money:I

    .line 12
    iput p4, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_next_ex:I

    .line 13
    iput p5, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_curr_ex:I

    .line 14
    iput p6, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_level:I

    .line 15
    iput p7, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_rate:I

    .line 16
    iput p8, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_count:I

    .line 17
    iput p9, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_count:I

    .line 18
    iput p10, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_defeat_count:I

    return-void
.end method


# virtual methods
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getBattle_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_count:Ljava/lang/String;

    return-object v0
.end method

.method public getBattle_winning_rate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_winning_rate:Ljava/lang/String;

    return-object v0
.end method

.method public getMatch_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_count:I

    return v0
.end method

.method public getMatch_curr_ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_curr_ex:I

    return v0
.end method

.method public getMatch_defeat_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_defeat_count:I

    return v0
.end method

.method public getMatch_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_level:I

    return v0
.end method

.method public getMatch_next_ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_next_ex:I

    return v0
.end method

.method public getMatch_winning_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_count:I

    return v0
.end method

.method public getMatch_winning_rate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_rate:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPapa_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->papa_money:I

    return v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->svip_level:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->uid:I

    return v0
.end method

.method public getVip_expire_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_expire_time:J

    return-wide v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_level:I

    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setBattle_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_count:Ljava/lang/String;

    return-void
.end method

.method public setBattle_winning_rate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_winning_rate:Ljava/lang/String;

    return-void
.end method

.method public setMatch_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_count:I

    return-void
.end method

.method public setMatch_curr_ex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_curr_ex:I

    return-void
.end method

.method public setMatch_defeat_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_defeat_count:I

    return-void
.end method

.method public setMatch_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_level:I

    return-void
.end method

.method public setMatch_next_ex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_next_ex:I

    return-void
.end method

.method public setMatch_winning_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_count:I

    return-void
.end method

.method public setMatch_winning_rate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_rate:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPapa_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->papa_money:I

    return-void
.end method

.method public setSvip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->svip_level:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->uid:I

    return-void
.end method

.method public setVip_expire_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_expire_time:J

    return-void
.end method

.method public setVip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_level:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameWorldFightRecoderUserInfoBean{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", papa_money="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->papa_money:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", match_next_ex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_next_ex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", match_curr_ex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_curr_ex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", match_level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", match_winning_rate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_rate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", match_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", match_winning_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", match_defeat_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_defeat_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", avatar_src=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->avatar_src:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", battle_winning_rate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_winning_rate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", battle_count=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_count:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
