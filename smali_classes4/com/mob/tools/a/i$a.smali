.class abstract Lcom/mob/tools/a/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/i;
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
.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IJ)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/mob/tools/a/i$a;->f:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/mob/tools/a/i$a;->g:J

    .line 6
    iput-object p1, p0, Lcom/mob/tools/a/i$a;->e:Ljava/lang/Object;

    .line 7
    iput p2, p0, Lcom/mob/tools/a/i$a;->f:I

    .line 8
    iput-wide p3, p0, Lcom/mob/tools/a/i$a;->g:J

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
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;IJ)V

    return-void
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
