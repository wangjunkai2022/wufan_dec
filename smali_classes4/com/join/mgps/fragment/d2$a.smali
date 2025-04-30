.class Lcom/join/mgps/fragment/d2$a;
.super Ljava/lang/Object;
.source "FriendMsgLikeFragment.java"

# interfaces
.implements Lcom/join/mgps/ptr/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/d2;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/d2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/d2$a;->a:Lcom/join/mgps/fragment/d2;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/d2$a;->a:Lcom/join/mgps/fragment/d2;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/d2;->W()V

    return-void
.end method
