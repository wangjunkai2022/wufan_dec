.class public Lcom/join/mgps/dto/CommentResponse;
.super Ljava/lang/Object;
.source "CommentResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:I

.field private data_info:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private succ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentResponse;->code:I

    return v0
.end method

.method public getData_info()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentResponse;->data_info:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSucc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentResponse;->succ:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentResponse;->code:I

    return-void
.end method

.method public setData_info(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentResponse;->data_info:Ljava/lang/Object;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentResponse;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSucc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentResponse;->succ:I

    return-void
.end method
