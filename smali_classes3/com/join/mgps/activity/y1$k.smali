.class Lcom/join/mgps/activity/y1$k;
.super Landroid/content/BroadcastReceiver;
.source "MyGamePapaFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "gameId"


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/y1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/y1$k;->a:Lcom/join/mgps/activity/y1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p2, "gameId"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/y1$k;->a:Lcom/join/mgps/activity/y1;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/w1;->M0(Ljava/lang/String;)V

    return-void
.end method
