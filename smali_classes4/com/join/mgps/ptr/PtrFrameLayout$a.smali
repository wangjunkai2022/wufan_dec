.class Lcom/join/mgps/ptr/PtrFrameLayout$a;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/PtrFrameLayout;
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
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$a;->a:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$a;->a:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->a(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    return-void
.end method
