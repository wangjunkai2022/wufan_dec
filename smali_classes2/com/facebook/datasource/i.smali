.class public Lcom/facebook/datasource/i;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "SimpleDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    return-void
.end method

.method public static s()Lcom/facebook/datasource/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/datasource/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/i;

    invoke-direct {v0}, Lcom/facebook/datasource/i;-><init>()V

    return-object v0
.end method


# virtual methods
.method public m(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->m(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public o(F)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->o(F)Z

    move-result p1

    return p1
.end method

.method public setResult(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public setResult(Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method
