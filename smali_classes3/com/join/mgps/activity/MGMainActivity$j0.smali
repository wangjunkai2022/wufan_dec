.class Lcom/join/mgps/activity/MGMainActivity$j0;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->afterViewsInitData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$j0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$j0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->preloadingAD()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$j0;->a:Lcom/join/mgps/activity/MGMainActivity;

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$n0;

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$j0;->a:Lcom/join/mgps/activity/MGMainActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/activity/MGMainActivity$n0;-><init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/activity/MGMainActivity$k;)V

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$802(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/activity/MGMainActivity$n0;)Lcom/join/mgps/activity/MGMainActivity$n0;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$j0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$800(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/activity/MGMainActivity$n0;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$j0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$1000(Lcom/join/mgps/activity/MGMainActivity;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$j0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/q2;->a(Landroid/content/Context;)V

    return-void
.end method
