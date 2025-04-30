.class Lcom/wufun/union/ad/AdStubActivity$a;
.super Ljava/lang/Object;
.source "AdStubActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufun/union/ad/AdStubActivity;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufun/union/ad/AdStubActivity;


# direct methods
.method constructor <init>(Lcom/wufun/union/ad/AdStubActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdStubActivity$a;->a:Lcom/wufun/union/ad/AdStubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wufun/union/ad/AdStubActivity$a;->a:Lcom/wufun/union/ad/AdStubActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 2
    :cond_0
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 3
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x3

    .line 4
    iput v0, p2, Landroid/os/Message;->what:I

    .line 5
    iget-object v0, p0, Lcom/wufun/union/ad/AdStubActivity$a;->a:Lcom/wufun/union/ad/AdStubActivity;

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Lcom/wufun/union/ad/AdStubActivity;->a(Lcom/wufun/union/ad/AdStubActivity;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
