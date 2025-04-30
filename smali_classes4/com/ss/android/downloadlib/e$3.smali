.class Lcom/ss/android/downloadlib/e$3;
.super Ljava/lang/Object;
.source "DownloadConfigureImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/e$3;->a:Lcom/ss/android/downloadlib/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Z)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v2, "disable_security_init"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/e;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
