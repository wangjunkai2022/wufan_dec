.class Lcom/join/mgps/Util/UtilsMy$x;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/mgps/dialog/r0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->Y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/papa91/wrapper/UserPrefs;

.field final synthetic f:I

.field final synthetic g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Lcom/papa91/wrapper/UserPrefs;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$x;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$x;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$x;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/mgps/Util/UtilsMy$x;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/Util/UtilsMy$x;->e:Lcom/papa91/wrapper/UserPrefs;

    iput p6, p0, Lcom/join/mgps/Util/UtilsMy$x;->f:I

    iput p7, p0, Lcom/join/mgps/Util/UtilsMy$x;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$x;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$x;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$x;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/Util/UtilsMy$x;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v4, p0, Lcom/join/mgps/Util/UtilsMy$x;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$x;->e:Lcom/papa91/wrapper/UserPrefs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$x;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$x;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    return-void
.end method
