.class public Lcom/heepay/plugin/domain/i;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/heepay/plugin/domain/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heepay/plugin/domain/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/heepay/plugin/domain/i;->c:I

    return-void
.end method

.method public a(Lcom/heepay/plugin/domain/a;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/domain/i;->d:Lcom/heepay/plugin/domain/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/domain/i;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heepay/plugin/domain/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/heepay/plugin/domain/i;->e:Ljava/util/List;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/heepay/plugin/domain/i;->a:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/domain/i;->f:Ljava/lang/String;

    return-void
.end method
