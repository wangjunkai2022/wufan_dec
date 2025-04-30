.class Lcom/mob/tools/a/g$68;
.super Lcom/mob/tools/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/g;->G()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/g$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/g;


# direct methods
.method varargs constructor <init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/g$68;->a:Lcom/mob/tools/a/g;

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/a/g$a;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/ArrayList;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "gpcmt"

    .line 1
    invoke-static {v0, p1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/tools/a/g$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method synthetic b(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mob/tools/a/g$68;->a(Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
