.class final Lcom/ss/android/downloadlib/g/h$2;
.super Ljava/lang/Object;
.source "InnerOpenAppUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g/h;->d(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/b/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/g/h$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g/h$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/downloadlib/g/h$2;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/h$2;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/downloadlib/g/h$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/g/h$2;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "m2_delay_millis"

    const/16 v5, 0x3e8

    .line 4
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/a;->a()Lcom/ss/android/downloadlib/a/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/downloadlib/g/h$2;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/ss/android/downloadlib/a/b/a;->a(Landroid/content/Context;Z)Z

    .line 6
    new-instance v4, Lcom/ss/android/downloadlib/a/b/b;

    invoke-direct {v4}, Lcom/ss/android/downloadlib/a/b/b;-><init>()V

    .line 7
    iput v2, v4, Lcom/ss/android/downloadlib/a/b/b;->a:I

    const/4 v5, 0x0

    .line 8
    iput v5, v4, Lcom/ss/android/downloadlib/a/b/b;->b:I

    const-string v6, "s"

    .line 9
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "v"

    .line 10
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    .line 11
    iget-object v7, p0, Lcom/ss/android/downloadlib/g/h$2;->b:Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/a;->a()Lcom/ss/android/downloadlib/a/b/a;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/downloadlib/a/b/a;->a(Lcom/ss/android/downloadlib/a/b/b;Lcom/ss/android/downloadlib/a/b/d;)V

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/a;->a()Lcom/ss/android/downloadlib/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadlib/a/b/a;->b()V

    .line 14
    iget-object v3, p0, Lcom/ss/android/downloadlib/g/h$2;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    const/4 v4, -0x1

    invoke-static {v3, v0, v4, v1}, Lcom/ss/android/downloadlib/g/h;->a(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    iget-object v3, p0, Lcom/ss/android/downloadlib/g/h$2;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-static {v3, v0, v2, v1}, Lcom/ss/android/downloadlib/g/h;->a(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    :goto_0
    return-void
.end method
