.class Lcom/papa91/activity/EmuBaseActivity$4;
.super Landroid/os/Handler;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$4;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->startAdActivity(II)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->startPrefecture(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->complainMsg(II)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->raseVipToMgsim(I)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity;->startBBK_GOINEE_sysAPP()V

    goto :goto_0

    .line 7
    :cond_5
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->access$700(Lcom/papa91/activity/EmuBaseActivity;)V

    goto :goto_0

    .line 8
    :cond_6
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    move-result-object v0

    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->selectSpAndCheat(I)V

    goto :goto_0

    .line 9
    :cond_7
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->startAPPActivity()V

    .line 10
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
