.class Lcom/tbruyelle/rxpermissions2/c$b;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lio/reactivex/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/c;->d([Ljava/lang/String;)Lio/reactivex/f0;
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
        "Ljava/lang/Boolean;",
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
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/c$b;->b:Lcom/tbruyelle/rxpermissions2/c;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/c$b;->a:[Ljava/lang/String;

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$b;->b:Lcom/tbruyelle/rxpermissions2/c;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/c$b;->a:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tbruyelle/rxpermissions2/c;->b(Lcom/tbruyelle/rxpermissions2/c;Lio/reactivex/z;[Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$b;->a:[Ljava/lang/String;

    array-length v0, v0

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/z;->z(I)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/c$b$a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c$b$a;-><init>(Lcom/tbruyelle/rxpermissions2/c$b;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/z;->i2(Lw2/o;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
