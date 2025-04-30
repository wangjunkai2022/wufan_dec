.class Lcom/ss/android/downloadlib/addownload/g$3;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/g;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/g$3;->a:Lcom/ss/android/downloadlib/addownload/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g$3;->a:Lcom/ss/android/downloadlib/addownload/g;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/downloadlib/addownload/g;)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ss/android/downloadlib/d/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method
