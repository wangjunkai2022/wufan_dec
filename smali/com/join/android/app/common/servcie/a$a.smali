.class Lcom/join/android/app/common/servcie/a$a;
.super Landroid/os/Handler;
.source "DownloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/android/app/common/servcie/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/a;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/a$a;->b:Lcom/join/android/app/common/servcie/a;

    iput-object p2, p0, Lcom/join/android/app/common/servcie/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/event/l;

    iget-object v1, p0, Lcom/join/android/app/common/servcie/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method
