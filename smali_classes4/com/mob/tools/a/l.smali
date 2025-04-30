.class public Lcom/mob/tools/a/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/a/l;


# instance fields
.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/mob/tools/a/k;

.field private volatile d:Lcom/mob/tools/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/tools/a/l;

    invoke-direct {v0}, Lcom/mob/tools/a/l;-><init>()V

    sput-object v0, Lcom/mob/tools/a/l;->a:Lcom/mob/tools/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/tools/a/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/tools/a/l;->a:Lcom/mob/tools/a/l;

    iget-object v0, v0, Lcom/mob/tools/a/l;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/mob/tools/a/l;->a:Lcom/mob/tools/a/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/mob/tools/a/l;->b:Landroid/content/Context;

    .line 3
    :cond_0
    sget-object p0, Lcom/mob/tools/a/l;->a:Lcom/mob/tools/a/l;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/mob/tools/a/k;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mob/tools/a/l;->c:Lcom/mob/tools/a/k;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/mob/tools/a/l;->b()Lcom/mob/tools/a/k;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/l;->c:Lcom/mob/tools/a/k;

    return-object v0
.end method

.method public a(Lcom/mob/tools/a/k;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mob/tools/a/l;->c:Lcom/mob/tools/a/k;

    return-void
.end method

.method public b()Lcom/mob/tools/a/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/l;->d:Lcom/mob/tools/a/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/tools/a/e;

    iget-object v1, p0, Lcom/mob/tools/a/l;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/a/l;->d:Lcom/mob/tools/a/k;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/l;->d:Lcom/mob/tools/a/k;

    return-object v0
.end method
