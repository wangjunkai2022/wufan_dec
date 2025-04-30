.class Lcom/join/mgps/activity/y1$s;
.super Landroid/content/BroadcastReceiver;
.source "MyGamePapaFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/y1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/y1$s;->a:Lcom/join/mgps/activity/y1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/y1$s;->a:Lcom/join/mgps/activity/y1;

    invoke-virtual {p1}, Lcom/join/mgps/activity/w1;->V0()V

    return-void
.end method
