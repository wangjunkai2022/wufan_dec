.class public Lcom/sdk/Unicorn/base/framework/bean/AInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public c:I

.field public md5:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public pk:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getC()I
    .locals 1

    iget v0, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->c:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->pk:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public setC(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->c:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->md5:Ljava/lang/String;

    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public setPk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->pk:Ljava/lang/String;

    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->v:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sdk/l/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
