.class public Lcom/papa/sim/statistic/b$a;
.super Ljava/lang/Object;
.source "APKUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/sim/statistic/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field final synthetic f:Lcom/papa/sim/statistic/b;


# direct methods
.method public constructor <init>(Lcom/papa/sim/statistic/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/b$a;->f:Lcom/papa/sim/statistic/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/b$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/b$a;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/b$a;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/b$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/b$a;->c:Ljava/lang/String;

    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/b$a;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/b$a;->d:Ljava/lang/String;

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/b$a;->b:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/b$a;->a:Ljava/lang/String;

    return-void
.end method
