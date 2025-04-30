.class Lcom/join/mgps/ptr/PtrFrameLayout$b;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lcom/join/mgps/ptr/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ptr/PtrFrameLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$b;->a:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$b;->a:Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "mRefreshCompleteHook resume."

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$b;->a:Lcom/join/mgps/ptr/PtrFrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->b(Lcom/join/mgps/ptr/PtrFrameLayout;Z)V

    return-void
.end method
