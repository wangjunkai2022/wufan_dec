.class final Lcom/ss/android/downloadlib/b/a$3;
.super Ljava/lang/Object;
.source "AdAppLinkUtils.java"

# interfaces
.implements Lcom/ss/android/downloadlib/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/b/e;

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/a$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b/a$3;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iput-object p3, p0, Lcom/ss/android/downloadlib/b/a$3;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 11

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/a$3;->a:Ljava/lang/String;

    const-string v1, "open_market"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/downloadlib/b/a$3;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/i;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/b/a$3;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "market_delay_success"

    goto :goto_0

    :cond_1
    const-string v1, "market_delay_failed"

    :goto_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/b/a$3;->c:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ss/android/downloadlib/b/a$3;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->t()Lcom/ss/android/download/api/config/r;

    move-result-object v4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p1, p0, Lcom/ss/android/downloadlib/b/a$3;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v6, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v7, p1, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    iget-object v8, p1, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    .line 5
    invoke-interface {v6}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 6
    invoke-interface/range {v4 .. v10}, Lcom/ss/android/download/api/config/r;->a(Landroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
