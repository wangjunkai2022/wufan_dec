.class Lcom/join/mgps/fragment/i3$y;
.super Landroid/content/BroadcastReceiver;
.source "MyArchiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "y"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$y;->a:Lcom/join/mgps/fragment/i3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$y;->a:Lcom/join/mgps/fragment/i3;

    iget-boolean p2, p1, Lcom/join/mgps/fragment/i3;->o0:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
