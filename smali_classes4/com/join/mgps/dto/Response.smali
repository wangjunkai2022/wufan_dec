.class public Lcom/join/mgps/dto/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private error_type:I

.field private msg:Ljava/lang/String;

.field private result:Z


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
    iget v0, p0, Lcom/join/mgps/dto/Response;->error_type:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Response;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/Response;->result:Z

    return v0
.end method

.method public setError_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/Response;->error_type:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Response;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/Response;->result:Z

    return-void
.end method
