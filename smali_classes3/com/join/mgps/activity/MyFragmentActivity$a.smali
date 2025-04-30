.class Lcom/join/mgps/activity/MyFragmentActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "MyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyFragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyFragmentActivity$a;->a:Lcom/join/mgps/activity/MyFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MyFragmentActivity$a;->a:Lcom/join/mgps/activity/MyFragmentActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MyFragmentActivity;->check_version()V

    return-void
.end method
