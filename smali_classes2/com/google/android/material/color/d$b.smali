.class Lcom/google/android/material/color/d$b;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:B

.field private final b:B

.field private final c:S

.field private final d:Ljava/lang/String;

.field private final e:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/material/color/d$b;->d:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/google/android/material/color/d$b;->e:I

    const p2, 0xffff

    and-int/2addr p2, p1

    int-to-short p2, p2

    .line 4
    iput-short p2, p0, Lcom/google/android/material/color/d$b;->c:S

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 5
    iput-byte p2, p0, Lcom/google/android/material/color/d$b;->b:B

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 6
    iput-byte p1, p0, Lcom/google/android/material/color/d$b;->a:B

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/d$b;)S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/google/android/material/color/d$b;->c:S

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/color/d$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/d$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/color/d$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/color/d$b;->e:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/color/d$b;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/google/android/material/color/d$b;->b:B

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/color/d$b;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/google/android/material/color/d$b;->a:B

    return p0
.end method
