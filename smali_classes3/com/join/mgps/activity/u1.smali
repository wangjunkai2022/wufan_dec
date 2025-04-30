.class public final synthetic Lcom/join/mgps/activity/u1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/join/mgps/customview/v$a;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/w1;

.field public final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/w1;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/u1;->a:Lcom/join/mgps/activity/w1;

    iput-object p2, p0, Lcom/join/mgps/activity/u1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/u1;->a:Lcom/join/mgps/activity/w1;

    iget-object v1, p0, Lcom/join/mgps/activity/u1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/w1;->b0(Lcom/join/mgps/activity/w1;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    return-void
.end method
