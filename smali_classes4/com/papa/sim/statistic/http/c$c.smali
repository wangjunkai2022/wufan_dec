.class Lcom/papa/sim/statistic/http/c$c;
.super Lcom/papa/sim/statistic/http/b$p;
.source "RPCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/c;->j(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa/sim/statistic/http/b$p<",
        "Lcom/papa/sim/statistic/GameWorldResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/sim/statistic/http/a;

.field final synthetic c:Lcom/papa/sim/statistic/http/c;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/c$c;->c:Lcom/papa/sim/statistic/http/c;

    iput-object p2, p0, Lcom/papa/sim/statistic/http/c$c;->b:Lcom/papa/sim/statistic/http/a;

    invoke-direct {p0}, Lcom/papa/sim/statistic/http/b$p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/papa/sim/statistic/http/c$c;->b:Lcom/papa/sim/statistic/http/a;

    invoke-interface {p1, p2}, Lcom/papa/sim/statistic/http/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/sim/statistic/GameWorldResponse;

    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/http/c$c;->f(Lcom/papa/sim/statistic/GameWorldResponse;)V

    return-void
.end method

.method public f(Lcom/papa/sim/statistic/GameWorldResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/c$c;->b:Lcom/papa/sim/statistic/http/a;

    invoke-interface {v0, p1}, Lcom/papa/sim/statistic/http/a;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
