.class public Lcom/facebook/imagepipeline/systrace/b;
.super Ljava/lang/Object;
.source "FrescoSystrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/systrace/b$c;,
        Lcom/facebook/imagepipeline/systrace/b$b;,
        Lcom/facebook/imagepipeline/systrace/b$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/imagepipeline/systrace/b$b;

.field private static volatile b:Lcom/facebook/imagepipeline/systrace/b$d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/systrace/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/systrace/b$c;-><init>(Lcom/facebook/imagepipeline/systrace/b$a;)V

    sput-object v0, Lcom/facebook/imagepipeline/systrace/b;->a:Lcom/facebook/imagepipeline/systrace/b$b;

    .line 2
    sput-object v1, Lcom/facebook/imagepipeline/systrace/b;->b:Lcom/facebook/imagepipeline/systrace/b$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->d()Lcom/facebook/imagepipeline/systrace/b$d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/systrace/b$d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/facebook/imagepipeline/systrace/b$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->d()Lcom/facebook/imagepipeline/systrace/b$d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/systrace/b$d;->b(Ljava/lang/String;)Lcom/facebook/imagepipeline/systrace/b$b;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->d()Lcom/facebook/imagepipeline/systrace/b$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/systrace/b$d;->c()V

    return-void
.end method

.method private static d()Lcom/facebook/imagepipeline/systrace/b$d;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/systrace/b;->b:Lcom/facebook/imagepipeline/systrace/b$d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/facebook/imagepipeline/systrace/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/systrace/b;->b:Lcom/facebook/imagepipeline/systrace/b$d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/facebook/imagepipeline/systrace/a;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/systrace/a;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/systrace/b;->b:Lcom/facebook/imagepipeline/systrace/b$d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/imagepipeline/systrace/b;->b:Lcom/facebook/imagepipeline/systrace/b$d;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->d()Lcom/facebook/imagepipeline/systrace/b$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/systrace/b$d;->d()Z

    move-result v0

    return v0
.end method

.method public static f(Lcom/facebook/imagepipeline/systrace/b$d;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/facebook/imagepipeline/systrace/b;->b:Lcom/facebook/imagepipeline/systrace/b$d;

    return-void
.end method
