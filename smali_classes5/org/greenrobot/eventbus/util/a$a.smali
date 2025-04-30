.class Lorg/greenrobot/eventbus/util/a$a;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/eventbus/util/a;->f(Lorg/greenrobot/eventbus/util/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/greenrobot/eventbus/util/a$c;

.field final synthetic b:Lorg/greenrobot/eventbus/util/a;


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/util/a;Lorg/greenrobot/eventbus/util/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/a$a;->b:Lorg/greenrobot/eventbus/util/a;

    iput-object p2, p0, Lorg/greenrobot/eventbus/util/a$a;->a:Lorg/greenrobot/eventbus/util/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/a$a;->a:Lorg/greenrobot/eventbus/util/a$c;

    invoke-interface {v0}, Lorg/greenrobot/eventbus/util/a$c;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    iget-object v1, p0, Lorg/greenrobot/eventbus/util/a$a;->b:Lorg/greenrobot/eventbus/util/a;

    invoke-static {v1}, Lorg/greenrobot/eventbus/util/a;->a(Lorg/greenrobot/eventbus/util/a;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3
    instance-of v1, v0, Lorg/greenrobot/eventbus/util/e;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, v0

    check-cast v1, Lorg/greenrobot/eventbus/util/e;

    iget-object v2, p0, Lorg/greenrobot/eventbus/util/a$a;->b:Lorg/greenrobot/eventbus/util/a;

    invoke-static {v2}, Lorg/greenrobot/eventbus/util/a;->b(Lorg/greenrobot/eventbus/util/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/greenrobot/eventbus/util/e;->b(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/util/a$a;->b:Lorg/greenrobot/eventbus/util/a;

    invoke-static {v1}, Lorg/greenrobot/eventbus/util/a;->c(Lorg/greenrobot/eventbus/util/a;)Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 6
    sget-object v1, Lorg/greenrobot/eventbus/c;->q:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create failure event"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
