.class Lcom/papa91/activity/EmuBaseActivity$PermissRecver;
.super Landroid/content/BroadcastReceiver;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissRecver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-boolean p1, p1, Lcom/papa91/activity/EmuBaseActivity;->isInBackground:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "permission"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-static {p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->access$900(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)V

    return-void
.end method
