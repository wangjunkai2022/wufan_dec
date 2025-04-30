.class final Lcom/ss/android/downloadlib/g/h$1;
.super Ljava/lang/Object;
.source "InnerOpenAppUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g/h;->b(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/b/e;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/g/h$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g/h$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/downloadlib/g/h$1;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "s"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "x"

    .line 4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/ss/android/downloadlib/g/h$1;->a:Ljava/lang/String;

    const-string v6, "p"

    invoke-static {v3, v6, v4}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v6, "i"

    invoke-static {v3, v6, v4}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "m"

    invoke-static {v3, v6, v4}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v4, p0, Lcom/ss/android/downloadlib/g/h$1;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/ss/android/downloadlib/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "im"

    invoke-static {v3, v7, v4}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v4, p0, Lcom/ss/android/downloadlib/g/h$1;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/ss/android/downloadlib/a/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "d"

    invoke-static {v3, v7, v4}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "t"

    .line 11
    invoke-static {v3, v4, v6}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->q()Lcom/ss/android/download/api/config/p;

    move-result-object v4

    array-length v6, v3

    invoke-interface {v4, v3, v6}, Lcom/ss/android/download/api/config/p;->a([BI)[B

    move-result-object v6

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->d()Lcom/ss/android/download/api/config/g;

    move-result-object v4

    new-instance v9, Lcom/ss/android/downloadlib/g/h$1$1;

    invoke-direct {v9, p0, v2, v0, v1}, Lcom/ss/android/downloadlib/g/h$1$1;-><init>(Lcom/ss/android/downloadlib/g/h$1;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "application/octet-stream;tt-data=a"

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/ss/android/download/api/config/g;->a(Ljava/lang/String;[BLjava/lang/String;ILcom/ss/android/download/api/config/q;)V

    return-void
.end method
