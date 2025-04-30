.class public Lcom/join/mgps/dto/RequestBbsCommentListArgs;
.super Ljava/lang/Object;
.source "RequestBbsCommentListArgs.java"


# instance fields
.field private commentId:Ljava/lang/Integer;

.field private page:Ljava/lang/Integer;

.field private pid:Ljava/lang/Integer;

.field private uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->commentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->pid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->uid:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->commentId:Ljava/lang/Integer;

    return-void
.end method

.method public setPage(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->page:Ljava/lang/Integer;

    return-void
.end method

.method public setPid(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->pid:Ljava/lang/Integer;

    return-void
.end method

.method public setUid(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->uid:Ljava/lang/Integer;

    return-void
.end method
