.class Lcom/join/mgps/Util/UtilsMy$z;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/mgps/dialog/r0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->t3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/papa91/wrapper/UserPrefs;

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa91/wrapper/UserPrefs;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$z;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$z;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$z;->c:Lcom/papa91/wrapper/UserPrefs;

    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$z;->d:I

    iput p5, p0, Lcom/join/mgps/Util/UtilsMy$z;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$z;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$z;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->Y(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$z;->c:Lcom/papa91/wrapper/UserPrefs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$z;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$z;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    return-void
.end method
