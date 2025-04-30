.class Lcom/join/android/app/component/album/MyAlbumActivity$e;
.super Ljava/lang/Thread;
.source "MyAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyAlbumActivity;->Z0(Lcom/join/android/app/component/album/lib/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/a;

.field final synthetic b:Lcom/join/android/app/component/album/MyAlbumActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyAlbumActivity;Lcom/join/android/app/component/album/lib/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$e;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    iput-object p2, p0, Lcom/join/android/app/component/album/MyAlbumActivity$e;->a:Lcom/join/android/app/component/album/lib/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$e;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-static {v0}, Lcom/join/android/app/component/album/MyAlbumActivity;->M0(Lcom/join/android/app/component/album/MyAlbumActivity;)Lcom/join/android/app/component/album/lib/b;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$e;->a:Lcom/join/android/app/component/album/lib/a;

    invoke-virtual {v1}, Lcom/join/android/app/component/album/lib/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/b;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput v2, v1, Landroid/os/Message;->what:I

    .line 4
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$e;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    iget-object v0, v0, Lcom/join/android/app/component/album/MyAlbumActivity;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
