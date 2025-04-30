.class Lcom/join/mgps/activity/TagAddActivity_$k;
.super Landroid/content/BroadcastReceiver;
.source "TagAddActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/TagAddActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagAddActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_$k;->a:Lcom/join/mgps/activity/TagAddActivity_;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_$k;->a:Lcom/join/mgps/activity/TagAddActivity_;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/TagAddActivity;->accountChange(Landroid/content/Intent;)V

    return-void
.end method
