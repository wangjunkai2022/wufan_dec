.class public abstract Lcom/join/android/app/mgsim/wufun/databinding/x30;
.super Landroidx/databinding/ViewDataBinding;
.source "ModarchiveListLocalItemBinding.java"


# instance fields
.field public final E:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final F:Landroid/widget/ImageView;
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

.field public final J:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final K:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final n0:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final o0:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final p0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final q0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final r0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final s0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->E:Landroid/widget/TextView;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->F:Landroid/widget/ImageView;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->G:Landroid/widget/TextView;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->H:Landroid/widget/ImageView;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->I:Landroid/widget/TextView;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->J:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->K:Landroid/widget/TextView;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->n0:Landroid/widget/ImageView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->o0:Landroid/widget/ImageView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->p0:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->q0:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->r0:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->s0:Landroid/widget/TextView;

    return-void
.end method

.method public static Z0(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/x30;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/x30;->a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/x30;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Landroid/view/View;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/x30;
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

    const v0, 0x7f0c0495

    .line 1
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->h(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/x30;

    return-object p0
.end method

.method public static d1(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/x30;
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

    invoke-static {p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/x30;->g1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/x30;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/x30;
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

    invoke-static {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/x30;->f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/x30;

    move-result-object p0

    return-object p0
.end method

.method public static f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/x30;
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

    const v0, 0x7f0c0495

    .line 1
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/x30;

    return-object p0
.end method

.method public static g1(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/join/android/app/mgsim/wufun/databinding/x30;
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

    const v0, 0x7f0c0495

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/x30;

    return-object p0
.end method


# virtual methods
.method public b1()Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    return-object v0
.end method

.method public c1()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x30;->t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-object v0
.end method

.method public abstract h1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract i1(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
