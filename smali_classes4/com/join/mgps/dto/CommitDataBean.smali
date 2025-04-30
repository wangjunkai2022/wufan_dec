.class public Lcom/join/mgps/dto/CommitDataBean;
.super Ljava/lang/Object;
.source "CommitDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment_id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private has_praised:Z

.field private head_portrait:Ljava/lang/String;

.field private praise_count:I

.field private times:J

.field private uid:I

.field private user_level:I

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitDataBean;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitDataBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitDataBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitDataBean;->head_portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommitDataBean;->praise_count:I

    return v0
.end method

.method public getTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommitDataBean;->times:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommitDataBean;->uid:I

    return v0
.end method

.method public getUser_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommitDataBean;->user_level:I

    return v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitDataBean;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public isHas_praised()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CommitDataBean;->has_praised:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommitDataBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommitDataBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setHas_praised(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CommitDataBean;->has_praised:Z

    return-void
.end method

.method public setPraise_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommitDataBean;->praise_count:I

    return-void
.end method

.method public setTimes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommitDataBean;->times:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommitDataBean;->uid:I

    return-void
.end method
