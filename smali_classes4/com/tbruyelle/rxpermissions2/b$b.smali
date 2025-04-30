.class Lcom/tbruyelle/rxpermissions2/b$b;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Lw2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/b;->b(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/o<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tbruyelle/rxpermissions2/b;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/b$b;->a:Lcom/tbruyelle/rxpermissions2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

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
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/b$b;->a(Lcom/tbruyelle/rxpermissions2/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
