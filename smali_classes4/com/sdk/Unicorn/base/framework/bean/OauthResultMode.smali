.class public Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;

.field public object:Ljava/lang/Object;

.field public seq:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->code:I

    iput-object p2, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->msg:Ljava/lang/String;

    iput p3, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->status:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->code:I

    iput-object p2, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->msg:Ljava/lang/String;

    iput p3, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->status:I

    iput-object p4, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->object:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->seq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->status:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->msg:Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->object:Ljava/lang/Object;

    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->seq:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OauthResultMode{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", object="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->object:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", seq=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;->seq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
