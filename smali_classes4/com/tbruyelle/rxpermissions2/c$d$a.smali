.class Lcom/tbruyelle/rxpermissions2/c$d$a;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lw2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/c$d;->a(Lio/reactivex/z;)Lio/reactivex/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/o<",
        "Ljava/util/List<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;",
        "Lio/reactivex/e0<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tbruyelle/rxpermissions2/c$d;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/c$d$a;->a:Lcom/tbruyelle/rxpermissions2/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;)",
            "Lio/reactivex/e0<",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/z;->b2()Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/b;

    invoke-direct {v0, p1}, Lcom/tbruyelle/rxpermissions2/b;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/c$d$a;->a(Ljava/util/List;)Lio/reactivex/e0;

    move-result-object p1

    return-object p1
.end method
