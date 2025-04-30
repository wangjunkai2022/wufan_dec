.class Lcom/join/mgps/activity/a0$g0;
.super Landroid/content/BroadcastReceiver;
.source "GameDetialModleFourActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/a0$g0;->a:Lcom/join/mgps/activity/a0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/a0$g0;->a:Lcom/join/mgps/activity/a0;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/z;->y0(Landroid/content/Intent;)V

    return-void
.end method
