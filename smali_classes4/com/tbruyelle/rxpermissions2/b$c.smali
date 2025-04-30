.class Lcom/tbruyelle/rxpermissions2/b$c;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Lw2/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/b;->a(Ljava/util/List;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/r<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tbruyelle/rxpermissions2/b;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/b$c;->a:Lcom/tbruyelle/rxpermissions2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/b$c;->a(Lcom/tbruyelle/rxpermissions2/b;)Z

    move-result p1

    return p1
.end method
