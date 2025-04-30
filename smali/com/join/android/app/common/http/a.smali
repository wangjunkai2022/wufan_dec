.class public Lcom/join/android/app/common/http/a;
.super Ljava/lang/Object;
.source "DNSAliData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/http/a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/http/a;->b:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/a;->a:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/a;->d:Ljava/util/List;

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/http/a;->c:I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/http/a;->b:I

    return-void
.end method
