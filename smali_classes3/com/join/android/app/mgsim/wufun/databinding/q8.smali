.class public Lcom/join/android/app/mgsim/wufun/databinding/q8;
.super Lcom/join/android/app/mgsim/wufun/databinding/p8;
.source "CouponListItemLayoutBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final B0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final C0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private A0:J

.field private final r0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final u0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final v0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x0:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final y0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final z0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->C0:Landroid/util/SparseIntArray;

    const v1, 0x7f090a6b

    const/16 v2, 0xd

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0908be

    const/16 v2, 0xe

    .line 3
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->B0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->C0:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/q8;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14

    move-object v12, p0

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/join/android/app/mgsim/wufun/databinding/p8;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    .line 4
    iget-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/p8;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/p8;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->r0:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 8
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->s0:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xa

    .line 10
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->t0:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xb

    .line 12
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->u0:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xc

    .line 14
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->v0:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 16
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->w0:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x9

    .line 18
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->x0:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/p8;->I:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/p8;->J:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/p8;->K:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/p8;->n0:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 24
    invoke-virtual {p0, v1}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 25
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->y0:Landroid/view/View$OnClickListener;

    .line 26
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, p0, v13}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/q8;->z0:Landroid/view/View$OnClickListener;

    .line 27
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/q8;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->o0:Lcom/join/mgps/dto/BTGameCouponBean;

    .line 2
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->q0:Lcom/join/kotlin/ui/coupon/ClickProxy;

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    invoke-interface {v1, p1}, Lcom/join/kotlin/ui/coupon/ClickProxy;->onClickMore(Lcom/join/mgps/dto/BTGameCouponBean;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->o0:Lcom/join/mgps/dto/BTGameCouponBean;

    .line 5
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->q0:Lcom/join/kotlin/ui/coupon/ClickProxy;

    if-eqz v1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    invoke-interface {v1, p1}, Lcom/join/kotlin/ui/coupon/ClickProxy;->onClickGet(Lcom/join/mgps/dto/BTGameCouponBean;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

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

.method public i1(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .locals 4
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->o0:Lcom/join/mgps/dto/BTGameCouponBean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

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

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

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

.method public j1(Lcom/join/kotlin/ui/coupon/ClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/coupon/ClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->q0:Lcom/join/kotlin/ui/coupon/ClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

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

.method protected k()V
    .locals 34

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->o0:Lcom/join/mgps/dto/BTGameCouponBean;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->p0:Ljava/lang/Boolean;

    const-wide/16 v7, 0x9

    and-long v9, v2, v7

    cmp-long v14, v9, v4

    if-eqz v14, :cond_9

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->isShowDetial()Z

    move-result v14

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getUsable_gamesShow()Ljava/lang/String;

    move-result-object v15

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getCoupon_name()Ljava/lang/String;

    move-result-object v16

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getUsable_games()Ljava/lang/String;

    move-result-object v17

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getUse_condition_no_price()Ljava/lang/String;

    move-result-object v18

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getEffect_time_hint()Ljava/lang/String;

    move-result-object v19

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->isReceivable()Z

    move-result v20

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    cmp-long v21, v9, v4

    if-eqz v21, :cond_2

    if-eqz v14, :cond_1

    const-wide/16 v9, 0x800

    or-long/2addr v2, v9

    const-wide/32 v9, 0x8000

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x400

    or-long/2addr v2, v9

    const-wide/16 v9, 0x4000

    :goto_1
    or-long/2addr v2, v9

    :cond_2
    and-long v9, v2, v7

    cmp-long v21, v9, v4

    if-eqz v21, :cond_4

    if-eqz v20, :cond_3

    const-wide/16 v9, 0x20

    or-long/2addr v2, v9

    const-wide/16 v9, 0x80

    goto :goto_2

    :cond_3
    const-wide/16 v9, 0x10

    or-long/2addr v2, v9

    const-wide/16 v9, 0x40

    :goto_2
    or-long/2addr v2, v9

    :cond_4
    if-eqz v14, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    const/16 v9, 0x8

    .line 14
    :goto_3
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->x0:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v14, :cond_6

    const v14, 0x7f080341

    goto :goto_4

    :cond_6
    const v14, 0x7f08085b

    :goto_4
    invoke-static {v10, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 15
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->u0:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v7, 0x7f110441

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->v0:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f110440

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 17
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->K:Landroid/widget/TextView;

    if-eqz v20, :cond_7

    const v13, 0x7f0600c7

    goto :goto_5

    :cond_7
    const v13, 0x7f0600c8

    :goto_5
    invoke-static {v11, v13}, Landroidx/databinding/ViewDataBinding;->s(Landroid/view/View;I)I

    move-result v11

    .line 18
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->K:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v20, :cond_8

    const v14, 0x7f110123

    goto :goto_6

    :cond_8
    const v14, 0x7f110153

    :goto_6
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v16

    move-object/from16 v22, v19

    move/from16 v23, v20

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_7
    const-wide/16 v19, 0xb

    and-long v24, v2, v19

    const-wide/32 v26, 0x20000

    const-wide/32 v28, 0x10000

    const-wide/16 v30, 0xa

    cmp-long v16, v24, v4

    if-eqz v16, :cond_10

    .line 19
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->w0(Ljava/lang/Boolean;)Z

    move-result v6

    and-long v24, v2, v30

    cmp-long v16, v24, v4

    if-eqz v16, :cond_b

    if-eqz v6, :cond_a

    const-wide/16 v24, 0x200

    or-long v2, v2, v24

    const-wide/16 v24, 0x2000

    goto :goto_8

    :cond_a
    const-wide/16 v24, 0x100

    or-long v2, v2, v24

    const-wide/16 v24, 0x1000

    :goto_8
    or-long v2, v2, v24

    :cond_b
    and-long v24, v2, v19

    cmp-long v16, v24, v4

    if-eqz v16, :cond_d

    if-eqz v6, :cond_c

    or-long v2, v2, v26

    goto :goto_9

    :cond_c
    or-long v2, v2, v28

    :cond_d
    :goto_9
    and-long v24, v2, v30

    cmp-long v16, v24, v4

    if-eqz v16, :cond_11

    if-eqz v6, :cond_e

    const/16 v16, 0x8

    goto :goto_a

    :cond_e
    const/16 v16, 0x0

    :goto_a
    if-eqz v6, :cond_f

    const/16 v17, 0x0

    goto :goto_b

    :cond_f
    const/16 v17, 0x8

    :goto_b
    move/from16 v32, v16

    move/from16 v33, v17

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :cond_11
    const/16 v32, 0x0

    const/16 v33, 0x0

    :goto_c
    const-wide/32 v16, 0x30000

    and-long v16, v2, v16

    cmp-long v18, v16, v4

    if-eqz v18, :cond_14

    and-long v16, v2, v28

    cmp-long v18, v16, v4

    if-eqz v18, :cond_12

    if-eqz v0, :cond_12

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getAmount()Ljava/lang/String;

    move-result-object v16

    goto :goto_d

    :cond_12
    const/16 v16, 0x0

    :goto_d
    and-long v17, v2, v26

    cmp-long v24, v17, v4

    if-eqz v24, :cond_13

    if-eqz v0, :cond_13

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getDiscount()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_e
    and-long v17, v2, v19

    cmp-long v19, v17, v4

    if-eqz v19, :cond_16

    if-eqz v6, :cond_15

    move-object/from16 v16, v0

    :cond_15
    move-object/from16 v0, v16

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    :goto_f
    const-wide/16 v19, 0x9

    and-long v19, v2, v19

    cmp-long v6, v19, v4

    if-eqz v6, :cond_17

    .line 22
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->E:Landroid/widget/TextView;

    invoke-static {v6, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 23
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->F:Landroid/widget/TextView;

    invoke-static {v6, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 24
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->t0:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->u0:Landroid/widget/TextView;

    invoke-static {v6, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 26
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->v0:Landroid/widget/TextView;

    invoke-static {v6, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 27
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->x0:Landroid/widget/ImageView;

    invoke-static {v6, v10}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->I:Landroid/widget/TextView;

    invoke-static {v6, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 29
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->K:Landroid/widget/TextView;

    move/from16 v7, v23

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 30
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->K:Landroid/widget/TextView;

    invoke-static {v6, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 31
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->K:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->n0:Landroid/widget/TextView;

    move-object/from16 v7, v22

    invoke-static {v6, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_17
    and-long v6, v2, v30

    cmp-long v8, v6, v4

    if-eqz v8, :cond_18

    .line 33
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->s0:Landroid/widget/TextView;

    move/from16 v7, v32

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->w0:Landroid/widget/TextView;

    move/from16 v7, v33

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    const-wide/16 v6, 0x8

    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_19

    .line 35
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->x0:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->z0:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->K:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/android/app/mgsim/wufun/databinding/q8;->y0:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    cmp-long v2, v17, v4

    if-eqz v2, :cond_1a

    .line 37
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/p8;->J:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p8;->p0:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q8;->A0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xf

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/BTGameCouponBean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/q8;->i1(Lcom/join/mgps/dto/BTGameCouponBean;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/q8;->k1(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lcom/join/kotlin/ui/coupon/ClickProxy;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/q8;->j1(Lcom/join/kotlin/ui/coupon/ClickProxy;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
