.class public Lcom/join/mgps/customview/SmartScrollView;
.super Landroid/widget/ScrollView;
.source "SmartScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SmartScrollView$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/join/mgps/customview/SmartScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/SmartScrollView;->a:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/SmartScrollView;->b:Z

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SmartScrollView;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SmartScrollView;->c:Lcom/join/mgps/customview/SmartScrollView$a;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/join/mgps/customview/SmartScrollView$a;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/SmartScrollView;->b:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/SmartScrollView;->c:Lcom/join/mgps/customview/SmartScrollView$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/join/mgps/customview/SmartScrollView$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SmartScrollView;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SmartScrollView;->a:Z

    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 2
    iput-boolean p4, p0, Lcom/join/mgps/customview/SmartScrollView;->a:Z

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/SmartScrollView;->b:Z

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/join/mgps/customview/SmartScrollView;->a:Z

    .line 5
    iput-boolean p4, p0, Lcom/join/mgps/customview/SmartScrollView;->b:Z

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/customview/SmartScrollView;->c()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setScanScrollChangedListener(Lcom/join/mgps/customview/SmartScrollView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SmartScrollView;->c:Lcom/join/mgps/customview/SmartScrollView$a;

    return-void
.end method
