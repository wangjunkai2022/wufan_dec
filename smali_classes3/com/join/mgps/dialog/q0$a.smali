.class Lcom/join/mgps/dialog/q0$a;
.super Landroid/os/Handler;
.source "ForumLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/q0$a;->a:Lcom/join/mgps/dialog/q0;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/q0$a;->a:Lcom/join/mgps/dialog/q0;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/q0;->c(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/q0$a;->a:Lcom/join/mgps/dialog/q0;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/q0;->c(I)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/q0$a;->a:Lcom/join/mgps/dialog/q0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/q0;->c(I)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/q0$a;->a:Lcom/join/mgps/dialog/q0;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/q0;->c(I)V

    :goto_0
    return-void
.end method
