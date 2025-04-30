.class Lcom/papa/sim/statistic/l$b;
.super Ljava/lang/Object;
.source "PlainHttpClient.java"

# interfaces
.implements Lcom/papa/sim/statistic/http/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/l;->b(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/papa/sim/statistic/http/a<",
        "Lcom/papa/sim/statistic/GameWorldResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/papa/sim/statistic/JoyStickConfig;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/l$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 5

    const-string p1, ""

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/l$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/papa/sim/statistic/db/d;

    invoke-direct {v1}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/d;->o(I)V

    .line 4
    sget-object v2, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v3}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/papa/sim/statistic/l$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    sget-object v2, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/db/b;->i(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/papa/sim/statistic/l$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/o;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lcom/papa/sim/statistic/GameWorldResponse;)V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-virtual {p1}, Lcom/papa/sim/statistic/GameWorldResponse;->getError()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa/sim/statistic/l$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/papa/sim/statistic/db/d;

    invoke-direct {v1}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/d;->o(I)V

    .line 5
    sget-object v2, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v3}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/papa/sim/statistic/l$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    sget-object v2, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/papa/sim/statistic/db/b;->i(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/papa/sim/statistic/l$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/o;

    move-result-object p1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/papa/sim/statistic/l$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v1, v0}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/sim/statistic/GameWorldResponse;

    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/l$b;->b(Lcom/papa/sim/statistic/GameWorldResponse;)V

    return-void
.end method
