.class abstract Lcom/mob/tools/a/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:J

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/mob/tools/a/e$a;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IJ)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/mob/tools/a/e$a;->d:I

    .line 5
    iput-object p1, p0, Lcom/mob/tools/a/e$a;->a:Ljava/lang/Object;

    .line 6
    iput p2, p0, Lcom/mob/tools/a/e$a;->d:I

    .line 7
    iput-wide p3, p0, Lcom/mob/tools/a/e$a;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mob/tools/a/e$a;-><init>(Ljava/lang/Object;IJ)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/a/e$a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a/e$a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/mob/tools/a/e$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/tools/a/e$a;->b:J

    return-wide v0
.end method


# virtual methods
.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
