.class Lcom/ss/android/a/c$a;
.super Ljava/lang/Object;
.source "TTMd5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/a/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/android/a/c$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/a/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/a/c$a;->a:I

    return p0
.end method

.method static synthetic a(Lcom/ss/android/a/c$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/a/c$a;->a:I

    return p1
.end method

.method static synthetic a(Lcom/ss/android/a/c$a;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ss/android/a/c$a;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/ss/android/a/c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/android/a/c$a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ss/android/a/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/a/c$a;->c:I

    return p0
.end method

.method static synthetic b(Lcom/ss/android/a/c$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/a/c$a;->b:I

    return p1
.end method

.method static synthetic c(Lcom/ss/android/a/c$a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/a/c$a;->c:I

    return p1
.end method

.method static synthetic c(Lcom/ss/android/a/c$a;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ss/android/a/c$a;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/ss/android/a/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/a/c$a;->b:I

    return p0
.end method

.method static synthetic e(Lcom/ss/android/a/c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/a/c$a;->e:Ljava/lang/String;

    return-object p0
.end method
