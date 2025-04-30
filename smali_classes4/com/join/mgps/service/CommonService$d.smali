.class Lcom/join/mgps/service/CommonService$d;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->o(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/dto/AccountBean;

.field final synthetic e:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;ZLjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    iput-boolean p2, p0, Lcom/join/mgps/service/CommonService$d;->a:Z

    iput-object p3, p0, Lcom/join/mgps/service/CommonService$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/service/CommonService$d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/service/CommonService$d;->d:Lcom/join/mgps/dto/AccountBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PayGameDetialBean;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v1

    const-string v2, "gameData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/service/CommonService$d;->a:Z

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join,mgps.sim.sdkgamePayfinish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/k1;->c()Lcom/join/mgps/Util/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/service/CommonService$d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/service/CommonService$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/k1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/service/CommonService;->g1(Lcom/join/mgps/dto/CollectionBeanSub;Z)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    iget-object v3, p0, Lcom/join/mgps/service/CommonService$d;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getOrder_info()Lcom/join/mgps/dto/PayOrderInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/service/CommonService$d;->d:Lcom/join/mgps/dto/AccountBean;

    iget-boolean v6, p0, Lcom/join/mgps/service/CommonService$d;->a:Z

    iget-object v7, p0, Lcom/join/mgps/service/CommonService$d;->b:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/service/CommonService;->k1(Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/join/mgps/dto/AccountBean;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$d;->e:Lcom/join/mgps/service/CommonService;

    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
