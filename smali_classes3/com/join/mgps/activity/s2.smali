.class public final synthetic Lcom/join/mgps/activity/s2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/ShareWebActivity$n;

.field public final synthetic b:Lcom/join/mgps/dto/NetBattleStartGameDto;

.field public final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/s2;->a:Lcom/join/mgps/activity/ShareWebActivity$n;

    iput-object p2, p0, Lcom/join/mgps/activity/s2;->b:Lcom/join/mgps/dto/NetBattleStartGameDto;

    iput-object p3, p0, Lcom/join/mgps/activity/s2;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/join/mgps/activity/s2;->a:Lcom/join/mgps/activity/ShareWebActivity$n;

    iget-object v1, p0, Lcom/join/mgps/activity/s2;->b:Lcom/join/mgps/dto/NetBattleStartGameDto;

    iget-object v2, p0, Lcom/join/mgps/activity/s2;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ShareWebActivity$n;->a(Lcom/join/mgps/activity/ShareWebActivity$n;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method
