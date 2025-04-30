.class public abstract Lcom/join/android/app/mgsim/wufun/databinding/ko;
.super Landroidx/databinding/ViewDataBinding;
.source "ImageShowDialogBinding.java"


# instance fields
.field public final E:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final F:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final G:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final H:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final I:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final J:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected K:Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected n0:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->E:Landroid/widget/ImageView;

    .line 3
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->F:Landroid/widget/ImageView;

    .line 4
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->H:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iput-object p8, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->I:Landroid/widget/LinearLayout;

    .line 7
    iput-object p9, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->J:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static Z0(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/ko;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ko;->a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/ko;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/ko;
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

    const v0, 0x7f0c02d0

    .line 1
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->h(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;

    return-object p0
.end method

.method public static d1(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/ko;
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

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ko;->g1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/ko;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/ko;
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

    invoke-static {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ko;->f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/ko;

    move-result-object p0

    return-object p0
.end method

.method public static f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/ko;
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

    const v0, 0x7f0c02d0

    .line 1
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;

    return-object p0
.end method

.method public static g1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/ko;
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

    const v0, 0x7f0c02d0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;

    return-object p0
.end method


# virtual methods
.method public b1()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->n0:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public c1()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->K:Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;

    return-object v0
.end method

.method public abstract h1(Landroid/view/View$OnClickListener;)V
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract i1(Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;)V
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
