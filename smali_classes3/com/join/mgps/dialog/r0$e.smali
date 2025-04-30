.class Lcom/join/mgps/dialog/r0$e;
.super Landroid/content/BroadcastReceiver;
.source "GDTAdVipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/r0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r0$e;->a:Lcom/join/mgps/dialog/r0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "vipLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "sVipLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    if-lez p1, :cond_1

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.wufun.finish.activity"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/dialog/r0$e;->a:Lcom/join/mgps/dialog/r0;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/r0$e;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {p1}, Lcom/join/mgps/dialog/r0;->f(Lcom/join/mgps/dialog/r0;)Lcom/join/mgps/dialog/r0$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/r0$e;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {p1}, Lcom/join/mgps/dialog/r0;->f(Lcom/join/mgps/dialog/r0;)Lcom/join/mgps/dialog/r0$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/dialog/r0$d;->onAdClose()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/r0$e;->a:Lcom/join/mgps/dialog/r0;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/r0;->dismiss()V

    :cond_1
    return-void
.end method
