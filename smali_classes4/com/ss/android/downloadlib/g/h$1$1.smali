.class Lcom/ss/android/downloadlib/g/h$1$1;
.super Ljava/lang/Object;
.source "InnerOpenAppUtils.java"

# interfaces
.implements Lcom/ss/android/download/api/config/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ss/android/downloadlib/g/h$1;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g/h$1;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/g/h$1$1;->d:Lcom/ss/android/downloadlib/g/h$1;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g/h$1$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ss/android/downloadlib/g/h$1$1;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ss/android/downloadlib/g/h$1$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/h$1$1;->d:Lcom/ss/android/downloadlib/g/h$1;

    iget-object v1, v0, Lcom/ss/android/downloadlib/g/h$1;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/ss/android/downloadlib/g/h$1;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/ss/android/downloadlib/g/h$1;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v5, p0, Lcom/ss/android/downloadlib/g/h$1$1;->a:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/ss/android/downloadlib/g/h$1$1;->b:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/ss/android/downloadlib/g/h$1$1;->c:Ljava/lang/String;

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/h$1$1;->d:Lcom/ss/android/downloadlib/g/h$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/g/h$1;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/downloadlib/g/h$1$1;->d:Lcom/ss/android/downloadlib/g/h$1;

    iget-object v2, v2, Lcom/ss/android/downloadlib/g/h$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/g/h$1$1;->d:Lcom/ss/android/downloadlib/g/h$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/g/h$1;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/h$1$1;->a:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    const-string v1, "ttdownloader_message"

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/ss/android/downloadlib/g/h$1$1;->d:Lcom/ss/android/downloadlib/g/h$1;

    iget-object p1, p1, Lcom/ss/android/downloadlib/g/h$1;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, p0, Lcom/ss/android/downloadlib/g/h$1$1;->a:Lorg/json/JSONObject;

    const/4 v1, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/g/h;->a(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    return-void
.end method
