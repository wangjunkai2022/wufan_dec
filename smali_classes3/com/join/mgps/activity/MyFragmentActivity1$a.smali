.class Lcom/join/mgps/activity/MyFragmentActivity1$a;
.super Landroid/content/BroadcastReceiver;
.source "MyFragmentActivity1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MyFragmentActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyFragmentActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyFragmentActivity1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyFragmentActivity1$a;->a:Lcom/join/mgps/activity/MyFragmentActivity1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MyFragmentActivity1$a;->a:Lcom/join/mgps/activity/MyFragmentActivity1;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MyFragmentActivity1;->check_version()V

    return-void
.end method
