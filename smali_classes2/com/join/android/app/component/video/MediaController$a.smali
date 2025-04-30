.class Lcom/join/android/app/component/video/MediaController$a;
.super Landroid/os/Handler;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/MediaController;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/MediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->a(Lcom/join/android/app/component/video/MediaController;)J

    move-result-wide v1

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->b(Lcom/join/android/app/component/video/MediaController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->g(Lcom/join/android/app/component/video/MediaController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x3e8

    .line 5
    rem-long/2addr v1, v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->h(Lcom/join/android/app/component/video/MediaController;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    :cond_2
    :goto_0
    return-void
.end method
