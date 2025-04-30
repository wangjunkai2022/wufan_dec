.class public Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;
.super Ljava/lang/Object;
.source "CommentSelfListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/CommentSelfListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelfComment"
.end annotation


# instance fields
.field private add_times:J

.field private approval_rate:D

.field private content:Ljava/lang/String;

.field private despise_count:I

.field private game_id:Ljava/lang/String;

.field private head_portrait:Ljava/lang/String;

.field private id:I

.field private is_despise:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_despise"
    .end annotation
.end field

.field private is_old:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_old"
    .end annotation
.end field

.field private is_praise:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_praise"
    .end annotation
.end field

.field private mobile_phone_model:Ljava/lang/String;

.field private praise_count:I

.field private rank:Ljava/lang/String;

.field private reply_count:I

.field private stars_score:I

.field private start_game_count:I

.field private uid:I

.field private user_name:Ljava/lang/String;


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
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->add_times:J

    return-wide v0
.end method

.method public getApproval_rate()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->approval_rate:D

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDespise_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->despise_count:I

    return v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->head_portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->id:I

    return v0
.end method

.method public getIs_despise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->is_despise:I

    return v0
.end method

.method public getIs_old()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->is_old:I

    return v0
.end method

.method public getIs_praise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->is_praise:I

    return v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->praise_count:I

    return v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->reply_count:I

    return v0
.end method

.method public getStars_score()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->stars_score:I

    return v0
.end method

.method public getStart_game_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->start_game_count:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->uid:I

    return v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_times(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->add_times:J

    return-void
.end method

.method public setApproval_rate(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->approval_rate:D

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->content:Ljava/lang/String;

    return-void
.end method

.method public setDespise_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->despise_count:I

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setHead_portrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->head_portrait:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->id:I

    return-void
.end method

.method public setIs_despise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->is_despise:I

    return-void
.end method

.method public setIs_old(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->is_old:I

    return-void
.end method

.method public setIs_praise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->is_praise:I

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPraise_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->praise_count:I

    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->rank:Ljava/lang/String;

    return-void
.end method

.method public setReply_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->reply_count:I

    return-void
.end method

.method public setStars_score(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->stars_score:I

    return-void
.end method

.method public setStart_game_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->start_game_count:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->uid:I

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->user_name:Ljava/lang/String;

    return-void
.end method
