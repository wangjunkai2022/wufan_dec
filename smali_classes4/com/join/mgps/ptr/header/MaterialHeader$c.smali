.class Lcom/join/mgps/ptr/header/MaterialHeader$c;
.super Ljava/lang/Object;
.source "MaterialHeader.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/header/MaterialHeader;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ptr/e;

.field final synthetic b:Lcom/join/mgps/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/MaterialHeader;Lcom/join/mgps/ptr/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$c;->b:Lcom/join/mgps/ptr/header/MaterialHeader;

    iput-object p2, p0, Lcom/join/mgps/ptr/header/MaterialHeader$c;->a:Lcom/join/mgps/ptr/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$c;->a:Lcom/join/mgps/ptr/e;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/e;->b()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
