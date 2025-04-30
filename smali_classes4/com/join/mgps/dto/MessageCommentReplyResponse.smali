.class public Lcom/join/mgps/dto/MessageCommentReplyResponse;
.super Ljava/lang/Object;
.source "MessageCommentReplyResponse.java"


# instance fields
.field private result:Z

.field private rid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageCommentReplyResponse;->rid:I

    return v0
.end method

.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/MessageCommentReplyResponse;->result:Z

    return v0
.end method

.method public setResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/MessageCommentReplyResponse;->result:Z

    return-void
.end method

.method public setRid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageCommentReplyResponse;->rid:I

    return-void
.end method
