.class Lcom/join/mgps/activity/k2$p0;
.super Landroid/content/BroadcastReceiver;
.source "PapaMainV2Fragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/k2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/k2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/k2$p0;->a:Lcom/join/mgps/activity/k2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/k2$p0;->a:Lcom/join/mgps/activity/k2;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->C0(Landroid/content/Intent;)V

    return-void
.end method
