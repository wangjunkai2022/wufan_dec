.class public Lcom/join/android/app/mgsim/wufun/databinding/w30;
.super Lcom/join/android/app/mgsim/wufun/databinding/v30;
.source "ModarchiveListLocalItem2BindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final J0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final K0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final A0:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final B0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final C0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final D0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final E0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final F0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final G0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final H0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private I0:J

.field private final v0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x0:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final y0:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final z0:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/w30;->K0:Landroid/util/SparseIntArray;

    const v1, 0x7f090a2e

    const/16 v2, 0x11

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090a7b

    const/16 v2, 0x12

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903ab

    const/16 v2, 0x13

    .line 4
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/w30;->J0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->K0:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/w30;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x3

    .line 2
    aget-object v4, p3, v15

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x9

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0xa

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x13

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v14, 0x6

    aget-object v8, p3, v14

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x11

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v10, 0x12

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0x10

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/ImageView;

    const/4 v12, 0x7

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0x8

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v16, 0xe

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v14, v16

    const/16 v16, 0xc

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/4 v3, 0x4

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lcom/join/android/app/mgsim/wufun/databinding/v30;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->v0:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 10
    aget-object v3, p3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->w0:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 12
    aget-object v3, p3, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->x0:Landroid/view/View;

    .line 13
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xd

    .line 14
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->y0:Landroid/widget/RelativeLayout;

    .line 15
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xf

    .line 16
    aget-object v3, p3, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->z0:Landroid/view/View;

    .line 17
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 18
    aget-object v4, p3, v3

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->A0:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x5

    .line 20
    aget-object v5, p3, v4

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->B0:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->n0:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->o0:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->p0:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->q0:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 26
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->r0:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 27
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/v30;->s0:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 28
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 29
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v4}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->C0:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->D0:Landroid/view/View$OnClickListener;

    .line 31
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->E0:Landroid/view/View$OnClickListener;

    .line 32
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->F0:Landroid/view/View$OnClickListener;

    .line 33
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->G0:Landroid/view/View$OnClickListener;

    .line 34
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/w30;->H0:Landroid/view/View$OnClickListener;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/w30;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v2, p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickMore(Landroid/view/View;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_7

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 5
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 6
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_7

    .line 7
    :pswitch_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 8
    invoke-interface {p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->uploadCloud()V

    goto :goto_7

    .line 9
    :pswitch_3
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 10
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 11
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickDislike(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_7

    .line 12
    :pswitch_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 13
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    .line 14
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onPraise(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_7

    .line 15
    :pswitch_5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 16
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickImage(Ljava/lang/String;)V

    :cond_7
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->u0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

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
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i1(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x11

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected k()V
    .locals 33

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->I0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->t0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const-wide/16 v6, 0x5

    and-long v8, v2, v6

    const/16 v12, 0x8

    cmp-long v15, v8, v4

    if-eqz v15, :cond_27

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    move-result v15

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v16

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    move-result v17

    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    move-result v18

    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object v19

    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    move-result v20

    .line 12
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    move-result v21

    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v22

    .line 14
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    move-result v23

    .line 15
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowText()Ljava/lang/String;

    move-result-object v24

    .line 16
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getDownloadCount()I

    move-result v25

    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowType()I

    move-result v26

    .line 18
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAddTime()J

    move-result-wide v27

    .line 19
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v0

    move-object/from16 v13, v16

    move/from16 v14, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v4, v26

    move-wide/from16 v28, v27

    goto :goto_0

    :cond_0
    move-wide/from16 v28, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ne v15, v12, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 20
    :goto_1
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    if-ne v14, v5, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-nez v19, :cond_3

    const/16 v30, 0x1

    goto :goto_3

    :cond_3
    const/16 v30, 0x0

    :goto_3
    if-ne v10, v5, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 21
    :goto_4
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    if-ne v6, v5, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    .line 22
    :goto_5
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    const-wide/16 v26, 0x0

    cmp-long v31, v28, v26

    if-eqz v31, :cond_7

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    .line 23
    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    cmp-long v31, v8, v26

    if-eqz v31, :cond_9

    if-eqz v15, :cond_8

    const-wide/16 v8, 0x1000

    goto :goto_8

    :cond_8
    const-wide/16 v8, 0x800

    :goto_8
    or-long/2addr v2, v8

    :cond_9
    const-wide/16 v8, 0x5

    and-long v23, v2, v8

    cmp-long v31, v23, v26

    if-eqz v31, :cond_b

    if-eqz v14, :cond_a

    const-wide/16 v23, 0x100

    goto :goto_9

    :cond_a
    const-wide/16 v23, 0x80

    :goto_9
    or-long v2, v2, v23

    :cond_b
    and-long v23, v2, v8

    cmp-long v31, v23, v26

    if-eqz v31, :cond_d

    if-eqz v30, :cond_c

    const-wide/16 v23, 0x400

    goto :goto_a

    :cond_c
    const-wide/16 v23, 0x200

    :goto_a
    or-long v2, v2, v23

    :cond_d
    and-long v23, v2, v8

    cmp-long v31, v23, v26

    if-eqz v31, :cond_f

    if-eqz v10, :cond_e

    const-wide/32 v23, 0x10000

    goto :goto_b

    :cond_e
    const-wide/32 v23, 0x8000

    :goto_b
    or-long v2, v2, v23

    :cond_f
    and-long v23, v2, v8

    cmp-long v31, v23, v26

    if-eqz v31, :cond_11

    if-eqz v6, :cond_10

    const-wide/32 v23, 0x400000

    goto :goto_c

    :cond_10
    const-wide/32 v23, 0x200000

    :goto_c
    or-long v2, v2, v23

    :cond_11
    and-long v23, v2, v8

    cmp-long v31, v23, v26

    if-eqz v31, :cond_13

    if-eqz v4, :cond_12

    const-wide/32 v23, 0x100000

    goto :goto_d

    :cond_12
    const-wide/32 v23, 0x80000

    :goto_d
    or-long v2, v2, v23

    :cond_13
    and-long v31, v2, v8

    cmp-long v8, v31, v26

    if-eqz v8, :cond_15

    if-eqz v5, :cond_14

    const-wide/32 v8, 0x40000

    goto :goto_e

    :cond_14
    const-wide/32 v8, 0x20000

    :goto_e
    or-long/2addr v2, v8

    :cond_15
    const/4 v8, 0x0

    if-eqz v13, :cond_16

    .line 24
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :cond_16
    const-wide/16 v23, 0x5

    and-long v31, v2, v23

    const-wide/16 v26, 0x0

    cmp-long v9, v31, v26

    if-eqz v9, :cond_18

    if-eqz v8, :cond_17

    const-wide/32 v31, 0x1000000

    goto :goto_f

    :cond_17
    const-wide/32 v31, 0x800000

    :goto_f
    or-long v2, v2, v31

    .line 25
    :cond_18
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->q0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v15, :cond_19

    const v15, 0x7f08084d

    goto :goto_10

    :cond_19
    const v15, 0x7f08081d

    :goto_10
    invoke-static {v9, v15}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v14, :cond_1a

    const/4 v14, 0x0

    goto :goto_11

    :cond_1a
    const/16 v14, 0x8

    :goto_11
    if-eqz v30, :cond_1b

    const/16 v15, 0x8

    goto :goto_12

    :cond_1b
    const/4 v15, 0x0

    :goto_12
    if-eqz v10, :cond_1c

    .line 26
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->o0:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f0802db

    goto :goto_13

    :cond_1c
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->o0:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f0802da

    :goto_13
    invoke-static {v10, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v6, :cond_1d

    .line 27
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->F:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v12, 0x7f080385

    goto :goto_14

    :cond_1d
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->F:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v12, 0x7f080384

    :goto_14
    invoke-static {v6, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v8, :cond_1e

    const/16 v8, 0x8

    goto :goto_15

    :cond_1e
    const/4 v8, 0x0

    :goto_15
    if-eqz v13, :cond_1f

    .line 28
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16

    :cond_1f
    const/4 v0, 0x0

    :goto_16
    const-wide/32 v12, 0x80005

    and-long/2addr v12, v2

    const-wide/16 v26, 0x0

    cmp-long v31, v12, v26

    if-eqz v31, :cond_21

    if-eqz v0, :cond_20

    const-wide/16 v12, 0x10

    goto :goto_17

    :cond_20
    const-wide/16 v12, 0x8

    :goto_17
    or-long/2addr v2, v12

    :cond_21
    const-wide/16 v12, 0x5

    and-long v31, v2, v12

    cmp-long v12, v31, v26

    if-eqz v12, :cond_23

    if-eqz v0, :cond_22

    const-wide/16 v12, 0x40

    or-long/2addr v2, v12

    const-wide/16 v12, 0x4000

    goto :goto_18

    :cond_22
    const-wide/16 v12, 0x20

    or-long/2addr v2, v12

    const-wide/16 v12, 0x2000

    :goto_18
    or-long/2addr v2, v12

    :cond_23
    if-eqz v0, :cond_24

    const/16 v12, 0x8

    goto :goto_19

    :cond_24
    const/4 v12, 0x0

    :goto_19
    if-eqz v0, :cond_25

    const/4 v13, 0x0

    goto :goto_1a

    :cond_25
    const/16 v13, 0x8

    :goto_1a
    if-eqz v0, :cond_26

    .line 29
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-wide/from16 v31, v2

    const v2, 0x7f080815

    goto :goto_1b

    :cond_26
    move-wide/from16 v31, v2

    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080814

    :goto_1b
    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v21, v10

    move-object/from16 v20, v17

    move-object/from16 v10, v19

    move-wide/from16 v2, v31

    const-wide/32 v31, 0x40000

    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v7, v22

    move v9, v8

    move v8, v12

    move-object v12, v11

    move-object/from16 v11, v25

    goto :goto_1c

    :cond_27
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v28, 0x0

    const-wide/32 v31, 0x40000

    :goto_1c
    and-long v31, v2, v31

    const-wide/16 v25, 0x0

    cmp-long v22, v31, v25

    if-eqz v22, :cond_28

    const-wide/16 v31, 0x3e8

    mul-long v28, v28, v31

    .line 30
    invoke-static/range {v28 .. v29}, Lcom/join/mgps/Util/x;->o(J)Ljava/lang/String;

    move-result-object v22

    goto :goto_1d

    :cond_28
    const/16 v22, 0x0

    :goto_1d
    const-wide/16 v23, 0x5

    and-long v23, v2, v23

    cmp-long v27, v23, v25

    if-eqz v27, :cond_2a

    if-eqz v4, :cond_29

    const/16 v30, 0x8

    goto :goto_1e

    :cond_29
    move/from16 v30, v8

    :goto_1e
    move/from16 v4, v30

    goto :goto_1f

    :cond_2a
    const/4 v4, 0x0

    :goto_1f
    cmp-long v27, v23, v25

    if-eqz v27, :cond_2c

    if-eqz v5, :cond_2b

    goto :goto_20

    :cond_2b
    const-string v22, ""

    :goto_20
    move-object/from16 v5, v22

    goto :goto_21

    :cond_2c
    const/4 v5, 0x0

    :goto_21
    cmp-long v22, v23, v25

    if-eqz v22, :cond_2d

    move-wide/from16 v22, v2

    .line 31
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->E:Landroid/widget/TextView;

    invoke-static {v2, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->F:Landroid/widget/ImageView;

    invoke-static {v2, v6}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->G:Landroid/widget/TextView;

    invoke-static {v2, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 34
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->I:Landroid/widget/TextView;

    invoke-static {v2, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->w0:Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->x0:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->y0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 38
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->z0:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->A0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->A0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v10, v2, v3}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->B0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->n0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->o0:Landroid/widget/ImageView;

    move-object/from16 v10, v21

    invoke-static {v0, v10}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->p0:Landroid/widget/TextView;

    move-object/from16 v2, v20

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->q0:Landroid/widget/TextView;

    move-object/from16 v9, v19

    invoke-static {v0, v9}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->q0:Landroid/widget/TextView;

    move-object/from16 v7, v17

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->s0:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_22

    :cond_2d
    move-wide/from16 v22, v2

    :goto_22
    const-wide/16 v2, 0x4

    and-long v2, v22, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2e

    .line 49
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->F:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->E0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->A0:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->H0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->n0:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->D0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->o0:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->F0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->q0:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->C0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v30;->r0:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w30;->G0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2e
    return-void

    :catchall_0
    move-exception v0

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/w30;->i1(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/w30;->h1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
