.class Lcom/mob/tools/utils/DeviceHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DeviceHelper;->getBatteryState(Lcom/mob/tools/utils/ReflectHelper$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/ReflectHelper$a;

.field final synthetic b:Lcom/mob/tools/utils/DeviceHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/ReflectHelper$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$1;->b:Lcom/mob/tools/utils/DeviceHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$1;->a:Lcom/mob/tools/utils/ReflectHelper$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$1;->a:Lcom/mob/tools/utils/ReflectHelper$a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-interface {v0, p1}, Lcom/mob/tools/utils/ReflectHelper$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method
