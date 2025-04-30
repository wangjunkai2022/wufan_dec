.class final Lcom/ss/android/socialbase/downloader/f/i$1;
.super Ljava/lang/Object;
.source "Segment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/f/i;->a(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ss/android/socialbase/downloader/f/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/i;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ss/android/socialbase/downloader/f/i;

    check-cast p2, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/i$1;->a(Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/i;)I

    move-result p1

    return p1
.end method
