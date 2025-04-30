.class public Lcom/google/android/material/color/h$c;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private b:Lcom/google/android/material/color/g$f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/google/android/material/color/g$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/material/color/h;->a()Lcom/google/android/material/color/g$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/h$c;->b:Lcom/google/android/material/color/g$f;

    .line 3
    invoke-static {}, Lcom/google/android/material/color/h;->b()Lcom/google/android/material/color/g$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/h$c;->c:Lcom/google/android/material/color/g$e;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/h$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/color/h$c;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/color/h$c;)Lcom/google/android/material/color/g$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/h$c;->b:Lcom/google/android/material/color/g$f;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/color/h$c;)Lcom/google/android/material/color/g$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/h$c;->c:Lcom/google/android/material/color/g$e;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/google/android/material/color/h;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/h;-><init>(Lcom/google/android/material/color/h$c;Lcom/google/android/material/color/h$a;)V

    return-object v0
.end method

.method public e(Lcom/google/android/material/color/g$e;)Lcom/google/android/material/color/h$c;
    .locals 0
    .param p1    # Lcom/google/android/material/color/g$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/h$c;->c:Lcom/google/android/material/color/g$e;

    return-object p0
.end method

.method public f(Lcom/google/android/material/color/g$f;)Lcom/google/android/material/color/h$c;
    .locals 0
    .param p1    # Lcom/google/android/material/color/g$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/h$c;->b:Lcom/google/android/material/color/g$f;

    return-object p0
.end method

.method public g(I)Lcom/google/android/material/color/h$c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/h$c;->a:I

    return-object p0
.end method
