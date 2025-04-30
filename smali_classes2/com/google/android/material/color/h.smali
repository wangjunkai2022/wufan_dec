.class public Lcom/google/android/material/color/h;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/h$c;
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/material/color/g$f;

.field private static final e:Lcom/google/android/material/color/g$e;


# instance fields
.field private final a:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private final b:Lcom/google/android/material/color/g$f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/google/android/material/color/g$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/color/h$a;

    invoke-direct {v0}, Lcom/google/android/material/color/h$a;-><init>()V

    sput-object v0, Lcom/google/android/material/color/h;->d:Lcom/google/android/material/color/g$f;

    .line 2
    new-instance v0, Lcom/google/android/material/color/h$b;

    invoke-direct {v0}, Lcom/google/android/material/color/h$b;-><init>()V

    sput-object v0, Lcom/google/android/material/color/h;->e:Lcom/google/android/material/color/g$e;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/color/h$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/material/color/h$c;->a(Lcom/google/android/material/color/h$c;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/h;->a:I

    .line 4
    invoke-static {p1}, Lcom/google/android/material/color/h$c;->b(Lcom/google/android/material/color/h$c;)Lcom/google/android/material/color/g$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/h;->b:Lcom/google/android/material/color/g$f;

    .line 5
    invoke-static {p1}, Lcom/google/android/material/color/h$c;->c(Lcom/google/android/material/color/h$c;)Lcom/google/android/material/color/g$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/h;->c:Lcom/google/android/material/color/g$e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/h$c;Lcom/google/android/material/color/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/h;-><init>(Lcom/google/android/material/color/h$c;)V

    return-void
.end method

.method static synthetic a()Lcom/google/android/material/color/g$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/h;->d:Lcom/google/android/material/color/g$f;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/material/color/g$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/h;->e:Lcom/google/android/material/color/g$e;

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/android/material/color/g$e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/h;->c:Lcom/google/android/material/color/g$e;

    return-object v0
.end method

.method public d()Lcom/google/android/material/color/g$f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/h;->b:Lcom/google/android/material/color/g$f;

    return-object v0
.end method

.method public e()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/color/h;->a:I

    return v0
.end method
