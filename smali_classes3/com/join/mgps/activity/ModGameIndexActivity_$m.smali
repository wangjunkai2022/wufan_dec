.class Lcom/join/mgps/activity/ModGameIndexActivity_$m;
.super Ljava/lang/Object;
.source "ModGameIndexActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity_;->l2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field final synthetic c:Lcom/join/mgps/activity/ModGameIndexActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$m;->c:Lcom/join/mgps/activity/ModGameIndexActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$m;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$m;->b:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$m;->c:Lcom/join/mgps/activity/ModGameIndexActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$m;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$m;->b:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity_;->G2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void
.end method
