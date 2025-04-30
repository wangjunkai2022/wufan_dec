.class Lcom/join/mgps/fragment/f3$a;
.super Landroid/content/BroadcastReceiver;
.source "MGManageFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/f3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f3$a;->a:Lcom/join/mgps/fragment/f3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/f3$a;->a:Lcom/join/mgps/fragment/f3;

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/e3;->M(Landroid/content/Intent;)V

    return-void
.end method
