.class public Lcom/join/mgps/business/RecomDatabeanBusiness;
.super Lcom/join/mgps/dto/RecomDatabean;
.source "RecomDatabeanBusiness.java"


# instance fields
.field private a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/dto/RecomDatabean;-><init>(Lcom/join/mgps/dto/RecomDatabean;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->c:J

    return-wide v0
.end method

.method public d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->b:Ljava/lang/String;

    return-void
.end method

.method public f(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->c:J

    return-void
.end method
