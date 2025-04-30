.class public final Lcom/join/mgps/Util/j0;
.super Lcom/join/mgps/Util/i0;
.source "ForumUtil_.java"


# static fields
.field private static p:Lcom/join/mgps/Util/j0;


# instance fields
.field private n:Landroid/content/Context;

.field private o:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/j0;->n:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/Util/i0;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/Util/j0;->n:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/Util/j0;->o:Ljava/lang/Object;

    return-void
.end method

.method public static I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/Util/j0;->p:Lcom/join/mgps/Util/j0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/j0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/j0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/join/mgps/Util/j0;->p:Lcom/join/mgps/Util/j0;

    .line 4
    invoke-direct {v1}, Lcom/join/mgps/Util/j0;->J1()V

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    .line 6
    :cond_0
    sget-object p0, Lcom/join/mgps/Util/j0;->p:Lcom/join/mgps/Util/j0;

    return-object p0
.end method

.method private J1()V
    .locals 0

    return-void
.end method
