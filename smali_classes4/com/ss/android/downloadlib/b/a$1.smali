.class final Lcom/ss/android/downloadlib/b/a$1;
.super Ljava/lang/Object;
.source "AdAppLinkUtils.java"

# interfaces
.implements Lcom/ss/android/downloadlib/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/ss/android/downloadad/api/a/a;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/a$1;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/api/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "deeplink_success"

    goto :goto_0

    :cond_0
    const-string v1, "deeplink_failed"

    :goto_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/b/a$1;->a:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/api/a/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->t()Lcom/ss/android/download/api/config/r;

    move-result-object v4

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p1, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/api/a/a;

    .line 3
    invoke-interface {p1}, Lcom/ss/android/downloadad/api/a/a;->u()Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v6

    iget-object p1, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/api/a/a;

    invoke-interface {p1}, Lcom/ss/android/downloadad/api/a/a;->w()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v7

    iget-object p1, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/api/a/a;

    invoke-interface {p1}, Lcom/ss/android/downloadad/api/a/a;->v()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v8

    iget-object p1, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/api/a/a;

    .line 4
    invoke-interface {p1}, Lcom/ss/android/downloadad/api/a/a;->e()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 5
    invoke-interface/range {v4 .. v10}, Lcom/ss/android/download/api/config/r;->a(Landroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
