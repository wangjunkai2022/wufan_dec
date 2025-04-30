.class Lcom/papa/controller/component/inputmanagercompat/c$a;
.super Ljava/lang/Object;
.source "InputManagerV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/inputmanagercompat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/papa/controller/component/inputmanagercompat/c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/papa/controller/component/inputmanagercompat/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->d:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IILcom/papa/controller/component/inputmanagercompat/a$b;)Lcom/papa/controller/component/inputmanagercompat/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/controller/component/inputmanagercompat/c$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/controller/component/inputmanagercompat/c$a;

    invoke-direct {v0}, Lcom/papa/controller/component/inputmanagercompat/c$a;-><init>()V

    .line 3
    :cond_0
    iput p0, v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->a:I

    .line 4
    iput p1, v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->b:I

    .line 5
    iput-object p2, v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->c:Lcom/papa/controller/component/inputmanagercompat/a$b;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->c:Lcom/papa/controller/component/inputmanagercompat/a$b;

    iget v1, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->b:I

    invoke-interface {v0, v1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceRemoved(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->c:Lcom/papa/controller/component/inputmanagercompat/a$b;

    iget v1, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->b:I

    invoke-interface {v0, v1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceChanged(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->c:Lcom/papa/controller/component/inputmanagercompat/a$b;

    iget v1, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->b:I

    invoke-interface {v0, v1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceAdded(I)V

    .line 5
    :goto_0
    sget-object v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->d:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
