.class public Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;
.super Landroid/widget/LinearLayout;
.source "SwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

.field ll_elite_room:Landroid/view/View;

.field ll_standard_room:Landroid/view/View;

.field tv_elite_room_name:Landroid/widget/TextView;

.field tv_standard_room_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c05a0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090961

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    const p1, 0x7f090924

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    const p1, 0x7f0910f9

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_elite_room_name:Landroid/widget/TextView;

    const p1, 0x7f091184

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_standard_room_name:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090924

    const/4 v1, -0x1

    const-string v2, "#C1D0DD"

    const v3, 0x7f080c4a

    if-eq p1, v0, :cond_1

    const v0, 0x7f090961

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    const v0, 0x7f080c50

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_standard_room_name:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_elite_room_name:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;->onSwitchChanged(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;->onSwitchChanged(I)V

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    const v0, 0x7f080c51

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_standard_room_name:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_elite_room_name:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

    return-void
.end method

.method public switchPosition1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    const v1, 0x7f080c50

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    const v1, 0x7f080c4a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_standard_room_name:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_elite_room_name:Landroid/widget/TextView;

    const-string v1, "#C1D0DD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;->onSwitchChanged(I)V

    return-void
.end method
