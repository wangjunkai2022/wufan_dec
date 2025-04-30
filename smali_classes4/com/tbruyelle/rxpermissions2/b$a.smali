.class Lcom/tbruyelle/rxpermissions2/b$a;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Lw2/b;


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
        "Lw2/b<",
        "Ljava/lang/StringBuilder;",
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
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/b$a;->a:Lcom/tbruyelle/rxpermissions2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tbruyelle/rxpermissions2/b$a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, ", "

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method
