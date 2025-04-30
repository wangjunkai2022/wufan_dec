.class Lcom/ss/android/downloadlib/f/a$3;
.super Ljava/lang/Object;
.source "AppInstallInvokeInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/guide/install/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/f/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/guide/install/a;

.field final synthetic b:Lcom/ss/android/downloadlib/f/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/f/a;Lcom/ss/android/downloadlib/guide/install/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/f/a$3;->b:Lcom/ss/android/downloadlib/f/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/f/a$3;->a:Lcom/ss/android/downloadlib/guide/install/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/f/a$3;->a:Lcom/ss/android/downloadlib/guide/install/a;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/guide/install/a;->a()V

    return-void
.end method
