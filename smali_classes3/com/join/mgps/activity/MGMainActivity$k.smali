.class Lcom/join/mgps/activity/MGMainActivity$k;
.super Landroid/os/Handler;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$k;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/RecomeWifiDatabean;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$k;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startShowRecommendwifi(Lcom/join/mgps/dto/RecomeWifiDatabean;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/RecomeWifiDatabean;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$k;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$000(Lcom/join/mgps/activity/MGMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$k;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->startShowRecommendwifi(Lcom/join/mgps/dto/RecomeWifiDatabean;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$k;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$100(Lcom/join/mgps/activity/MGMainActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    sub-long v3, v5, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-lez v1, :cond_3

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 8
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 9
    iput v2, v0, Landroid/os/Message;->what:I

    .line 10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$k;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->startShowRecommendwifi(Lcom/join/mgps/dto/RecomeWifiDatabean;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$k;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$002(Lcom/join/mgps/activity/MGMainActivity;Z)Z

    :goto_0
    return-void
.end method
