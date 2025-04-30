.class public final synthetic Lcom/join/mgps/activity/p1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;

.field public final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/p1;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/p1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/p1;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/p1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->F0(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
