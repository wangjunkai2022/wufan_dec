.class Lcom/join/mgps/fragment/n$k;
.super Landroid/content/BroadcastReceiver;
.source "CloudListFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/n;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/n$k;->a:Lcom/join/mgps/fragment/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/n$k;->a:Lcom/join/mgps/fragment/n;

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/m;->j0(Landroid/content/Intent;)V

    return-void
.end method
