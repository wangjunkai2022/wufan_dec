.class public final Lcom/join/android/app/mgsim/wufun/databinding/cj;
.super Ljava/lang/Object;
.source "GameDownloadRecomdActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final j:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final k:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final l:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final m:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final n:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final o:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final p:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final q:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final r:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final s:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/ImageView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/facebook/drawee/view/SimpleDraweeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->a:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->b:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->c:Landroid/widget/ImageView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->d:Landroid/widget/ImageView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->e:Landroid/widget/ImageView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->f:Landroid/widget/TextView;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->i:Landroid/widget/ImageView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->j:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->k:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->l:Landroid/widget/TextView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->m:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->n:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->o:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->p:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->q:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->r:Landroid/widget/LinearLayout;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->s:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/cj;
    .locals 23
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0900f9

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f090288

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f090289

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f09028a

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0903b0

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v1, 0x7f0903b9

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f090687

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v11, :cond_0

    const v1, 0x7f0906d7

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0909eb

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f090cf3

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_0

    const v1, 0x7f090dfc

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f090ea0

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f090f13

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f090f14

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f091001

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f09100f

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0912e3

    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/LinearLayout;

    if-eqz v21, :cond_0

    const v1, 0x7f0912f7

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/RelativeLayout;

    if-eqz v22, :cond_0

    .line 19
    new-instance v1, Lcom/join/android/app/mgsim/wufun/databinding/cj;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v22}, Lcom/join/android/app/mgsim/wufun/databinding/cj;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/ImageView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V

    return-object v1

    .line 20
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/cj;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/cj;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/cj;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/cj;
    .locals 2
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

    const v0, 0x7f0c0245

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/cj;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/cj;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/cj;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/cj;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
