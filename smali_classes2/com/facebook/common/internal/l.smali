.class public Lcom/facebook/common/internal/l;
.super Ljava/lang/Object;
.source "Suppliers.java"


# static fields
.field public static final a:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/common/internal/l$b;

    invoke-direct {v0}, Lcom/facebook/common/internal/l$b;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/l;->a:Lcom/facebook/common/internal/k;

    .line 2
    new-instance v0, Lcom/facebook/common/internal/l$c;

    invoke-direct {v0}, Lcom/facebook/common/internal/l$c;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/l;->b:Lcom/facebook/common/internal/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/common/internal/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/common/internal/l$a;

    invoke-direct {v0, p0}, Lcom/facebook/common/internal/l$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
