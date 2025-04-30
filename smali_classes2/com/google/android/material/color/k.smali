.class public Lcom/google/android/material/color/k;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/k$b;
    }
.end annotation


# instance fields
.field private final a:[I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/google/android/material/color/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/material/color/k$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/material/color/k$b;->a(Lcom/google/android/material/color/k$b;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/k;->a:[I

    .line 4
    invoke-static {p1}, Lcom/google/android/material/color/k$b;->b(Lcom/google/android/material/color/k$b;)Lcom/google/android/material/color/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/k;->b:Lcom/google/android/material/color/i;

    .line 5
    invoke-static {p1}, Lcom/google/android/material/color/k$b;->c(Lcom/google/android/material/color/k$b;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/color/k;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/k$b;Lcom/google/android/material/color/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/k;-><init>(Lcom/google/android/material/color/k$b;)V

    return-void
.end method

.method public static a()Lcom/google/android/material/color/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/k$b;

    invoke-direct {v0}, Lcom/google/android/material/color/k$b;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/material/color/i;->c()Lcom/google/android/material/color/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/k$b;->f(Lcom/google/android/material/color/i;)Lcom/google/android/material/color/k$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/color/k$b;->d()Lcom/google/android/material/color/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/color/k;->c:I

    return v0
.end method

.method public c()Lcom/google/android/material/color/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/k;->b:Lcom/google/android/material/color/i;

    return-object v0
.end method

.method public d()[I
    .locals 1
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/k;->a:[I

    return-object v0
.end method

.method e(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/k;->b:Lcom/google/android/material/color/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/color/i;->e()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/color/k;->b:Lcom/google/android/material/color/i;

    invoke-virtual {p1}, Lcom/google/android/material/color/i;->e()I

    move-result p1

    :cond_0
    return p1
.end method
