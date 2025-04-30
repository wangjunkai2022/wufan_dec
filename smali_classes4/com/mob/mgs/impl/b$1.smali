.class final Lcom/mob/mgs/impl/b$1;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mgs init, main p: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->b()V

    .line 5
    invoke-static {}, Lcom/mob/mgs/impl/c;->a()Lcom/mob/mgs/impl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/c;->b()V

    :cond_1
    return-void
.end method
