.class public Lcom/join/mgps/dto/BbsCommentListBean;
.super Ljava/lang/Object;
.source "BbsCommentListBean.java"


# instance fields
.field private avatar:Ljava/lang/String;

.field private commentId:Ljava/lang/Integer;

.field private createTime:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private isReplay:Z

.field private like:Ljava/lang/Integer;

.field private msg:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private pid:Ljava/lang/Integer;

.field private praise:Ljava/lang/Boolean;

.field private ravatar:Ljava/lang/String;

.field private replies:I

.field private reply:Ljava/lang/Integer;

.field private replyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;"
        }
    .end annotation
.end field

.field private rnickname:Ljava/lang/String;

.field private ruid:Ljava/lang/Integer;

.field private status:Ljava/lang/Integer;

.field private uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->isReplay:Z

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->commentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLike()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->like:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->pid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPraise()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->praise:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRavatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->ravatar:Ljava/lang/String;

    return-object v0
.end method

.method public getReplies()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->replies:I

    return v0
.end method

.method public getReply()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->reply:Ljava/lang/Integer;

    return-object v0
.end method

.method public getReplyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->replyList:Ljava/util/List;

    return-object v0
.end method

.method public getRnickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->rnickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRuid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->ruid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->uid:Ljava/lang/Integer;

    return-object v0
.end method

.method public isReplay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/BbsCommentListBean;->isReplay:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCommentId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->commentId:Ljava/lang/Integer;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLike(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->like:Ljava/lang/Integer;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->pid:Ljava/lang/Integer;

    return-void
.end method

.method public setPraise(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->praise:Ljava/lang/Boolean;

    return-void
.end method

.method public setRavatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->ravatar:Ljava/lang/String;

    return-void
.end method

.method public setReplay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->isReplay:Z

    return-void
.end method

.method public setReplies(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->replies:I

    return-void
.end method

.method public setReply(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->reply:Ljava/lang/Integer;

    return-void
.end method

.method public setReplyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->replyList:Ljava/util/List;

    return-void
.end method

.method public setRnickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->rnickname:Ljava/lang/String;

    return-void
.end method

.method public setRuid(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->ruid:Ljava/lang/Integer;

    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->status:Ljava/lang/Integer;

    return-void
.end method

.method public setUid(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BbsCommentListBean;->uid:Ljava/lang/Integer;

    return-void
.end method
