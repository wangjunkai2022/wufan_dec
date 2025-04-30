.class public abstract Lcom/join/android/app/mgsim/wufun/databinding/p8;
.super Landroidx/databinding/ViewDataBinding;
.source "CouponListItemLayoutBinding.java"


# instance fields
.field public final E:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final F:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final G:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final H:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final I:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final J:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final K:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final n0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected o0:Lcom/join/mgps/dto/BTGameCouponBean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected p0:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected q0:Lcom/join/kotlin/ui/coupon/ClickProxy;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->E:Landroid/widget/TextView;

    .line 3
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->F:Landroid/widget/TextView;

    .line 4
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->G:Landroid/view/View;

    .line 5
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    iput-object p8, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->I:Landroid/widget/TextView;

    .line 7
    iput-object p9, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->J:Landroid/widget/TextView;

    .line 8
    iput-object p10, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->K:Landroid/widget/TextView;

    .line 9
    iput-object p11, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->n0:Landroid/widget/TextView;

    return-void
.end method

.method public static Z0(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/p8;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/p8;->a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/p8;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/p8;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0111

    .line 1
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->h(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;

    return-object p0
.end method

.method public static e1(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/p8;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/p8;->h1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/p8;

    move-result-object p0

    return-object p0
.end method

.method public static f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/p8;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/p8;->g1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/p8;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/p8;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0111

    .line 1
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;

    return-object p0
.end method

.method public static h1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/p8;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0111

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;

    return-object p0
.end method


# virtual methods
.method public b1()Lcom/join/mgps/dto/BTGameCouponBean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->o0:Lcom/join/mgps/dto/BTGameCouponBean;

    return-object v0
.end method

.method public c1()Lcom/join/kotlin/ui/coupon/ClickProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->q0:Lcom/join/kotlin/ui/coupon/ClickProxy;

    return-object v0
.end method

.method public d1()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->p0:Ljava/lang/Boolean;

    return-object v0
.end method

.method public abstract i1(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract j1(Lcom/join/kotlin/ui/coupon/ClickProxy;)V
    .param p1    # Lcom/join/kotlin/ui/coupon/ClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract k1(Ljava/lang/Boolean;)V
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
