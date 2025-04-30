.class public Lcom/sdk/p/f;
.super Lcom/sdk/i/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/p/f$a;,
        Lcom/sdk/p/f$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sdk/i/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sdk/p/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sdk/p/f$a;"
        }
    .end annotation

    sget-object p1, Lcom/sdk/p/f$a;->c:Lcom/sdk/p/f$a;

    invoke-static {p0}, Lcom/sdk/p/a;->a(Landroid/content/Context;)Lcom/sdk/p/f$a;

    move-result-object p0

    return-object p0
.end method
