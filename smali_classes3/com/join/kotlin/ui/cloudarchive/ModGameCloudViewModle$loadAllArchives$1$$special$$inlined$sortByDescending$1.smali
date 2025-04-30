.class public final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1$$special$$inlined$sortByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 ModGameCloudViewModle.kt\ncom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1\n*L\n1#1,320:1\n106#2,9:321\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0010\u0008\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "T",
        "kotlin.jvm.PlatformType",
        "a",
        "b",
        "",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1$$special$$inlined$sortByDescending$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7ffffffe

    const v3, 0x7fffffff

    if-eqz v0, :cond_0

    int-to-long v4, v3

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1$$special$$inlined$sortByDescending$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;

    iget-wide v4, v4, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->$archiveId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-long v4, v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAddTime()J

    move-result-wide v4

    .line 5
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-long v0, v3

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1$$special$$inlined$sortByDescending$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;

    iget-wide v3, v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->$archiveId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    int-to-long v0, v2

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAddTime()J

    move-result-wide v0

    .line 9
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
