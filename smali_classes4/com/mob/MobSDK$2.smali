.class final Lcom/mob/MobSDK$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->canIContinueBusiness(Lcom/mob/commons/MobProduct;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/MobProduct;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mob/commons/MobProduct;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/MobSDK$2;->a:Lcom/mob/commons/MobProduct;

    iput-object p2, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "onFailure"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/mob/MobSDK$2;->a:Lcom/mob/commons/MobProduct;

    if-nez v3, :cond_0

    .line 2
    iget-object v3, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "MobProduct can not be null"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    invoke-static {v3, v0, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/Object;

    const-string v4, "onComplete"

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    .line 5
    :try_start_1
    iget-object v4, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v4, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method
