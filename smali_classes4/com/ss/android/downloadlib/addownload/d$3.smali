.class Lcom/ss/android/downloadlib/addownload/d$3;
.super Ljava/lang/Object;
.source "CleanSpaceHelper.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d;->a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/addownload/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/e$b;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/d;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/d;Lcom/ss/android/downloadlib/addownload/e$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d$3;->b:Lcom/ss/android/downloadlib/addownload/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$3;->a:Lcom/ss/android/downloadlib/addownload/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$3;->b:Lcom/ss/android/downloadlib/addownload/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/downloadlib/addownload/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$3;->b:Lcom/ss/android/downloadlib/addownload/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/downloadlib/addownload/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$3;->b:Lcom/ss/android/downloadlib/addownload/d;

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/downloadlib/addownload/d;Ljava/util/Map;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "apk_size"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "available_space"

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/d$3;->a:Lcom/ss/android/downloadlib/addownload/e$b;

    invoke-interface {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/e$b;->a(J)V

    return-void
.end method
