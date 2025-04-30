.class abstract Lcom/mob/tools/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
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
.field private a:[Ljava/lang/Object;

.field final synthetic b:Lcom/mob/tools/a/f;


# direct methods
.method public varargs constructor <init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/f$a;->b:Lcom/mob/tools/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/mob/tools/a/f$a;->a:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/a/f$a;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a/f$a;->a:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method abstract b([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
