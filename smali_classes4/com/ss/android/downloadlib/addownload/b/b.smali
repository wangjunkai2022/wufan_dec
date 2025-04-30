.class public Lcom/ss/android/downloadlib/addownload/b/b;
.super Ljava/lang/Object;
.source "AppInfoX.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/b;->h:Ljava/util/List;

    return-void
.end method

.method public static a(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/b/b;->a:J

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/b;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/b/b;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method
