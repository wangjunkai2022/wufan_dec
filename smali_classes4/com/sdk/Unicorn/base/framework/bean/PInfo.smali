.class public Lcom/sdk/Unicorn/base/framework/bean/PInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public c:Ljava/lang/String;

.field public imei:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mac:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public os:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->imei:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public setC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->imei:Ljava/util/ArrayList;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->os:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sdk/l/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
