.class Lcom/join/mgps/service/CommonService$f;
.super Landroid/os/Handler;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->a1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$f;->a:Lcom/join/mgps/service/CommonService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/JoystickTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/JoystickTable;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/JoystickTable;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/db/tables/JoystickTable;->setMac(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/JoystickTable;->setTime(Ljava/lang/Long;)V

    .line 5
    invoke-static {}, Ln1/a0;->o()Ln1/a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$f;->a:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$f;->a:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$f;->a:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->Z(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/papa/controller/core/b;

    if-eqz v1, :cond_2

    .line 3
    check-cast v0, Lcom/papa/controller/core/b;

    .line 4
    invoke-virtual {v0}, Lcom/papa/controller/core/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/papa/controller/core/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/papa/controller/core/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$f;->a:Lcom/join/mgps/service/CommonService;

    invoke-static {v3, v2}, Lcom/join/mgps/service/CommonService;->k(Lcom/join/mgps/service/CommonService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/service/CommonService$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v1, v2, v0}, Lcom/join/mgps/service/CommonService$f;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
