.class public Lcom/join/mgps/broadcast/NetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;
    }
.end annotation


# instance fields
.field public a:Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/broadcast/NetBroadcastReceiver;->a:Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/broadcast/NetBroadcastReceiver;->a:Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/e1;->b(Landroid/content/Context;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/broadcast/NetBroadcastReceiver;->a:Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
