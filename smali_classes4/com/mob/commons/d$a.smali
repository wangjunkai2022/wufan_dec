.class Lcom/mob/commons/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/commons/d$a;->a:Z

    .line 3
    iput-object p1, p0, Lcom/mob/commons/d$a;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/mob/commons/d$a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mob/commons/d$a;->a:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mob/commons/d$a;->a:Z

    .line 8
    iput-object p1, p0, Lcom/mob/commons/d$a;->c:[B

    .line 9
    iput-object p2, p0, Lcom/mob/commons/d$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    :try_start_0
    const-class v0, Lcom/mob/tools/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v0, v4

    .line 3
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    if-eqz v10, :cond_0

    .line 5
    invoke-interface {v10}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lcom/mob/tools/b/b;

    if-ne v10, v11, :cond_0

    const/4 v1, 0x1

    move-object v1, v6

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/mob/commons/d$a;->a:Z

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/d$a;->c:[B

    iget-object v3, p0, Lcom/mob/commons/d$a;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/mob/commons/cc/a;->a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_4

    .line 8
    :cond_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/d$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/commons/d$a;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/mob/commons/cc/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/mob/commons/f;->b(ILjava/lang/Throwable;)V

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_4
    return-void
.end method
