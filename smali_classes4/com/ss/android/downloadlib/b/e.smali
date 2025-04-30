.class public Lcom/ss/android/downloadlib/b/e;
.super Ljava/lang/Object;
.source "AppLinkMonitor.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/b/e$a;
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/ss/android/downloadlib/b/e;->a:J

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/b/e$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/b/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/b/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/b/e;->a:J

    return-wide v0
.end method

.method public static a()Lcom/ss/android/downloadlib/b/e;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/b/e$a;->a()Lcom/ss/android/downloadlib/b/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadlib/b/d;)V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/b/e;->a(Lcom/ss/android/downloadlib/b/d;J)V

    return-void
.end method

.method public a(Lcom/ss/android/downloadlib/b/d;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/b/e$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ss/android/downloadlib/b/e$1;-><init>(Lcom/ss/android/downloadlib/b/e;JLcom/ss/android/downloadlib/b/d;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/b/e;->a:J

    return-void
.end method

.method public b(Lcom/ss/android/downloadlib/b/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x4b0

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "check_an_result_delay"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    move v0, v1

    :cond_1
    int-to-long v0, v0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/b/e;->a(Lcom/ss/android/downloadlib/b/d;J)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
