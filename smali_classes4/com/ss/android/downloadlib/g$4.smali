.class Lcom/ss/android/downloadlib/g$4;
.super Ljava/lang/Object;
.source "TTDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

.field final synthetic d:Lcom/ss/android/download/api/download/DownloadModel;

.field final synthetic e:Lcom/ss/android/downloadlib/g;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g;Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/g$4;->e:Lcom/ss/android/downloadlib/g;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g$4;->a:Landroid/content/Context;

    iput p3, p0, Lcom/ss/android/downloadlib/g$4;->b:I

    iput-object p4, p0, Lcom/ss/android/downloadlib/g$4;->c:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iput-object p5, p0, Lcom/ss/android/downloadlib/g$4;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/g$4;->e:Lcom/ss/android/downloadlib/g;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->b(Lcom/ss/android/downloadlib/g;)Lcom/ss/android/downloadlib/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/g$4;->a:Landroid/content/Context;

    iget v2, p0, Lcom/ss/android/downloadlib/g$4;->b:I

    iget-object v3, p0, Lcom/ss/android/downloadlib/g$4;->c:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iget-object v4, p0, Lcom/ss/android/downloadlib/g$4;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/f;->a(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    return-void
.end method
