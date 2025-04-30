.class public Lcom/sdk/Unicorn/base/framework/bean/SInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public c:I

.field public cm:Ljava/lang/String;

.field public n:Ljava/lang/String;

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

    iget v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->c:I

    return v0
.end method

.method public getCm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->cm:Ljava/lang/String;

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public setC(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->c:I

    return-void
.end method

.method public setCm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->cm:Ljava/lang/String;

    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->v:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sdk/l/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
