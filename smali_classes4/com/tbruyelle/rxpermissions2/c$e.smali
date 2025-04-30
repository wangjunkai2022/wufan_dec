.class Lcom/tbruyelle/rxpermissions2/c$e;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lw2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/c;->p(Lio/reactivex/z;[Ljava/lang/String;)Lio/reactivex/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/o<",
        "Ljava/lang/Object;",
        "Lio/reactivex/z<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/tbruyelle/rxpermissions2/c;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/c;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/c$e;->b:Lcom/tbruyelle/rxpermissions2/c;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/c$e;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tbruyelle/rxpermissions2/c$e;->b:Lcom/tbruyelle/rxpermissions2/c;

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$e;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tbruyelle/rxpermissions2/c;->c(Lcom/tbruyelle/rxpermissions2/c;[Ljava/lang/String;)Lio/reactivex/z;

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
    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/c$e;->a(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
