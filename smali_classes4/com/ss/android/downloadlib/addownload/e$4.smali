.class Lcom/ss/android/downloadlib/addownload/e$4;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/download/api/config/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/e;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/e;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$4;->b:Lcom/ss/android/downloadlib/addownload/e;

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/addownload/e$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pBCD start download"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$4;->b:Lcom/ss/android/downloadlib/addownload/e;

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/e$4;->a:Z

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pBCD onDenied"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
