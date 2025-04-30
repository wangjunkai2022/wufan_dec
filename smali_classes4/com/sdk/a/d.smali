.class public Lcom/sdk/a/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:J = 0xea60L

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lcom/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/b/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/sdk/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/sdk/a/g$a;->a:Lcom/sdk/a/g$a;

    .line 1
    iget-object v2, v2, Lcom/sdk/a/g$a;->l:Ljava/lang/String;

    .line 2
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x19000

    iput v0, p0, Lcom/sdk/a/d;->d:I

    iput v0, p0, Lcom/sdk/a/d;->d:I

    const-wide/32 v1, 0xea60

    sput-wide v1, Lcom/sdk/a/d;->a:J

    new-instance v1, Lcom/sdk/a/c;

    invoke-direct {v1, p0, v0}, Lcom/sdk/a/c;-><init>(Lcom/sdk/a/d;I)V

    iput-object v1, p0, Lcom/sdk/a/d;->c:Lcom/sdk/b/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sdk/a/d;->c:Lcom/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/sdk/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sdk/a/d;->c:Lcom/sdk/b/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sdk/a/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method
