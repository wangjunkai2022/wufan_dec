.class Lcom/join/mgps/activity/g2$g0;
.super Landroid/content/BroadcastReceiver;
.source "PapaMainFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/g2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g2$g0;->a:Lcom/join/mgps/activity/g2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/g2$g0;->a:Lcom/join/mgps/activity/g2;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/f2;->q0(Landroid/content/Intent;)V

    return-void
.end method
