.class Lcom/join/mgps/rpc/m$e$a;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "RpcPapaPayClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/rpc/m$e;->a([Lcom/join/mgps/dto/RequestAppDetialArgs;)Lcom/join/mgps/dto/ResultMainBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Lcom/join/mgps/dto/PayGameDetialBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/rpc/m$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/rpc/m$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/rpc/m$e$a;->a:Lcom/join/mgps/rpc/m$e;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
