.class Lcom/join/mgps/fragment/v4$f;
.super Landroid/content/BroadcastReceiver;
.source "UserCenterFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/v4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v4$f;->a:Lcom/join/mgps/fragment/v4;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/v4$f;->a:Lcom/join/mgps/fragment/v4;

    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/u4;->updateInfo(Landroid/content/Context;)V

    return-void
.end method
