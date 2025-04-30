.class public Lcom/facebook/drawee/backends/pipeline/c;
.super Ljava/lang/Object;
.source "DraweeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/backends/pipeline/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lp0/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/facebook/drawee/backends/pipeline/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/drawee/backends/pipeline/c$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->a(Lcom/facebook/drawee/backends/pipeline/c$b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->a(Lcom/facebook/drawee/backends/pipeline/c$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->a(Ljava/util/List;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->a:Lcom/facebook/common/internal/ImmutableList;

    .line 5
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->b(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/common/internal/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->b(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/common/internal/k;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/facebook/common/internal/l;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/k;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->c:Lcom/facebook/common/internal/k;

    .line 8
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->c(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/drawee/backends/pipeline/g;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/c;->b:Lcom/facebook/drawee/backends/pipeline/g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/drawee/backends/pipeline/c$b;Lcom/facebook/drawee/backends/pipeline/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/c;-><init>(Lcom/facebook/drawee/backends/pipeline/c$b;)V

    return-void
.end method

.method public static d()Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/c$b;

    invoke-direct {v0}, Lcom/facebook/drawee/backends/pipeline/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/common/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lp0/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->a:Lcom/facebook/common/internal/ImmutableList;

    return-object v0
.end method

.method public b()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->c:Lcom/facebook/common/internal/k;

    return-object v0
.end method

.method public c()Lcom/facebook/drawee/backends/pipeline/g;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->b:Lcom/facebook/drawee/backends/pipeline/g;

    return-object v0
.end method
