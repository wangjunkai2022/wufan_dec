.class public Lcom/sdk/Unicorn/base/framework/bean/KInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public cn:Ljava/lang/String;

.field public ic:Ljava/lang/String;

.field public idfd:Z

.field public idfs:Z

.field public ie:Ljava/lang/String;

.field public is:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public sid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->cn:Ljava/lang/String;

    return-object v0
.end method

.method public getIc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->ic:Ljava/lang/String;

    return-object v0
.end method

.method public getIe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->ie:Ljava/lang/String;

    return-object v0
.end method

.method public getIs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->is:Ljava/lang/String;

    return-object v0
.end method

.method public getM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->sid:I

    return v0
.end method

.method public isIdfd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->idfd:Z

    return v0
.end method

.method public isIdfs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->idfs:Z

    return v0
.end method

.method public setCn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->cn:Ljava/lang/String;

    return-void
.end method

.method public setIc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->ic:Ljava/lang/String;

    return-void
.end method

.method public setIdfd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->idfd:Z

    return-void
.end method

.method public setIdfs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->idfs:Z

    return-void
.end method

.method public setIe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->ie:Ljava/lang/String;

    return-void
.end method

.method public setIs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->is:Ljava/lang/String;

    return-void
.end method

.method public setM(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->sid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sdk/l/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
