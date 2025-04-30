.class Lcom/join/mgps/activity/ModGameIndexActivity_$l;
.super Ljava/lang/Object;
.source "ModGameIndexActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity_;->a2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/activity/ModGameIndexActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$l;->b:Lcom/join/mgps/activity/ModGameIndexActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$l;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$l;->b:Lcom/join/mgps/activity/ModGameIndexActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$l;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_;->F2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method
