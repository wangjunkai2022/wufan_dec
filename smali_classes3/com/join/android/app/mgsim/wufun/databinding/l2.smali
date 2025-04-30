.class public Lcom/join/android/app/mgsim/wufun/databinding/l2;
.super Lcom/join/android/app/mgsim/wufun/databinding/k2;
.source "ActivityVasingleGameIndexBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final K0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final L0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final D0:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final E0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final F0:Lcom/join/android/app/mgsim/wufun/databinding/w3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final G0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final H0:Lcom/join/android/app/mgsim/wufun/databinding/xt;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final I0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private J0:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->K0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "bindding_load_layout_include"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x8

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v2, v2, [I

    const v4, 0x7f0c009e

    aput v4, v2, v5

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->L0:Landroid/util/SparseIntArray;

    const v1, 0x7f09096c

    const/16 v2, 0x9

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090941

    const/16 v2, 0xa

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09026d

    const/16 v2, 0xb

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090811

    const/16 v2, 0xc

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091133

    const/16 v2, 0xd

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091136

    const/16 v2, 0xe

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091134

    const/16 v2, 0xf

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091144

    const/16 v2, 0x10

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090dd3

    const/16 v2, 0x11

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09112f

    const/16 v2, 0x12

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090960

    const/16 v2, 0x13

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091182

    const/16 v2, 0x14

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09082a

    const/16 v2, 0x15

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091181

    const/16 v2, 0x16

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091180

    const/16 v2, 0x17

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090f0d

    const/16 v2, 0x18

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091280

    const/16 v2, 0x19

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->K0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/l2;->L0:Landroid/util/SparseIntArray;

    const/16 v2, 0x1a

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/l2;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xb

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v5, 0x2

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0xc

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0x15

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v8, 0xa

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x13

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v10, 0x9

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x6

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    aget-object v12, p3, v15

    check-cast v12, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v13, 0x11

    aget-object v13, p3, v13

    check-cast v13, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v14, 0x18

    aget-object v14, p3, v14

    check-cast v14, Lcom/google/android/material/tabs/TabLayout;

    const/16 v16, 0x3

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/16 v16, 0x12

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0xd

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0xf

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0xe

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0x10

    aget-object v20, p3, v20

    check-cast v20, Landroid/widget/TextView;

    const/16 v21, 0x17

    aget-object v21, p3, v21

    check-cast v21, Landroid/widget/TextView;

    const/16 v22, 0x16

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x14

    aget-object v23, p3, v23

    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x19

    aget-object v24, p3, v24

    check-cast v24, Landroidx/viewpager/widget/ViewPager;

    const/16 v25, 0x4

    move/from16 v3, v25

    invoke-direct/range {v0 .. v24}, Lcom/join/android/app/mgsim/wufun/databinding/k2;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager/widget/ViewPager;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/k2;->F:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/l2;->D0:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/l2;->E0:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 9
    aget-object v0, p3, v0

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/w3;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/l2;->F0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    .line 10
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->z0(Landroidx/databinding/ViewDataBinding;)V

    const/4 v0, 0x5

    .line 11
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/l2;->G0:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 13
    aget-object v3, p3, v0

    if-eqz v3, :cond_0

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/join/android/app/mgsim/wufun/databinding/xt;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/xt;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/l2;->H0:Lcom/join/android/app/mgsim/wufun/databinding/xt;

    .line 14
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/k2;->n0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/k2;->o0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/k2;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 17
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 18
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/l2;->I0:Landroid/view/View$OnClickListener;

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/l2;->invalidateAll()V

    return-void
.end method

.method private j1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private k1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private l1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private m1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/l2;->m1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/l2;->k1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/l2;->l1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 4
    :cond_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/l2;->j1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k2;->C0:Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->onClickView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public h1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/LoadBindClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k2;->B0:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public hasPendingBindings()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 3
    monitor-exit p0

    return v4

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->F0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i1(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k2;->C0:Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->F0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 5
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected k()V
    .locals 24

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/l2;->J0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/k2;->B0:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/k2;->C0:Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    const-wide/16 v7, 0x6f

    and-long/2addr v7, v2

    const-wide/16 v11, 0x64

    const-wide/16 v13, 0x62

    const-wide/16 v15, 0x61

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmp-long v19, v7, v4

    if-eqz v19, :cond_c

    and-long v7, v2, v15

    cmp-long v19, v7, v4

    if-eqz v19, :cond_1

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->getBackGroundURl()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v10

    .line 8
    :goto_0
    invoke-virtual {v1, v9, v7}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v7, v10

    :goto_1
    and-long v19, v2, v13

    const/4 v8, 0x1

    cmp-long v21, v19, v4

    if-eqz v21, :cond_3

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v19

    move-object/from16 v9, v19

    goto :goto_2

    :cond_2
    move-object v9, v10

    .line 11
    :goto_2
    invoke-virtual {v1, v8, v9}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_3

    .line 12
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/kotlin/domain/common/LoadBindindData;

    goto :goto_3

    :cond_3
    move-object v9, v10

    :goto_3
    and-long v20, v2, v11

    cmp-long v22, v20, v4

    if-eqz v22, :cond_5

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->getGameName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v20

    move-object/from16 v11, v20

    goto :goto_4

    :cond_4
    move-object v11, v10

    :goto_4
    const/4 v12, 0x2

    .line 14
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_5

    .line 15
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v11, v10

    :goto_5
    const-wide/16 v17, 0x68

    and-long v22, v2, v17

    cmp-long v12, v22, v4

    if-eqz v12, :cond_d

    if-eqz v6, :cond_6

    .line 16
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->getShowStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_6

    :cond_6
    move-object v6, v10

    :goto_6
    const/4 v12, 0x3

    .line 17
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_7

    .line 18
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object v6, v10

    .line 19
    :goto_7
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->s0(Ljava/lang/Integer;)I

    move-result v6

    if-ne v6, v8, :cond_8

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    cmp-long v6, v22, v4

    if-eqz v6, :cond_a

    if-eqz v8, :cond_9

    const-wide/16 v22, 0x100

    goto :goto_9

    :cond_9
    const-wide/16 v22, 0x80

    :goto_9
    or-long v2, v2, v22

    :cond_a
    if-eqz v8, :cond_b

    goto :goto_a

    :cond_b
    const/16 v6, 0x8

    goto :goto_b

    :cond_c
    move-object v7, v10

    move-object v9, v7

    move-object v11, v9

    :cond_d
    :goto_a
    const/4 v6, 0x0

    :goto_b
    const-wide/16 v22, 0x40

    and-long v22, v2, v22

    cmp-long v8, v22, v4

    if-eqz v8, :cond_e

    .line 20
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/k2;->F:Landroid/widget/ImageView;

    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/l2;->I0:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    and-long/2addr v13, v2

    cmp-long v8, v13, v4

    if-eqz v8, :cond_f

    .line 21
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/l2;->F0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v8, v9}, Lcom/join/android/app/mgsim/wufun/databinding/w3;->h1(Lcom/join/kotlin/domain/common/LoadBindindData;)V

    :cond_f
    const-wide/16 v8, 0x50

    and-long/2addr v8, v2

    cmp-long v12, v8, v4

    if-eqz v12, :cond_10

    .line 22
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/l2;->F0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v8, v0}, Lcom/join/android/app/mgsim/wufun/databinding/w3;->i1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    :cond_10
    const-wide/16 v8, 0x68

    and-long/2addr v8, v2

    cmp-long v0, v8, v4

    if-eqz v0, :cond_11

    .line 23
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/k2;->n0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    and-long v8, v2, v15

    cmp-long v0, v8, v4

    if-eqz v0, :cond_12

    .line 24
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/k2;->o0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v6, 0x0

    invoke-static {v0, v7, v10, v6}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_12
    const-wide/16 v6, 0x64

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_13

    .line 25
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/k2;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_13
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/l2;->F0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->n(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l2;->F0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x13

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/l2;->h1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/l2;->i1(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
