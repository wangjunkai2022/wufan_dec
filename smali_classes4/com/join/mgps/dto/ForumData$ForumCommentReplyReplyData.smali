.class public Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumCommentReplyReplyData"
.end annotation


# instance fields
.field private error_type:I

.field private msg:Ljava/lang/String;

.field private result:Z

.field private reward_exp:I

.field private reward_money:I

.field private rid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->error_type:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getReward_exp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->reward_exp:I

    return v0
.end method

.method public getReward_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->reward_money:I

    return v0
.end method

.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->rid:I

    return v0
.end method

.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->result:Z

    return v0
.end method

.method public setError_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->error_type:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->result:Z

    return-void
.end method

.method public setReward_exp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->reward_exp:I

    return-void
.end method

.method public setReward_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->reward_money:I

    return-void
.end method

.method public setRid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->rid:I

    return-void
.end method
