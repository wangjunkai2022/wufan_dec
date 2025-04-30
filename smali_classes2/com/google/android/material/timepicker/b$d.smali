.class public final Lcom/google/android/material/timepicker/b$d;
.super Ljava/lang/Object;
.source "MaterialTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/google/android/material/timepicker/TimeModel;

.field private b:I

.field private c:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private d:Ljava/lang/CharSequence;

.field private e:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private f:Ljava/lang/CharSequence;

.field private g:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private h:Ljava/lang/CharSequence;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b$d;->a:Lcom/google/android/material/timepicker/TimeModel;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/material/timepicker/b$d;->c:I

    .line 4
    iput v0, p0, Lcom/google/android/material/timepicker/b$d;->e:I

    .line 5
    iput v0, p0, Lcom/google/android/material/timepicker/b$d;->g:I

    .line 6
    iput v0, p0, Lcom/google/android/material/timepicker/b$d;->i:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/timepicker/b$d;)Lcom/google/android/material/timepicker/TimeModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/b$d;->a:Lcom/google/android/material/timepicker/TimeModel;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/timepicker/b$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/timepicker/b$d;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/timepicker/b$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/timepicker/b$d;->c:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/timepicker/b$d;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/b$d;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/timepicker/b$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/timepicker/b$d;->e:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/timepicker/b$d;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/b$d;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/timepicker/b$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/timepicker/b$d;->g:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/material/timepicker/b$d;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/b$d;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/material/timepicker/b$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/timepicker/b$d;->i:I

    return p0
.end method


# virtual methods
.method public j()Lcom/google/android/material/timepicker/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/material/timepicker/b;->R(Lcom/google/android/material/timepicker/b$d;)Lcom/google/android/material/timepicker/b;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Lcom/google/android/material/timepicker/b$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/b$d;->a:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->h(I)V

    return-object p0
.end method

.method public l(I)Lcom/google/android/material/timepicker/b$d;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/b$d;->b:I

    return-object p0
.end method

.method public m(I)Lcom/google/android/material/timepicker/b$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/b$d;->a:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->i(I)V

    return-object p0
.end method

.method public n(I)Lcom/google/android/material/timepicker/b$d;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/b$d;->g:I

    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/b$d;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/b$d;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public p(I)Lcom/google/android/material/timepicker/b$d;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/b$d;->e:I

    return-object p0
.end method

.method public q(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/b$d;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/b$d;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public r(I)Lcom/google/android/material/timepicker/b$d;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/b$d;->i:I

    return-object p0
.end method

.method public s(I)Lcom/google/android/material/timepicker/b$d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/b$d;->a:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v0, Lcom/google/android/material/timepicker/TimeModel;->d:I

    .line 2
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->e:I

    .line 3
    new-instance v2, Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v2, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/timepicker/b$d;->a:Lcom/google/android/material/timepicker/TimeModel;

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/TimeModel;->i(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/timepicker/b$d;->a:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/TimeModel;->h(I)V

    return-object p0
.end method

.method public t(I)Lcom/google/android/material/timepicker/b$d;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/b$d;->c:I

    return-object p0
.end method

.method public u(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/b$d;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/b$d;->d:Ljava/lang/CharSequence;

    return-object p0
.end method
