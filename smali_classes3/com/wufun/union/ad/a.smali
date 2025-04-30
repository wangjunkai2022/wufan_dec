.class public Lcom/wufun/union/ad/a;
.super Ljava/lang/Object;
.source "AdCallback.java"

# interfaces
.implements Lcom/wufun/union/ad/AdChannel$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/wufun/union/ad/AdChannel;

.field private c:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wufun/union/ad/AdChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/wufun/union/ad/a;->b:Lcom/wufun/union/ad/AdChannel;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/a;->b:Lcom/wufun/union/ad/AdChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    sget-object v3, Lcom/wufun/union/ad/AdChannel$Type;->TT:Lcom/wufun/union/ad/AdChannel$Type;

    const/4 v4, 0x6

    if-ne v2, v3, :cond_0

    if-ne p1, v4, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/wufun/union/ad/AdChannel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufun/union/ad/a;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/wufun/union/ad/a;->b:Lcom/wufun/union/ad/AdChannel;

    invoke-virtual {v0, v1}, Lcom/wufun/union/ad/AdChannel;->k(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v3, Lcom/wufun/union/ad/AdChannel$Type;->GDT:Lcom/wufun/union/ad/AdChannel$Type;

    if-ne v2, v3, :cond_1

    if-ne p1, v4, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/wufun/union/ad/AdChannel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufun/union/ad/a;->c(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/wufun/union/ad/a;->b:Lcom/wufun/union/ad/AdChannel;

    invoke-virtual {v0, v1}, Lcom/wufun/union/ad/AdChannel;->k(I)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wufun/union/ad/a;->c:Landroid/os/Messenger;

    if-nez v0, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 10
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "action"

    const-string v4, "onAdChannelCallback"

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "event"

    .line 12
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "message"

    .line 13
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 15
    iput v1, v0, Landroid/os/Message;->what:I

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/wufun/union/ad/a;->c:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public b()Landroid/os/Messenger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/a;->c:Landroid/os/Messenger;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".action.commonService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action"

    const-string v2, "launchVGame"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroid/os/Messenger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/a;->c:Landroid/os/Messenger;

    return-void
.end method
