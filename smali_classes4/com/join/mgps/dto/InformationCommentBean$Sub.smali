.class public Lcom/join/mgps/dto/InformationCommentBean$Sub;
.super Ljava/lang/Object;
.source "InformationCommentBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/InformationCommentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sub"
.end annotation


# instance fields
.field private comment_id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private hasPraised:Z

.field private head_portrait:Ljava/lang/String;

.field private is_hot:I

.field private mapping:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private praise_count:I

.field private reply_comment_id:Ljava/lang/String;

.field private reply_user_id:Ljava/lang/String;

.field private times:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_level:I

.field private user_name:Ljava/lang/String;

.field private user_svip_level:I

.field private user_vip_level:I


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
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->head_portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_hot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->is_hot:I

    return v0
.end method

.method public getMapping()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->mapping:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->praise_count:I

    return v0
.end method

.method public getReply_comment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->reply_comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_user_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->reply_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->times:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_level:I

    return v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_svip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_svip_level:I

    return v0
.end method

.method public getUser_vip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_vip_level:I

    return v0
.end method

.method public isHasPraised()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->hasPraised:Z

    return v0
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->content:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setHasPraised(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->hasPraised:Z

    return-void
.end method

.method public setHead_portrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->head_portrait:Ljava/lang/String;

    return-void
.end method

.method public setIs_hot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->is_hot:I

    return-void
.end method

.method public setMapping(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->mapping:Ljava/lang/String;

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPraise_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->praise_count:I

    return-void
.end method

.method public setReply_comment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->reply_comment_id:Ljava/lang/String;

    return-void
.end method

.method public setReply_user_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->reply_user_id:Ljava/lang/String;

    return-void
.end method

.method public setTimes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->times:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_id:Ljava/lang/String;

    return-void
.end method

.method public setUser_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_level:I

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setUser_svip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_svip_level:I

    return-void
.end method

.method public setUser_vip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean$Sub;->user_vip_level:I

    return-void
.end method
