.class Lcom/join/mgps/service/CommonService_$n0;
.super Ljava/lang/Object;
.source "CommonService_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->d1(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

.field final synthetic d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic e:Z

.field final synthetic f:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$n0;->f:Lcom/join/mgps/service/CommonService_;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$n0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/service/CommonService_$n0;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/service/CommonService_$n0;->c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    iput-object p5, p0, Lcom/join/mgps/service/CommonService_$n0;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-boolean p6, p0, Lcom/join/mgps/service/CommonService_$n0;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$n0;->f:Lcom/join/mgps/service/CommonService_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$n0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService_$n0;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/service/CommonService_$n0;->c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    iget-object v4, p0, Lcom/join/mgps/service/CommonService_$n0;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-boolean v5, p0, Lcom/join/mgps/service/CommonService_$n0;->e:Z

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/service/CommonService_;->X1(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    return-void
.end method
