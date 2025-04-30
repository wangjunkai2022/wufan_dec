.class Lcom/BaseFragmentActivity$n;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$n;->a:Lcom/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.wufun.unzip.failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/BaseFragmentActivity$n;->a:Lcom/BaseFragmentActivity;

    invoke-static {v0, p2, p1}, Lcom/BaseFragmentActivity;->access$300(Lcom/BaseFragmentActivity;Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/BaseFragmentActivity$n;->a:Lcom/BaseFragmentActivity;

    iget-boolean v0, p1, Lcom/BaseFragmentActivity;->isInBackground:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "gameid"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/BaseFragmentActivity;->access$400(Lcom/BaseFragmentActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
