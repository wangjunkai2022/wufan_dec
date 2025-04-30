.class Lcom/tbruyelle/rxpermissions2/c$c;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lio/reactivex/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/c;->e([Ljava/lang/String;)Lio/reactivex/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/f0<",
        "TT;",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/tbruyelle/rxpermissions2/c;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/c;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/c$c;->b:Lcom/tbruyelle/rxpermissions2/c;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/c$c;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/z;)Lio/reactivex/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Lio/reactivex/e0<",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$c;->b:Lcom/tbruyelle/rxpermissions2/c;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/c$c;->a:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tbruyelle/rxpermissions2/c;->b(Lcom/tbruyelle/rxpermissions2/c;Lio/reactivex/z;[Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
