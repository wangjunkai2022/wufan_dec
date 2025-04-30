.class public abstract Lcom/join/android/app/mgsim/wufun/databinding/m4;
.super Landroidx/databinding/ViewDataBinding;
.source "BtVideoItemLayoutBinding.java"


# instance fields
.field public final E:Lcom/join/mgps/customview/DownloadViewStroke;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final F:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final G:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final H:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final I:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final J:Lcom/join/kotlin/domain/widget/CornersLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected K:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected n0:Lcom/join/android/app/component/video/c;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected o0:Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected p0:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/join/mgps/customview/DownloadViewStroke;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/kotlin/domain/widget/CornersLinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->E:Lcom/join/mgps/customview/DownloadViewStroke;

    .line 3
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->F:Landroid/widget/TextView;

    .line 4
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->H:Landroid/widget/TextView;

    .line 6
    iput-object p8, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->I:Landroid/widget/LinearLayout;

    .line 7
    iput-object p9, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->J:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    return-void
.end method

.method public static Z0(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/m4;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/m4;->a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/m4;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/m4;
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

    const v0, 0x7f0c00a8

    .line 1
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->h(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;

    return-object p0
.end method

.method public static f1(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/m4;
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

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/m4;->i1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/m4;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/m4;
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

    invoke-static {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/m4;->h1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/m4;

    move-result-object p0

    return-object p0
.end method

.method public static h1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/m4;
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

    const v0, 0x7f0c00a8

    .line 1
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;

    return-object p0
.end method

.method public static i1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/m4;
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

    const v0, 0x7f0c00a8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;

    return-object p0
.end method


# virtual methods
.method public b1()Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->o0:Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    return-object v0
.end method

.method public c1()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->K:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d1()Lcom/join/kotlin/ui/modleregin/modle/VideoModle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->p0:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    return-object v0
.end method

.method public e1()Lcom/join/android/app/component/video/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->n0:Lcom/join/android/app/component/video/c;

    return-object v0
.end method

.method public abstract j1(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
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

.method public abstract l1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/VideoModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract m1(Lcom/join/android/app/component/video/c;)V
    .param p1    # Lcom/join/android/app/component/video/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
