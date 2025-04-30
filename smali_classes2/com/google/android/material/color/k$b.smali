.class public Lcom/google/android/material/color/k$b;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:[I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/google/android/material/color/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/google/android/material/color/k$b;->a:[I

    .line 3
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    iput v0, p0, Lcom/google/android/material/color/k$b;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/k$b;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/k$b;->a:[I

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/color/k$b;)Lcom/google/android/material/color/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/k$b;->b:Lcom/google/android/material/color/i;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/color/k$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/color/k$b;->c:I

    return p0
.end method


# virtual methods
.method public d()Lcom/google/android/material/color/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/k;-><init>(Lcom/google/android/material/color/k$b;Lcom/google/android/material/color/k$a;)V

    return-object v0
.end method

.method public e(I)Lcom/google/android/material/color/k$b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/k$b;->c:I

    return-object p0
.end method

.method public f(Lcom/google/android/material/color/i;)Lcom/google/android/material/color/k$b;
    .locals 0
    .param p1    # Lcom/google/android/material/color/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/k$b;->b:Lcom/google/android/material/color/i;

    return-object p0
.end method

.method public g([I)Lcom/google/android/material/color/k$b;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/k$b;->a:[I

    return-object p0
.end method
