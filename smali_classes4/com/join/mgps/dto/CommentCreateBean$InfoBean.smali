.class public Lcom/join/mgps/dto/CommentCreateBean$InfoBean;
.super Ljava/lang/Object;
.source "CommentCreateBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/CommentCreateBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoBean"
.end annotation


# instance fields
.field private add_times:J

.field private approval_rate:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private despise_count:J

.field private game_id:Ljava/lang/String;

.field private head_portrait:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_despise:I

.field private is_old:I

.field private is_praise:I

.field private mapping:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private praise_count:J

.field private rank:Ljava/lang/String;

.field private reply_count:J

.field private reply_svip_level:I

.field private reply_vip_level:I

.field private stars_score:Ljava/lang/String;

.field private start_game_count:J

.field private svip_level:I

.field private uid:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_times()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->add_times:J

    return-wide v0
.end method

.method public getApproval_rate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->approval_rate:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDespise_count()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->despise_count:J

    return-wide v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->head_portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_despise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->is_despise:I

    return v0
.end method

.method public getIs_old()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->is_old:I

    return v0
.end method

.method public getIs_praise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->is_praise:I

    return v0
.end method

.method public getMapping()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->mapping:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_count()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->praise_count:J

    return-wide v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_count()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->reply_count:J

    return-wide v0
.end method

.method public getReply_svip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->reply_svip_level:I

    return v0
.end method

.method public getReply_vip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->reply_vip_level:I

    return v0
.end method

.method public getStars_score()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->stars_score:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_game_count()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->start_game_count:J

    return-wide v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->svip_level:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->vip_level:I

    return v0
.end method

.method public setAdd_times(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->add_times:J

    return-void
.end method

.method public setApproval_rate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->approval_rate:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setDespise_count(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->despise_count:J

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setHead_portrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->head_portrait:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_despise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->is_despise:I

    return-void
.end method

.method public setIs_old(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->is_old:I

    return-void
.end method

.method public setIs_praise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->is_praise:I

    return-void
.end method

.method public setMapping(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->mapping:Ljava/lang/String;

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPraise_count(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->praise_count:J

    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->rank:Ljava/lang/String;

    return-void
.end method

.method public setReply_count(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->reply_count:J

    return-void
.end method

.method public setReply_svip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->reply_svip_level:I

    return-void
.end method

.method public setReply_vip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->reply_vip_level:I

    return-void
.end method

.method public setStars_score(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->stars_score:Ljava/lang/String;

    return-void
.end method

.method public setStart_game_count(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->start_game_count:J

    return-void
.end method

.method public setSvip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->svip_level:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setVip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->vip_level:I

    return-void
.end method
