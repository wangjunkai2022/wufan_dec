.class public abstract Lcom/join/android/app/mgsim/wufun/databinding/je;
.super Landroidx/databinding/ViewDataBinding;
.source "EmusArchiveGameDetailListItemBinding.java"


# instance fields
.field public final E:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final F:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final G:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final H:Landroid/widget/ImageView;
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

.field public final K:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final n0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected o0:Lcom/join/mgps/dto/CloudListDataBean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected p0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->E:Landroid/widget/TextView;

    .line 3
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->F:Landroid/widget/RelativeLayout;

    .line 4
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->G:Landroid/widget/TextView;

    .line 5
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->H:Landroid/widget/ImageView;

    .line 6
    iput-object p8, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->I:Landroid/widget/TextView;

    .line 7
    iput-object p9, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->J:Landroid/widget/TextView;

    .line 8
    iput-object p10, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->K:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    iput-object p11, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->n0:Landroid/widget/TextView;

    return-void
.end method

.method public static Z0(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/je;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/je;->a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/je;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/je;
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

    const v0, 0x7f0c01ce

    .line 1
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->h(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/je;

    return-object p0
.end method

.method public static d1(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/je;
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

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/je;->g1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/je;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/je;
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

    invoke-static {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/je;->f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/je;

    move-result-object p0

    return-object p0
.end method

.method public static f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/je;
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

    const v0, 0x7f0c01ce

    .line 1
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/je;

    return-object p0
.end method

.method public static g1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/je;
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

    const v0, 0x7f0c01ce

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/je;

    return-object p0
.end method


# virtual methods
.method public b1()Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->p0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    return-object v0
.end method

.method public c1()Lcom/join/mgps/dto/CloudListDataBean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->o0:Lcom/join/mgps/dto/CloudListDataBean;

    return-object v0
.end method

.method public abstract h1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract i1(Lcom/join/mgps/dto/CloudListDataBean;)V
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
