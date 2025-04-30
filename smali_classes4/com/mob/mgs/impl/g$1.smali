.class final Lcom/mob/mgs/impl/g$1;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g;->a(Landroid/content/Context;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;ZLandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/mob/mgs/impl/g$1;->b:Z

    iput-object p3, p0, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "selfpush000"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GD][R]intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v3, "workId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v3, "appkey"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v3, "pkg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v3, "duid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v3, "guardId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v3, "acServiceType"

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/mob/mgs/impl/g$1;->a:Landroid/content/Intent;

    const-string v4, "busType"

    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GD][R]acSvcType: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", busType: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", fmAct: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/mob/mgs/impl/g$1;->b:Z

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", uld: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/mgs/impl/g;->a()Z

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    const/16 v12, 0x7d1

    if-ne v3, v12, :cond_0

    goto :goto_1

    :cond_0
    if-eq v2, v4, :cond_2

    const/16 v2, 0x7d2

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x64

    .line 12
    invoke-static {v0}, Lcom/mob/mgs/impl/g;->a(I)I

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x4

    .line 13
    invoke-static {v0}, Lcom/mob/mgs/impl/g;->a(I)I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    .line 14
    invoke-static {v0}, Lcom/mob/mgs/impl/g;->a(I)I

    .line 15
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/mob/mgs/impl/g$1;->b:Z

    if-nez v0, :cond_5

    .line 16
    invoke-static {}, Lcom/mob/mgs/impl/g;->b()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 17
    invoke-static {v4}, Lcom/mob/mgs/impl/g;->a(I)I

    .line 18
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 19
    new-instance v0, Lcom/mob/mgs/impl/g$1$1;

    invoke-direct {v0, p0, v1}, Lcom/mob/mgs/impl/g$1$1;-><init>(Lcom/mob/mgs/impl/g$1;Ljava/lang/String;)V

    invoke-static {v11, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 20
    :cond_6
    invoke-static {}, Lcom/mob/mgs/impl/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    invoke-static {v5}, Lcom/mob/mgs/impl/g;->a(Z)Z

    .line 22
    new-instance v0, Lcom/mob/mgs/impl/g$1$2;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/mob/mgs/impl/g$1$2;-><init>(Lcom/mob/mgs/impl/g$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    new-instance v0, Lcom/mob/mgs/impl/g$1$3;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/g$1$3;-><init>(Lcom/mob/mgs/impl/g$1;)V

    invoke-static {v11, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 25
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method
