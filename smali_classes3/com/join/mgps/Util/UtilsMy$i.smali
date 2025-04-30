.class Lcom/join/mgps/Util/UtilsMy$i;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/mgps/dialog/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/join/mgps/dialog/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;Lcom/join/mgps/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$i;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$i;->c:Ljava/util/List;

    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$i;->d:I

    iput p5, p0, Lcom/join/mgps/Util/UtilsMy$i;->e:I

    iput-object p6, p0, Lcom/join/mgps/Util/UtilsMy$i;->f:Landroid/content/Context;

    iput-object p7, p0, Lcom/join/mgps/Util/UtilsMy$i;->g:Lcom/join/mgps/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$i;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$i;->c:Ljava/util/List;

    iget v3, p0, Lcom/join/mgps/Util/UtilsMy$i;->d:I

    iget v4, p0, Lcom/join/mgps/Util/UtilsMy$i;->e:I

    iget-object v5, p0, Lcom/join/mgps/Util/UtilsMy$i;->f:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/UtilsMy;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$i;->g:Lcom/join/mgps/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
