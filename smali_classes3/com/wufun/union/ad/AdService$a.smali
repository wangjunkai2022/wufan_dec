.class Lcom/wufun/union/ad/AdService$a;
.super Landroid/os/Handler;
.source "AdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufun/union/ad/AdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/wufun/union/ad/AdService;


# direct methods
.method public constructor <init>(Lcom/wufun/union/ad/AdService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdService$a;->b:Lcom/wufun/union/ad/AdService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/wufun/union/ad/AdService$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ""

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fromPkg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    sget-object v3, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    sget-object v3, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 10
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 11
    :cond_5
    iget-object v1, p0, Lcom/wufun/union/ad/AdService$a;->b:Lcom/wufun/union/ad/AdService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/wufun/union/ad/AdService;->j(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/wufun/union/ad/AdService$a;->b:Lcom/wufun/union/ad/AdService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wufun/union/ad/AdService;->g(Landroid/os/Bundle;)V

    goto :goto_0

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/wufun/union/ad/AdService$a;->b:Lcom/wufun/union/ad/AdService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wufun/union/ad/AdService;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 14
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    if-nez p1, :cond_a

    .line 16
    sget-object p1, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_a
    sget-object v0, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/wufun/union/ad/AdService$a;->a:Landroid/content/Context;

    const-string v0, "smallGameStartSDK"

    const-string v2, "0"

    invoke-static {p1, v1, v0, v2}, Lcom/wufun/union/ad/AdService;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
