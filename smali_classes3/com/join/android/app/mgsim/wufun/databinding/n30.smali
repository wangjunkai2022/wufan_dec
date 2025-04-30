.class public abstract Lcom/join/android/app/mgsim/wufun/databinding/n30;
.super Landroidx/databinding/ViewDataBinding;
.source "ModUploadArchiveActivityBinding.java"


# instance fields
.field public final E:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final F:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final G:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final H:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final I:Lcom/google/android/material/textfield/TextInputEditText;
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

.field protected n0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected o0:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected p0:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected q0:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->E:Landroid/widget/LinearLayout;

    .line 3
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->F:Landroid/widget/ImageView;

    .line 4
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->G:Landroid/widget/ImageView;

    .line 5
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->H:Landroid/widget/ImageView;

    .line 6
    iput-object p8, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    .line 7
    iput-object p9, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->J:Landroid/widget/TextView;

    .line 8
    iput-object p10, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->K:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method

.method public static Z0(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/n30;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/n30;->a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/n30;
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

    const v0, 0x7f0c0491

    .line 1
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->h(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;

    return-object p0
.end method

.method public static f1(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/n30;
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

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/n30;->i1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/n30;
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

    invoke-static {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/n30;->h1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p0

    return-object p0
.end method

.method public static h1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/n30;
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

    const v0, 0x7f0c0491

    .line 1
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;

    return-object p0
.end method

.method public static i1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/n30;
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

    const v0, 0x7f0c0491

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;

    return-object p0
.end method


# virtual methods
.method public b1()Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->p0:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    return-object v0
.end method

.method public c1()Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->q0:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    return-object v0
.end method

.method public d1()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->o0:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public e1()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->n0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    return-object v0
.end method

.method public abstract j1(Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V
    .param p1    # Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract k1(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;)V
    .param p1    # Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract l1(Landroid/view/View$OnClickListener;)V
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract m1(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;)V
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
