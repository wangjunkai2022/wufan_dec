.class Lcom/join/mgps/fragment/q0$d;
.super Ljava/lang/Object;
.source "ForumIndexFragment.java"

# interfaces
.implements Lcom/join/mgps/ptr/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q0$d;->a:Lcom/join/mgps/fragment/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->d(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/q0$d;->a:Lcom/join/mgps/fragment/q0;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/q0;->p0()V

    return-void
.end method
