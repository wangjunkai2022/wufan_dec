.class public Lcom/ss/android/downloadlib/addownload/compliance/c;
.super Lcom/ss/android/socialbase/downloader/i/h;
.source "AppInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/compliance/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/android/socialbase/downloader/i/h<",
        "Ljava/lang/Long;",
        "Lcom/ss/android/downloadlib/addownload/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/compliance/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/c$a;->a()Lcom/ss/android/downloadlib/addownload/compliance/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/ss/android/downloadlib/addownload/b/b;
    .locals 0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/b/b;

    return-object p1
.end method

.method public a(JJ)Lcom/ss/android/downloadlib/addownload/b/b;
    .locals 1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/b/b;

    return-object p1
.end method

.method public a(Lcom/ss/android/downloadlib/addownload/b/b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/b;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
