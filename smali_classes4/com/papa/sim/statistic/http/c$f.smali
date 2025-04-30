.class Lcom/papa/sim/statistic/http/c$f;
.super Lcom/papa/sim/statistic/http/b$p;
.source "RPCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa/sim/statistic/http/b$p<",
        "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/papa/sim/statistic/http/c$f;->c:Lcom/papa/sim/statistic/http/c;

    iput-object p2, p0, Lcom/papa/sim/statistic/http/c$f;->b:Lcom/papa/sim/statistic/http/a;

    invoke-direct {p0}, Lcom/papa/sim/statistic/http/b$p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/papa/sim/statistic/http/c$f;->b:Lcom/papa/sim/statistic/http/a;

    invoke-interface {p1, p2}, Lcom/papa/sim/statistic/http/a;->a(Ljava/lang/Exception;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/http/c$f;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"flag\":\"1\""

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\"flag\":1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/http/c$f;->b:Lcom/papa/sim/statistic/http/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/papa/sim/statistic/http/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa/sim/statistic/http/c$f;->b:Lcom/papa/sim/statistic/http/a;

    invoke-interface {v0, p1}, Lcom/papa/sim/statistic/http/a;->onSuccess(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
