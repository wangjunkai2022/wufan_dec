.class Lcom/facebook/datasource/g$a$a;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/facebook/datasource/g$a;


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/g$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/facebook/datasource/g$a$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/facebook/datasource/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    iget v1, p0, Lcom/facebook/datasource/g$a$a;->a:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/g$a;->t(Lcom/facebook/datasource/g$a;ILcom/facebook/datasource/c;)V

    return-void
.end method

.method public c(Lcom/facebook/datasource/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    iget v1, p0, Lcom/facebook/datasource/g$a$a;->a:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/g$a;->s(Lcom/facebook/datasource/g$a;ILcom/facebook/datasource/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    iget v1, p0, Lcom/facebook/datasource/g$a$a;->a:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/g$a;->t(Lcom/facebook/datasource/g$a;ILcom/facebook/datasource/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/datasource/g$a$a;->a:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/g$a$a;->b:Lcom/facebook/datasource/g$a;

    invoke-interface {p1}, Lcom/facebook/datasource/c;->getProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/datasource/AbstractDataSource;->o(F)Z

    :cond_0
    return-void
.end method
