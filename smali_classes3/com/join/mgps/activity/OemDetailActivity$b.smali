.class Lcom/join/mgps/activity/OemDetailActivity$b;
.super Landroid/os/Handler;
.source "OemDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/OemDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/OemDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/OemDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$b;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$b;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/OemDetailActivity;->T0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$b;->a:Lcom/join/mgps/activity/OemDetailActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->a1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
