.class public final synthetic Lcom/join/mgps/Util/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/Util/z;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/y;->a:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/y;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/y;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/join/mgps/Util/y;->a:Lcom/join/mgps/Util/z;

    iget-object v1, p0, Lcom/join/mgps/Util/y;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/Util/y;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/z;->a(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method
