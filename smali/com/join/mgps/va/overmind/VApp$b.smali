.class final Lcom/join/mgps/va/overmind/VApp$b;
.super Ljava/lang/Object;
.source "VApp.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/va/overmind/VApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/va/overmind/VApp;


# direct methods
.method constructor <init>(Lcom/join/mgps/va/overmind/VApp;)V
    .locals 0

    iput-object p1, p0, Lcom/join/mgps/va/overmind/VApp$b;->a:Lcom/join/mgps/va/overmind/VApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/VApp;->e:Lcom/join/mgps/va/overmind/VApp$a;

    iget-object v1, p0, Lcom/join/mgps/va/overmind/VApp$b;->a:Lcom/join/mgps/va/overmind/VApp;

    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/VApp;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/VApp$a;->c(Z)V

    return-void
.end method
