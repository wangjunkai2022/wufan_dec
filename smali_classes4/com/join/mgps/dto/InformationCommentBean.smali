.class public Lcom/join/mgps/dto/InformationCommentBean;
.super Ljava/lang/Object;
.source "InformationCommentBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/InformationCommentBean$Sub;
    }
.end annotation


# instance fields
.field private bolHaveCommit:Z

.field private collection_id:Ljava/lang/String;

.field private comment_id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private hasPraised:Z

.field private head_portrait:Ljava/lang/String;

.field private information_id:Ljava/lang/String;

.field private isTitle:Z

.field private is_hot:I

.field private mobile_phone_model:Ljava/lang/String;

.field private praise_count:Ljava/lang/String;

.field private reply_comment_id:Ljava/lang/String;

.field private reply_user_id:Ljava/lang/String;

.field private sub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean$Sub;",
            ">;"
        }
    .end annotation
.end field

.field private times:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_level:I

.field private user_name:Ljava/lang/String;

.field private user_svip_level:I

.field private user_vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->bolHaveCommit:Z

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->bolHaveCommit:Z

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getInformation_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->information_id:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->collection_id:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->comment_id:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_id:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_name:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->head_portrait:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->content:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->mobile_phone_model:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getTimes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->times:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->praise_count:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getReply_comment_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->reply_comment_id:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getReply_user_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->reply_user_id:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getIs_hot()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->is_hot:I

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->hasPraised:Z

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_level()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_level:I

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isTitle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->isTitle:Z

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_vip_level()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_vip_level:I

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_svip_level()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_svip_level:I

    .line 23
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->sub:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->sub:Ljava/util/List;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->sub:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getCollection_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->collection_id:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->head_portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getInformation_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->information_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_hot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->is_hot:I

    return v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->praise_count:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_comment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->reply_comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_user_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->reply_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean$Sub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->sub:Ljava/util/List;

    return-object v0
.end method

.method public getTimes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->times:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_level:I

    return v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_svip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_svip_level:I

    return v0
.end method

.method public getUser_vip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_vip_level:I

    return v0
.end method

.method public isBolHaveCommit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->bolHaveCommit:Z

    return v0
.end method

.method public isHasPraised()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->hasPraised:Z

    return v0
.end method

.method public isTitle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/InformationCommentBean;->isTitle:Z

    return v0
.end method

.method public setBolHaveCommit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->bolHaveCommit:Z

    return-void
.end method

.method public setCollection_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->collection_id:Ljava/lang/String;

    return-void
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setHasPraised(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->hasPraised:Z

    return-void
.end method

.method public setHead_portrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->head_portrait:Ljava/lang/String;

    return-void
.end method

.method public setInformation_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->information_id:Ljava/lang/String;

    return-void
.end method

.method public setIs_hot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->is_hot:I

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPraise_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->praise_count:Ljava/lang/String;

    return-void
.end method

.method public setReply_comment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->reply_comment_id:Ljava/lang/String;

    return-void
.end method

.method public setReply_user_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->reply_user_id:Ljava/lang/String;

    return-void
.end method

.method public setSub(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean$Sub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->sub:Ljava/util/List;

    return-void
.end method

.method public setTimes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->times:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->isTitle:Z

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_id:Ljava/lang/String;

    return-void
.end method

.method public setUser_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_level:I

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setUser_svip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_svip_level:I

    return-void
.end method

.method public setUser_vip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommentBean;->user_vip_level:I

    return-void
.end method
