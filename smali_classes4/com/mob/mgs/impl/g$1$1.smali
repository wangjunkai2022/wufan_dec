.class Lcom/mob/mgs/impl/g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/mgs/impl/g$1;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/g$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1$1;->b:Lcom/mob/mgs/impl/g$1;

    iput-object p2, p0, Lcom/mob/mgs/impl/g$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.mob.pushsdk.MobPush"

    .line 1
    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addGuardMessage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lcom/mob/mgs/impl/g$1$1;->a:Ljava/lang/String;

    aput-object v3, v2, p1

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :goto_0
    return p1
.end method
