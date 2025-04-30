.class public Lcom/join/mgps/dto/CommentBaseBean;
.super Ljava/lang/Object;
.source "CommentBaseBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private add_times:Ljava/lang/String;

.field private approval_rate:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private despise_count:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private head_portrait:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isShowMore:Z

.field private isTitle:Z

.field private is_despise:I

.field private is_hot:I

.field private is_old:I

.field private is_praise:I

.field private isfirst:Z

.field private mobile_phone_model:Ljava/lang/String;

.field private pn:I

.field private praise_count:J

.field private rank:Ljava/lang/String;

.field private reply_count:J

.field private stars_score:Ljava/lang/String;

.field private start_game_count:Ljava/lang/String;

.field private svip_level:I

.field private uid:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore:Z

    return-void
.end method


# virtual methods
.method public getAdd_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->add_times:Ljava/lang/String;

    return-object v0
.end method

.method public getApproval_rate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->approval_rate:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDespise_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->despise_count:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->head_portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_despise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->is_despise:I

    return v0
.end method

.method public getIs_hot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->is_hot:I

    return v0
.end method

.method public getIs_old()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->is_old:I

    return v0
.end method

.method public getIs_praise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->is_praise:I

    return v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->pn:I

    return v0
.end method

.method public getPraise_count()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->praise_count:J

    return-wide v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_count()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->reply_count:J

    return-wide v0
.end method

.method public getStars_score()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->stars_score:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_game_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->start_game_count:Ljava/lang/String;

    return-object v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->svip_level:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->vip_level:I

    return v0
.end method

.method public isIsfirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->isfirst:Z

    return v0
.end method

.method public isShowMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore:Z

    return v0
.end method

.method public isTitle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CommentBaseBean;->isTitle:Z

    return v0
.end method

.method public setAdd_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->add_times:Ljava/lang/String;

    return-void
.end method

.method public setApproval_rate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->approval_rate:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setDespise_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->despise_count:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setHead_portrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->head_portrait:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_despise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->is_despise:I

    return-void
.end method

.method public setIs_hot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->is_hot:I

    return-void
.end method

.method public setIs_old(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->is_old:I

    return-void
.end method

.method public setIs_praise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->is_praise:I

    return-void
.end method

.method public setIsfirst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->isfirst:Z

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->pn:I

    return-void
.end method

.method public setPraise_count(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->praise_count:J

    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->rank:Ljava/lang/String;

    return-void
.end method

.method public setReply_count(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->reply_count:J

    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore:Z

    return-void
.end method

.method public setStars_score(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->stars_score:Ljava/lang/String;

    return-void
.end method

.method public setStart_game_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->start_game_count:Ljava/lang/String;

    return-void
.end method

.method public setSvip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->svip_level:I

    return-void
.end method

.method public setTitle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->isTitle:Z

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setVip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentBaseBean;->vip_level:I

    return-void
.end method
